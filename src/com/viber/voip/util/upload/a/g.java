package com.viber.voip.util.upload.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class g
{
  public String a;
  public String b;
  public InputStream c;
  public int d;
  public Properties e = new Properties();
  
  public g(c paramc, String paramString1, String paramString2, InputStream paramInputStream, int paramInt)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramInputStream;
    this.d = paramInt;
  }
  
  public g(c paramc, String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.b = paramString2;
    try
    {
      this.c = new ByteArrayInputStream(paramString3.getBytes("UTF-8"));
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    this.e.put(paramString1, paramString2);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.a.g
 * JD-Core Version:    0.7.0.1
 */