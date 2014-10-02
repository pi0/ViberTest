package com.viber.voip.viberout.promotion;

class f
  extends g
{
  private a c;
  private String d;
  private long e;
  
  f(b paramb)
  {
    super(paramb);
  }
  
  protected boolean a(a parama)
  {
    switch (c.a[parama.ordinal()])
    {
    }
    for (;;)
    {
      return true;
      this.c = a.b;
      this.d = "PREF_VO_APP_ENTRY_ICON_COUNT";
      b.a(this.a, this.d);
      this.e = System.currentTimeMillis();
      continue;
      this.c = a.c;
      this.d = "PREF_VO_APP_ENTRY_NOTIFICATION_COUNT";
      b.a(this.a, this.d);
      this.e = System.currentTimeMillis();
      continue;
      b.a(this.a, this.a.b);
      if (this.c != null)
      {
        long l = System.currentTimeMillis() - this.e;
        this.a.a("Elapsed since " + this.c + ": " + l + "ms");
        if (l < 5000L)
        {
          this.a.a("Replaying " + this.c);
          b.b(this.a, this.d);
          this.a.a(this.c);
        }
        else
        {
          this.a.a("Not replaying " + this.c);
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.promotion.f
 * JD-Core Version:    0.7.0.1
 */