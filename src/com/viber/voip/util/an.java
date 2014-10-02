package com.viber.voip.util;

import com.viber.voip.ViberEnv;
import com.viber.voip.util.http.HttpRequest;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

public class an
  implements HttpRequest
{
  private static final String a = an.class.getSimpleName();
  private HttpRequest b;
  
  public an(String paramString)
  {
    a("ctor " + paramString);
    this.b = ViberEnv.newHttpRequest(paramString);
  }
  
  private void a(String paramString) {}
  
  public void addParam(String paramString1, InputStream paramInputStream, String paramString2, String paramString3)
  {
    a("addParam " + paramString1 + " (mimeType:" + paramString2 + ", filename:" + paramString3 + ")");
    this.b.addParam(paramString1, paramInputStream, paramString2, paramString3);
  }
  
  public void addParam(String paramString1, String paramString2)
  {
    a("addParam " + paramString1 + "=" + paramString2);
    this.b.addParam(paramString1, paramString2);
  }
  
  public void disableSSLCheck()
  {
    a("disableSSLCheck");
    this.b.disableSSLCheck();
  }
  
  public long getContentLength()
  {
    return this.b.getContentLength();
  }
  
  public InputStream getErrorStream()
  {
    return this.b.getErrorStream();
  }
  
  public InputStream getInputStream()
  {
    return this.b.getInputStream();
  }
  
  public OutputStream getOutputStream()
  {
    return this.b.getOutputStream();
  }
  
  public String getRequestMethod()
  {
    return this.b.getRequestMethod();
  }
  
  public int getResponseCode()
  {
    return this.b.getResponseCode();
  }
  
  public String getResponseHeader(String paramString)
  {
    return this.b.getResponseHeader(paramString);
  }
  
  public Map<String, List<String>> getResponseHeaders()
  {
    return this.b.getResponseHeaders();
  }
  
  public String getUrl()
  {
    return this.b.getUrl();
  }
  
  public void setConnectTimeout(int paramInt)
  {
    a("setConnectTimeout " + paramInt);
    this.b.setConnectTimeout(paramInt);
  }
  
  public void setFollowRedirects(boolean paramBoolean)
  {
    a("setFollowRedirects " + paramBoolean);
    this.b.setFollowRedirects(paramBoolean);
  }
  
  public void setPost(boolean paramBoolean)
  {
    a("setPost " + paramBoolean);
    this.b.setPost(paramBoolean);
  }
  
  public void setPost(boolean paramBoolean1, boolean paramBoolean2)
  {
    a("setPost " + paramBoolean1 + ", multipart:" + paramBoolean2);
    this.b.setPost(paramBoolean1, paramBoolean2);
  }
  
  public void setReadTimeout(int paramInt)
  {
    a("setReadTimeout " + paramInt);
    this.b.setReadTimeout(paramInt);
  }
  
  public void setRequestHeader(String paramString1, String paramString2)
  {
    a("setRequestHeader " + paramString1 + ": " + paramString2);
    this.b.setRequestHeader(paramString1, paramString2);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.an
 * JD-Core Version:    0.7.0.1
 */