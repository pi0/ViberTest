package com.viber.voip.pixie;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class PixieServices$ExternalIpProvider
{
  private static Pattern PATTERN_IP = Pattern.compile("(\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})");
  public static final int STATUS_CAN_NOT_CONNECT = -1;
  public static final int STATUS_HTTP_OK = 200;
  private int areaLengthAfterPrefix;
  private String prefix;
  private String referrer;
  private String urlString;
  private String userAgent;
  
  PixieServices$ExternalIpProvider(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.urlString = StringStore.getString(paramInt1);
    String str1;
    String str2;
    label38:
    String str3;
    if (paramInt2 < 0)
    {
      str1 = null;
      this.prefix = str1;
      this.areaLengthAfterPrefix = paramInt3;
      if (paramInt4 >= 0) {
        break label68;
      }
      str2 = null;
      this.userAgent = str2;
      str3 = null;
      if (paramInt5 >= 0) {
        break label78;
      }
    }
    for (;;)
    {
      this.referrer = str3;
      return;
      str1 = StringStore.getString(paramInt2);
      break;
      label68:
      str2 = StringStore.getString(paramInt4);
      break label38;
      label78:
      str3 = StringStore.getString(paramInt5);
    }
  }
  
  PixieServices$ExternalIpProvider(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4)
  {
    this.urlString = paramString1;
    this.prefix = paramString2;
    this.areaLengthAfterPrefix = paramInt;
    this.userAgent = paramString3;
    this.referrer = paramString4;
  }
  
  private static final List<String> findIPs(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Matcher localMatcher = PATTERN_IP.matcher(paramString);
    while (localMatcher.find()) {
      localArrayList.add(localMatcher.group());
    }
    return localArrayList;
  }
  
  PixieServices.ExternalIpProvider.Result getExternalIP()
  {
    localResult = new PixieServices.ExternalIpProvider.Result(this);
    try
    {
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(this.urlString).openConnection();
      if (this.userAgent != null) {
        localHttpURLConnection.setRequestProperty(StringStore.getString(5), this.userAgent);
      }
      if (this.referrer != null) {
        localHttpURLConnection.setRequestProperty(StringStore.getString(2), this.referrer);
      }
      PixieServices.ExternalIpProvider.Result.access$102(localResult, localHttpURLConnection.getResponseCode());
      if (PixieServices.ExternalIpProvider.Result.access$100(localResult) == 200)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream()));
        for (;;)
        {
          String str1 = localBufferedReader.readLine();
          if (str1 == null) {
            break;
          }
          if (localStringBuilder.length() > 0) {
            localStringBuilder.append('\n');
          }
          localStringBuilder.append(str1);
        }
        localBufferedReader.close();
        String str2 = localStringBuilder.toString();
        if (this.prefix == null) {}
        int j;
        for (int i = 0; i >= 0; i = j)
        {
          List localList = findIPs(str2.substring(i, Math.min(i + this.areaLengthAfterPrefix, str2.length())));
          if (localList.size() != 1) {
            break;
          }
          PixieServices.ExternalIpProvider.Result.access$002(localResult, (String)localList.get(0));
          return localResult;
          j = str2.indexOf(this.prefix);
        }
      }
      return localResult;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      return localResult;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.pixie.PixieServices.ExternalIpProvider
 * JD-Core Version:    0.7.0.1
 */