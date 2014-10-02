package com.viber.voip.messages.controller.c;

import android.annotation.SuppressLint;
import java.util.Locale;

public class ap
{
  private String a;
  private boolean b = true;
  private boolean c = true;
  private boolean d = true;
  private boolean e = false;
  private boolean f = false;
  private boolean g = true;
  private boolean h = false;
  private String i;
  
  @SuppressLint({"DefaultLocale"})
  private void b()
  {
    if ((this.i != null) && (this.a != null) && (this.i.toLowerCase(Locale.getDefault()).indexOf(this.a.toLowerCase(Locale.getDefault())) >= 0)) {}
    for (boolean bool = true;; bool = false)
    {
      this.h = bool;
      return;
    }
  }
  
  public ao a()
  {
    return new ao(this.a, this.b, this.c, this.d, this.e, this.g, this.f, this.h);
  }
  
  public ap a(String paramString)
  {
    this.a = paramString;
    b();
    return this;
  }
  
  public ap a(boolean paramBoolean)
  {
    this.b = paramBoolean;
    return this;
  }
  
  public ap b(String paramString)
  {
    this.i = paramString;
    b();
    return this;
  }
  
  public ap b(boolean paramBoolean)
  {
    this.c = paramBoolean;
    return this;
  }
  
  public ap c(boolean paramBoolean)
  {
    this.e = paramBoolean;
    return this;
  }
  
  public ap d(boolean paramBoolean)
  {
    this.g = paramBoolean;
    return this;
  }
  
  public ap e(boolean paramBoolean)
  {
    this.f = paramBoolean;
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.ap
 * JD-Core Version:    0.7.0.1
 */