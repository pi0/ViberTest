package com.viber.voip;

import android.os.Build.VERSION;

public class dx
{
  public static final boolean a;
  public static final boolean b;
  public static final String[] c;
  public static boolean d;
  
  static
  {
    boolean bool1;
    if (Build.VERSION.SDK_INT > 7)
    {
      bool1 = true;
      a = bool1;
      if (Build.VERSION.SDK_INT <= 7) {
        break label55;
      }
    }
    label55:
    for (boolean bool2 = true;; bool2 = false)
    {
      b = bool2;
      c = new String[] { "cc.cz.madkite.freedom", "cc.madkite.freedom" };
      d = true;
      return;
      bool1 = false;
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.dx
 * JD-Core Version:    0.7.0.1
 */