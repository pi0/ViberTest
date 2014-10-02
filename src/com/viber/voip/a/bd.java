package com.viber.voip.a;

import android.os.SystemClock;
import com.viber.voip.contacts.c.f.b.ab;

class bd
  implements ab
{
  bd(bc parambc, int paramInt) {}
  
  public void a(int paramInt)
  {
    bc.a(this.b, bc.a(this.b), 1, paramInt);
    if (this.a == 3) {
      this.b.a(a.s.b(Math.round((SystemClock.elapsedRealtime() - bc.b(this.b)) / 1000.0D)));
    }
    for (;;)
    {
      bc.a(this.b, 0L);
      return;
      if ((this.a == 4) && (bc.b(this.b) > 0L))
      {
        this.b.a(a.s.a(Math.round((SystemClock.elapsedRealtime() - bc.b(this.b)) / 1000.0D)));
        bc.c(this.b);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.a.bd
 * JD-Core Version:    0.7.0.1
 */