package com.viber.voip.d;

import android.os.Handler;
import com.viber.voip.ViberEnv;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.http.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpVersion;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public class b
{
  private static final String a = b.class.getSimpleName();
  private static Handler b = dc.a(dk.g);
  private static final HttpParams c = new BasicHttpParams();
  
  static
  {
    HttpProtocolParams.setVersion(c, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setContentCharset(c, "utf-8");
    ConnManagerParams.setTimeout(c, 60000L);
  }
  
  private InputStream a(String paramString1, String paramString2, int paramInt)
  {
    HttpRequest localHttpRequest = ViberEnv.newHttpRequest(paramString1);
    localHttpRequest.setFollowRedirects(false);
    if (paramString2 != null)
    {
      localHttpRequest.setPost(true);
      localHttpRequest.addParam("XMLDOC", paramString2);
    }
    localHttpRequest.setRequestHeader("User-Agent", "Android");
    localHttpRequest.setConnectTimeout(60000);
    int i = localHttpRequest.getResponseCode();
    String str;
    switch (i)
    {
    default: 
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = paramString1;
      throw new IOException(String.format("Wrong server response: %d for URL = %s", arrayOfObject));
    case 301: 
    case 302: 
    case 303: 
    case 307: 
      str = localHttpRequest.getResponseHeader("Location");
      if (paramInt < 10) {
        a(str, paramString2, paramInt + 1);
      }
      break;
    case 200: 
    case 203: 
      return localHttpRequest.getInputStream();
    }
    throw new IOException("Max redirect count reached: url=" + paramString1 + ", redirectUrl=" + str);
  }
  
  public c a(String paramString1, String paramString2, d paramd)
  {
    c localc = new c(this, paramString1, paramString2, paramd);
    b.post(localc);
    return localc;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.d.b
 * JD-Core Version:    0.7.0.1
 */