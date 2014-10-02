package com.viber.jni;

import java.io.UnsupportedEncodingException;

public class JniUtils
{
  public static byte[] getUtf8Bytes(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.JniUtils
 * JD-Core Version:    0.7.0.1
 */