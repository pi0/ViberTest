package com.facebook.android;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.fb.ak;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import org.json.JSONObject;

public final class Util
{
  public static void clearCookies(Context paramContext)
  {
    CookieSyncManager.createInstance(paramContext);
    CookieManager.getInstance().removeAllCookie();
  }
  
  public static Bundle decodeUrl(String paramString)
  {
    Bundle localBundle = new Bundle();
    if (paramString != null)
    {
      String[] arrayOfString1 = paramString.split("&");
      int i = arrayOfString1.length;
      for (int j = 0; j < i; j++)
      {
        String[] arrayOfString2 = arrayOfString1[j].split("=");
        localBundle.putString(URLDecoder.decode(arrayOfString2[0]), URLDecoder.decode(arrayOfString2[1]));
      }
    }
    return localBundle;
  }
  
  public static String encodePostBody(Bundle paramBundle, String paramString)
  {
    if (paramBundle == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (paramBundle.getByteArray(str) == null)
      {
        localStringBuilder.append("Content-Disposition: form-data; name=\"" + str + "\"\r\n\r\n" + paramBundle.getString(str));
        localStringBuilder.append("\r\n--" + paramString + "\r\n");
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String encodeUrl(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    int i = 1;
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        localStringBuilder.append(URLEncoder.encode(str) + "=" + URLEncoder.encode(paramBundle.getString(str)));
        break;
        localStringBuilder.append("&");
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String openUrl(String paramString1, String paramString2, Bundle paramBundle)
  {
    String str1 = paramBundle.getString("filename");
    String str2 = paramBundle.getString("uri");
    if (str1 != null) {
      paramBundle.remove("filename");
    }
    Uri localUri1;
    String str3;
    if (str2 != null)
    {
      paramBundle.remove("uri");
      Uri localUri2 = Uri.parse(paramBundle.getString(str2));
      paramBundle.remove(str2);
      String str9 = str2.replace("[uri]", "");
      localUri1 = localUri2;
      str3 = str9;
    }
    for (;;)
    {
      if (paramString2.equals("GET")) {
        paramString1 = paramString1 + "?" + encodeUrl(paramBundle);
      }
      Log.d("Facebook-Util", paramString2 + " URL: " + paramString1);
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString1).openConnection();
      localHttpURLConnection.setRequestProperty("User-Agent", System.getProperties().getProperty("http.agent") + " FacebookAndroidSDK");
      if (!paramString2.equals("GET"))
      {
        Bundle localBundle = new Bundle();
        Iterator localIterator1 = paramBundle.keySet().iterator();
        while (localIterator1.hasNext())
        {
          String str8 = (String)localIterator1.next();
          if (paramBundle.getByteArray(str8) != null) {
            localBundle.putByteArray(str8, paramBundle.getByteArray(str8));
          }
        }
        if (!paramBundle.containsKey("method")) {
          paramBundle.putString("method", paramString2);
        }
        if (paramBundle.containsKey("access_token")) {
          paramBundle.putString("access_token", URLDecoder.decode(paramBundle.getString("access_token")));
        }
        localHttpURLConnection.setRequestMethod("POST");
        localHttpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
        localHttpURLConnection.setDoOutput(true);
        localHttpURLConnection.setDoInput(true);
        localHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        localHttpURLConnection.connect();
        BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(localHttpURLConnection.getOutputStream());
        localBufferedOutputStream.write(("--" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" + "\r\n").getBytes());
        localBufferedOutputStream.write(encodePostBody(paramBundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
        localBufferedOutputStream.write(("\r\n" + "--" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" + "\r\n").getBytes());
        if ((localUri1 != null) && (str3 != null)) {
          localBundle.putString(str3, "");
        }
        if (!localBundle.isEmpty())
        {
          Iterator localIterator2 = localBundle.keySet().iterator();
          while (localIterator2.hasNext())
          {
            String str5 = (String)localIterator2.next();
            if (str5.equals(str3))
            {
              if (localUri1 != null)
              {
                StringBuilder localStringBuilder2 = new StringBuilder().append("Content-Disposition: form-data; filename=\"");
                if (str1 != null) {}
                for (String str7 = str1;; str7 = " ")
                {
                  localBufferedOutputStream.write((str7 + "\"" + "\r\n").getBytes());
                  localBufferedOutputStream.write(("Content-Type: content/unknown" + "\r\n" + "\r\n").getBytes());
                  ak.a(ViberApplication.getInstance(), localUri1, localBufferedOutputStream);
                  localBufferedOutputStream.write(("\r\n" + "--" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" + "\r\n").getBytes());
                  break;
                }
              }
            }
            else
            {
              StringBuilder localStringBuilder1 = new StringBuilder().append("Content-Disposition: form-data; filename=\"");
              if (str1 != null) {}
              for (String str6 = str1;; str6 = str5)
              {
                localBufferedOutputStream.write((str6 + "\"" + "\r\n").getBytes());
                localBufferedOutputStream.write(("Content-Type: content/unknown" + "\r\n" + "\r\n").getBytes());
                localBufferedOutputStream.write(localBundle.getByteArray(str5));
                localBufferedOutputStream.write(("\r\n" + "--" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" + "\r\n").getBytes());
                break;
              }
            }
          }
        }
        localBufferedOutputStream.flush();
      }
      try
      {
        String str4 = read(localHttpURLConnection.getInputStream());
        return str4;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        return read(localHttpURLConnection.getErrorStream());
      }
      str3 = str2;
      localUri1 = null;
    }
  }
  
  public static JSONObject parseJson(String paramString)
  {
    if (paramString.equals("false")) {
      throw new FacebookError("request failed");
    }
    if (paramString.equals("true")) {
      paramString = "{value : true}";
    }
    JSONObject localJSONObject1 = new JSONObject(paramString);
    if (localJSONObject1.has("error"))
    {
      JSONObject localJSONObject2 = localJSONObject1.getJSONObject("error");
      throw new FacebookError(localJSONObject2.getString("message"), localJSONObject2.getString("type"), 0);
    }
    if ((localJSONObject1.has("error_code")) && (localJSONObject1.has("error_msg"))) {
      throw new FacebookError(localJSONObject1.getString("error_msg"), "", Integer.parseInt(localJSONObject1.getString("error_code")));
    }
    if (localJSONObject1.has("error_code")) {
      throw new FacebookError("request failed", "", Integer.parseInt(localJSONObject1.getString("error_code")));
    }
    if (localJSONObject1.has("error_msg")) {
      throw new FacebookError(localJSONObject1.getString("error_msg"));
    }
    if (localJSONObject1.has("error_reason")) {
      throw new FacebookError(localJSONObject1.getString("error_reason"));
    }
    return localJSONObject1;
  }
  
  public static Bundle parseUrl(String paramString)
  {
    String str = paramString.replace("fbconnect", "http");
    try
    {
      URL localURL = new URL(str);
      Bundle localBundle = decodeUrl(localURL.getQuery());
      localBundle.putAll(decodeUrl(localURL.getRef()));
      return localBundle;
    }
    catch (MalformedURLException localMalformedURLException) {}
    return new Bundle();
  }
  
  private static String read(InputStream paramInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream), 1000);
    for (String str = localBufferedReader.readLine(); str != null; str = localBufferedReader.readLine()) {
      localStringBuilder.append(str);
    }
    paramInputStream.close();
    return localStringBuilder.toString();
  }
  
  public static void showAlert(Context paramContext, String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle(paramString1);
    localBuilder.setMessage(paramString2);
    localBuilder.create().show();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.android.Util
 * JD-Core Version:    0.7.0.1
 */