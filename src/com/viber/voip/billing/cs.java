package com.viber.voip.billing;

import android.os.Handler;
import android.os.SystemClock;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.ArrayList;
import java.util.Iterator;

public class cs
{
  private static final String j = cs.class.getSimpleName();
  cw a;
  private bv b;
  private Handler c = dc.a(dk.a);
  private long d;
  private ArrayList<bu> e;
  private Runnable f;
  private PhoneControllerDelegate.ViberConnectionState g;
  private long h;
  private PhoneControllerDelegateAdapter i = new ct(this);
  
  cs(bv parambv)
  {
    b("ctor");
    this.d = SystemClock.elapsedRealtime();
    this.b = parambv;
    this.e = new ArrayList();
    ViberApplication.getInstance().getPhoneController(false).registerDelegate(this.i);
    bu[] arrayOfbu = this.b.g();
    int m = arrayOfbu.length;
    while (k < m)
    {
      bu localbu = arrayOfbu[k];
      localbu.e(true);
      this.e.add(localbu);
      b("PENDING PURCHASE: " + localbu);
      k++;
    }
    e();
  }
  
  private long b()
  {
    long l1 = SystemClock.elapsedRealtime();
    ArrayList localArrayList = new ArrayList(this.e.size());
    Iterator localIterator = this.e.iterator();
    long l2 = 9223372036854775807L;
    long l5;
    if (localIterator.hasNext())
    {
      bu localbu = (bu)localIterator.next();
      if (!localbu.m()) {
        break label146;
      }
      localArrayList.add(localbu);
      l5 = localbu.o + localbu.n - l1;
      if (l5 >= l2) {
        break label146;
      }
    }
    label146:
    for (long l4 = l5;; l4 = l2)
    {
      l2 = l4;
      break;
      this.e = localArrayList;
      if (l2 < 0L) {
        l2 = 0L;
      }
      long l3 = 20000L - (l1 - this.d);
      if (l3 > l2) {
        l2 = l3;
      }
      return l2;
    }
  }
  
  private static final void b(String paramString) {}
  
  private void c()
  {
    b("action()");
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
    {
      bu localbu = (bu)localIterator.next();
      long l = SystemClock.elapsedRealtime();
      if (localbu.o + localbu.n <= l)
      {
        b("retrying purchase " + localbu);
        this.b.a(localbu);
        return;
      }
    }
    e();
  }
  
  private boolean d()
  {
    PhoneControllerDelegate.ViberConnectionState localViberConnectionState1 = this.g;
    PhoneControllerDelegate.ViberConnectionState localViberConnectionState2 = PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED;
    boolean bool1 = false;
    if (localViberConnectionState1 == localViberConnectionState2)
    {
      boolean bool2 = SystemClock.elapsedRealtime() - this.h < 3000L;
      bool1 = false;
      if (!bool2) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private void e()
  {
    f();
    long l = b();
    if (l < 9223372036854775807L)
    {
      this.f = new cu(this);
      b("Scheduling next action in " + l + "ms");
      this.c.postDelayed(this.f, l);
    }
    do
    {
      return;
      b("schedule(): nothing to do");
    } while (this.a == null);
    this.a.a();
  }
  
  private void f()
  {
    if (this.f != null)
    {
      b("unscheduling action");
      this.c.removeCallbacks(this.f);
      this.f = null;
    }
  }
  
  public void a(bu parambu)
  {
    b("schedulePurchaseRetry: " + parambu);
    if (!this.e.contains(parambu)) {
      this.e.add(parambu);
    }
    parambu.o = SystemClock.elapsedRealtime();
    if (parambu.n == 0L) {
      parambu.n = 20000L;
    }
    for (;;)
    {
      e();
      return;
      if ((d()) && (parambu.n < 3600000L))
      {
        parambu.n = (2L * parambu.n);
        if (parambu.n > 3600000L) {
          parambu.n = 3600000L;
        }
      }
    }
  }
  
  public void a(cw paramcw)
  {
    this.a = paramcw;
  }
  
  public boolean a()
  {
    return this.e.size() != 0;
  }
  
  public void b(bu parambu)
  {
    e();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.cs
 * JD-Core Version:    0.7.0.1
 */