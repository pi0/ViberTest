package org.acra.util;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import org.acra.ACRA;
import org.acra.annotation.ReportsCrashes;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CookieStore;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;

public class HttpRequest
{
  UsernamePasswordCredentials creds = null;
  DefaultHttpClient httpClient;
  HttpGet httpGet = null;
  HttpPost httpPost = null;
  HttpContext localContext;
  
  public HttpRequest(String paramString1, String paramString2)
  {
    if ((paramString1 != null) || (paramString2 != null)) {
      this.creds = new UsernamePasswordCredentials(paramString1, paramString2);
    }
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, ACRA.getConfig().socketTimeout());
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, ACRA.getConfig().socketTimeout());
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", new PlainSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", new FakeSocketFactory(), 443));
    this.httpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
    this.localContext = new BasicHttpContext();
  }
  
  public void abort()
  {
    try
    {
      if (this.httpClient != null)
      {
        Log.d(ACRA.LOG_TAG, "Abort HttpClient request.");
        this.httpPost.abort();
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e(ACRA.LOG_TAG, "Error while aborting HttpClient request", localException);
    }
  }
  
  public void clearCookies()
  {
    this.httpClient.getCookieStore().clear();
  }
  
  public InputStream getHttpStream(String paramString)
  {
    URLConnection localURLConnection = new URL(paramString).openConnection();
    if (!(localURLConnection instanceof HttpURLConnection)) {
      throw new IOException("Not an HTTP connection");
    }
    try
    {
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)localURLConnection;
      localHttpURLConnection.setAllowUserInteraction(false);
      localHttpURLConnection.setInstanceFollowRedirects(true);
      localHttpURLConnection.setRequestMethod("GET");
      localHttpURLConnection.connect();
      if (localHttpURLConnection.getResponseCode() == 200)
      {
        InputStream localInputStream = localHttpURLConnection.getInputStream();
        return localInputStream;
      }
    }
    catch (Exception localException)
    {
      throw new IOException("Error connecting");
    }
    return null;
  }
  
  public String sendGet(String paramString)
  {
    this.httpGet = new HttpGet(paramString);
    return EntityUtils.toString(this.httpClient.execute(this.httpGet).getEntity());
  }
  
  public String sendPost(String paramString1, String paramString2)
  {
    return sendPost(paramString1, paramString2, null);
  }
  
  public String sendPost(String paramString1, String paramString2, String paramString3)
  {
    this.httpClient.getParams().setParameter("http.protocol.cookie-policy", "rfc2109");
    this.httpPost = new HttpPost(paramString1);
    Log.d(ACRA.LOG_TAG, "Setting httpPost headers");
    if (this.creds != null) {
      this.httpPost.addHeader(BasicScheme.authenticate(this.creds, "UTF-8", false));
    }
    this.httpPost.setHeader("User-Agent", "Android");
    this.httpPost.setHeader("Accept", "text/html,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5");
    if (paramString3 != null) {
      this.httpPost.setHeader("Content-Type", paramString3);
    }
    HttpResponse localHttpResponse;
    for (;;)
    {
      StringEntity localStringEntity = new StringEntity(paramString2, "UTF-8");
      this.httpPost.setEntity(localStringEntity);
      Log.d(ACRA.LOG_TAG, "Sending request to " + paramString1);
      localHttpResponse = this.httpClient.execute(this.httpPost, this.localContext);
      if (localHttpResponse == null) {
        break label271;
      }
      if (localHttpResponse.getStatusLine() == null) {
        break;
      }
      String str = Integer.toString(localHttpResponse.getStatusLine().getStatusCode());
      if ((!str.startsWith("4")) && (!str.startsWith("5"))) {
        break;
      }
      throw new IOException("Host returned error code " + str);
      this.httpPost.setHeader("Content-Type", "application/x-www-form-urlencoded");
    }
    return EntityUtils.toString(localHttpResponse.getEntity());
    label271:
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.util.HttpRequest
 * JD-Core Version:    0.7.0.1
 */