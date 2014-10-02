package com.viber.voip.util;

final class ho
  implements hr
{
  public final boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (paramInt1 < paramInt2)
    {
      if (Character.isDigit(paramCharSequence.charAt(paramInt1)))
      {
        i++;
        if (i >= 5) {
          return true;
        }
      }
      paramInt1++;
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.ho
 * JD-Core Version:    0.7.0.1
 */