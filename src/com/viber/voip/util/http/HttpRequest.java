package com.viber.voip.util.http;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

public abstract interface HttpRequest
{
  public static final String DEFAULT_ENCODING = "utf-8";
  
  public abstract void addParam(String paramString1, InputStream paramInputStream, String paramString2, String paramString3);
  
  public abstract void addParam(String paramString1, String paramString2);
  
  public abstract void disableSSLCheck();
  
  public abstract long getContentLength();
  
  public abstract InputStream getErrorStream();
  
  public abstract InputStream getInputStream();
  
  public abstract OutputStream getOutputStream();
  
  public abstract String getRequestMethod();
  
  public abstract int getResponseCode();
  
  public abstract String getResponseHeader(String paramString);
  
  public abstract Map<String, List<String>> getResponseHeaders();
  
  public abstract String getUrl();
  
  public abstract void setConnectTimeout(int paramInt);
  
  public abstract void setFollowRedirects(boolean paramBoolean);
  
  public abstract void setPost(boolean paramBoolean);
  
  public abstract void setPost(boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract void setReadTimeout(int paramInt);
  
  public abstract void setRequestHeader(String paramString1, String paramString2);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.http.HttpRequest
 * JD-Core Version:    0.7.0.1
 */