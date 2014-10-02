package com.viber.voip.util.a;

import android.text.TextUtils;

public class c
{
  public final String a;
  public final String b;
  public final boolean c;
  
  c(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      this.a = paramString;
      this.b = paramString;
      this.c = true;
      return;
    }
    int i = f.b(paramString);
    if ((i == 1) || (i == 2))
    {
      String str;
      if (i == 2)
      {
        str = paramString;
        this.b = str;
        if (i != 1) {
          break label78;
        }
      }
      for (;;)
      {
        this.a = paramString;
        this.c = false;
        return;
        str = f.i(paramString);
        break;
        label78:
        paramString = f.j(paramString);
      }
    }
    this.a = paramString;
    this.b = paramString;
    this.c = true;
  }
  
  public String toString()
  {
    return "JapaneseNamesInfo [hiraganaName=" + this.a + ", katakanaName=" + this.b + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.a.c
 * JD-Core Version:    0.7.0.1
 */