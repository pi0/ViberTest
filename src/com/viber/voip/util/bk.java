package com.viber.voip.util;

public class bk
{
  public static int a(int paramInt1, int paramInt2)
  {
    return paramInt1 | 1 << paramInt2;
  }
  
  public static int a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return a(paramInt1, paramInt2);
    }
    return b(paramInt1, paramInt2);
  }
  
  public static boolean a(int paramInt, int... paramVarArgs)
  {
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++)
    {
      int k = paramVarArgs[j];
      if ((paramInt & 1L << k) == 0L) {
        return false;
      }
    }
    return true;
  }
  
  public static int b(int paramInt1, int paramInt2)
  {
    return paramInt1 & (0xFFFFFFFF ^ 1 << paramInt2);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.bk
 * JD-Core Version:    0.7.0.1
 */