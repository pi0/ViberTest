package com.viber.voip.util;

public class i
{
  static
  {
    if (!i.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public static byte[] a(String paramString, int paramInt)
  {
    return a(paramString.getBytes(), paramInt);
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    k localk = new k(paramInt3, new byte[paramInt2 * 3 / 4]);
    if (!localk.a(paramArrayOfByte, paramInt1, paramInt2, true)) {
      throw new IllegalArgumentException("bad base-64");
    }
    if (localk.b == localk.a.length) {
      return localk.a;
    }
    byte[] arrayOfByte = new byte[localk.b];
    System.arraycopy(localk.a, 0, arrayOfByte, 0, localk.b);
    return arrayOfByte;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.i
 * JD-Core Version:    0.7.0.1
 */