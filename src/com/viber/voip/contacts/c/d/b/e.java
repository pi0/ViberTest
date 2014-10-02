package com.viber.voip.contacts.c.d.b;

import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.contacts.c.d.m;
import com.viber.voip.contacts.c.f.b.p;
import com.viber.voip.process.k;

public class e
  extends m
{
  private static final String j = e.class.getSimpleName();
  private static e k;
  private a l = new a(this.c, this.e);
  private com.viber.voip.contacts.c.f.b.b.a m = new com.viber.voip.contacts.c.f.b.b.a(this.c, this, this);
  
  protected e(ViberApplication paramViberApplication)
  {
    super(paramViberApplication);
    g();
  }
  
  public static b a(ViberApplication paramViberApplication)
  {
    if ((k == null) && (k.a == k.a())) {}
    try
    {
      if (k == null) {
        k = new e(paramViberApplication);
      }
      return k;
    }
    finally {}
  }
  
  public void a(boolean paramBoolean) {}
  
  public void b() {}
  
  public p c()
  {
    return this.m;
  }
  
  protected void i() {}
  
  protected com.viber.voip.contacts.c.d.a j()
  {
    return this.l;
  }
  
  public void o() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.b.e
 * JD-Core Version:    0.7.0.1
 */