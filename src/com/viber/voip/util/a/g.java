package com.viber.voip.util.a;

public class g
{
  public static String a(String paramString)
  {
    int i = 0;
    for (;;)
    {
      int k;
      if (i < paramString.length())
      {
        k = paramString.codePointAt(i);
        if (!Character.isLetterOrDigit(k)) {}
      }
      else
      {
        if (i != paramString.length()) {
          break;
        }
        return "";
      }
      i += Character.charCount(k);
    }
    for (int j = -1 + paramString.length();; j--) {
      if (j > -1)
      {
        if (Character.isLowSurrogate(paramString.charAt(j))) {
          j--;
        }
        if (!Character.isLetterOrDigit(paramString.codePointAt(j))) {}
      }
      else
      {
        return paramString.substring(i, j + 1);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.a.g
 * JD-Core Version:    0.7.0.1
 */