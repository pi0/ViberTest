package com.viber.voip.widget;

import com.viber.voip.h.b;

class x
  implements Runnable
{
  x(PttLayout paramPttLayout) {}
  
  public void run()
  {
    boolean bool = PttLayout.a(this.a).J();
    if ((PttLayout.d(this.a)) && ((bool) || (PttLayout.b(this.a)))) {
      if (!bool) {
        break label118;
      }
    }
    label118:
    for (long l = b.d().a(PttLayout.a(this.a).ae());; l = PttLayout.c(this.a).b())
    {
      if ((bool) && (l <= 0L)) {
        l = System.currentTimeMillis() - PttLayout.a(this.a).Z();
      }
      PttLayout.a(this.a, l, PttLayout.c(this.a).c());
      this.a.postDelayed(this, 1000L);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.x
 * JD-Core Version:    0.7.0.1
 */