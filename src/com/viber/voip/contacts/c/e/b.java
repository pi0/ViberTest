package com.viber.voip.contacts.c.e;

import android.content.Context;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.fe;

public class b
  extends fe
{
  private static b c;
  
  private b(Context paramContext)
  {
    super(paramContext.getContentResolver(), dc.a(dk.c));
  }
  
  public static b a(Context paramContext)
  {
    if (c == null) {
      c = new b(paramContext);
    }
    return c;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.e.b
 * JD-Core Version:    0.7.0.1
 */