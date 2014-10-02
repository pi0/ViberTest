package com.viber.voip.util;

import java.io.InputStream;
import org.apache.http.util.ByteArrayBuffer;

public final class am
{
  public static boolean a;
  public static boolean b;
  public static boolean c;
  
  static
  {
    if (!am.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      a = true;
      b = true;
      c = true;
      return;
    }
  }
  
  private am()
  {
    if (!d) {
      throw new AssertionError();
    }
  }
  
  public static byte[] a(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt1];
    ByteArrayBuffer localByteArrayBuffer = new ByteArrayBuffer(100);
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      localByteArrayBuffer.append(arrayOfByte, 0, i);
      arrayOfByte = new byte[paramInt1];
    }
    return localByteArrayBuffer.toByteArray();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.am
 * JD-Core Version:    0.7.0.1
 */