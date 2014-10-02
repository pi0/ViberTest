package com.viber.voip.settings;

import com.viber.voip.util.bj;

public class d
  implements Runnable
{
  protected final String a;
  protected final Object b;
  
  protected d(b paramb, String paramString, Object paramObject)
  {
    this.a = paramString;
    this.b = paramObject;
  }
  
  public void run()
  {
    bj.a(this.c.f(this.a), this.b, this.c.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.d
 * JD-Core Version:    0.7.0.1
 */