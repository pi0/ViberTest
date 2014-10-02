package com.viber.voip.sound;

import java.io.IOException;
import java.io.InputStream;

public final class SoundServiceCommonConfig$SystemProperty
{
  public static final String getProperty(String paramString)
  {
    try
    {
      Process localProcess = Runtime.getRuntime().exec("getprop ".concat(paramString));
      InputStream localInputStream = localProcess.getInputStream();
      try
      {
        localProcess.waitFor();
        byte[] arrayOfByte = new byte[localInputStream.available()];
        localInputStream.read(arrayOfByte);
        String str = new String(arrayOfByte).replaceAll("[\r\n]$", "");
        return str;
      }
      catch (InterruptedException localInterruptedException)
      {
        return null;
      }
      return null;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.SoundServiceCommonConfig.SystemProperty
 * JD-Core Version:    0.7.0.1
 */