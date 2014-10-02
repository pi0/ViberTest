package com.viber.voip.ui;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

public abstract class aa
{
  protected ab b;
  protected InputMethodManager c;
  
  public aa(Context paramContext, ab paramab)
  {
    this.b = paramab;
    this.c = ((InputMethodManager)paramContext.getSystemService("input_method"));
  }
  
  public abstract String a();
  
  public abstract void a(String paramString);
  
  public abstract void b();
  
  public abstract View c();
  
  public abstract void d();
  
  public abstract boolean e();
  
  public boolean g()
  {
    View localView = c();
    boolean bool1 = false;
    if (localView != null)
    {
      boolean bool2 = this.c.hideSoftInputFromWindow(localView.getWindowToken(), 0);
      bool1 = false;
      if (bool2) {
        bool1 = true;
      }
    }
    return bool1;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.aa
 * JD-Core Version:    0.7.0.1
 */