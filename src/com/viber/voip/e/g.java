package com.viber.voip.e;

import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.util.fr;
import java.util.Observable;
import java.util.Observer;

class g
  implements Runnable, Observer
{
  private com.viber.voip.phone.call.k b;
  private int c = -1;
  private fr d = new fr(dc.a(dk.f), this, 1000L);
  private boolean e;
  private boolean f;
  
  public g(a parama, com.viber.voip.phone.call.k paramk)
  {
    this.b = paramk;
    a(paramk.d());
  }
  
  private void a(com.viber.voip.phone.call.n paramn)
  {
    int i = paramn.c();
    String str1;
    String str2;
    if (this.c != i)
    {
      this.c = i;
      CallerInfo localCallerInfo = this.b.c();
      str1 = localCallerInfo.a();
      str2 = localCallerInfo.b();
    }
    switch (i)
    {
    case 1: 
    case 4: 
    case 7: 
    case 9: 
    default: 
      return;
    case 5: 
      a.a(this.a, new h(this, str1, str2));
      return;
    case 6: 
      a.a(this.a, new i(this, str1, str2));
      return;
    case 2: 
    case 3: 
      a.a(this.a, new j(this, str1, str2));
      this.d.a();
      return;
    case 8: 
      a.a(this.a, new k(this));
      return;
    case 10: 
      int j = paramn.o();
      int k = paramn.p();
      a.a(this.a, new l(this, j, k));
      return;
    }
    this.d.b();
    a.a(this.a, new m(this));
  }
  
  public void run()
  {
    com.viber.voip.phone.call.n localn = this.b.d();
    int i = localn.c();
    long l;
    if ((i == 3) || (i == 2))
    {
      l = localn.x();
      if (((!localn.a()) || (!localn.B())) && (!localn.C())) {
        break label149;
      }
    }
    label149:
    for (boolean bool = true;; bool = false)
    {
      if (this.e != bool)
      {
        this.e = bool;
        a.a(this.a, new n(this, bool));
      }
      if (this.f != localn.d())
      {
        this.f = localn.d();
        a.a(this.a, new o(this));
      }
      if ((!this.e) && (!this.f)) {
        a.a(this.a, new p(this, l));
      }
      return;
    }
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    a((com.viber.voip.phone.call.n)paramObject);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.e.g
 * JD-Core Version:    0.7.0.1
 */