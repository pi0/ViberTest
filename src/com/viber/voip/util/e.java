package com.viber.voip.util;

import java.lang.reflect.Array;

public class e
{
  private static Object[] a = new Object[0];
  private static Object[] b = new Object[73];
  
  public static int a(int paramInt)
  {
    for (int i = 4;; i++) {
      if (i < 32)
      {
        if (paramInt <= -12 + (1 << i)) {
          paramInt = -12 + (1 << i);
        }
      }
      else {
        return paramInt;
      }
    }
  }
  
  public static <T> T[] a(T[] paramArrayOfT, int paramInt, Class<?> paramClass)
  {
    Object[] arrayOfObject = (Object[])Array.newInstance(paramClass, paramInt);
    for (int i = 0; (i < arrayOfObject.length) && (i < paramArrayOfT.length); i++) {
      arrayOfObject[i] = paramArrayOfT[i];
    }
    return arrayOfObject;
  }
  
  public static <T> T[] a(T[] paramArrayOfT, T paramT, Class<?> paramClass)
  {
    Object[] arrayOfObject = a(paramArrayOfT, 1 + paramArrayOfT.length, paramClass);
    arrayOfObject[(-1 + arrayOfObject.length)] = paramT;
    return arrayOfObject;
  }
  
  public static int b(int paramInt)
  {
    return a(paramInt * 4) / 4;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.e
 * JD-Core Version:    0.7.0.1
 */