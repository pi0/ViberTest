package com.viber.voip.util;

public class hx
{
  public static String a(int paramInt)
  {
    int i = paramInt / 1000 % 60;
    int j = paramInt / 60000 % 60;
    String str1;
    if (i > 9)
    {
      str1 = "" + i;
      if (j <= 9) {
        break label118;
      }
    }
    label118:
    for (String str2 = "" + j;; str2 = "0" + j)
    {
      return str2 + ":" + str1;
      str1 = "0" + i;
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.hx
 * JD-Core Version:    0.7.0.1
 */