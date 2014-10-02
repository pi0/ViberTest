package com.viber.voip.settings;

import com.viber.voip.util.bj;

public class c
  implements Runnable
{
  protected final String a;
  
  protected c(b paramb, String paramString)
  {
    this.a = paramString;
  }
  
  public void run()
  {
    bj.a(this.b.f(this.a), this.b.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.c
 * JD-Core Version:    0.7.0.1
 */