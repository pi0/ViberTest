package com.viber.voip.ui.style;

import android.text.style.ClickableSpan;
import android.view.View;
import com.viber.voip.util.hs;

public class a
  extends ClickableSpan
{
  private static hs a;
  private final String b;
  private final String c;
  
  public a(String paramString1, String paramString2)
  {
    this.b = paramString1;
    this.c = paramString2;
  }
  
  public static void a(hs paramhs)
  {
    a = paramhs;
  }
  
  public String a()
  {
    return this.b;
  }
  
  public String b()
  {
    return this.c;
  }
  
  public void onClick(View paramView)
  {
    if (a != null) {
      a.a(a(), b());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.style.a
 * JD-Core Version:    0.7.0.1
 */