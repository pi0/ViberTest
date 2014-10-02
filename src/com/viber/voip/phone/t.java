package com.viber.voip.phone;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.g;
import com.viber.voip.billing.ae;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import java.util.Observable;
import java.util.Observer;
import java.util.Timer;
import java.util.TimerTask;

final class t
  implements Observer
{
  private k b;
  
  private t(PhoneActivity paramPhoneActivity) {}
  
  private void a(ab paramab, n paramn)
  {
    int i = paramn.o();
    if ((i == 12) || (i == 15))
    {
      PhoneActivity.i(this.a).post(new u(this));
      ae localae = new ae(this.b.c().b());
      PhoneActivity.a(this.a, localae);
    }
    for (;;)
    {
      if ((PhoneActivity.d(this.a) != null) && (paramab != PhoneActivity.d(this.a)))
      {
        PhoneActivity.d(this.a).b();
        this.a.b("State disable:" + PhoneActivity.d(this.a));
      }
      if ((paramab != null) && (!paramab.a()))
      {
        PhoneActivity.a(this.a, paramab);
        PhoneActivity.d(this.a).a(ViberApplication.getInstance().getPhoneController(true));
        this.a.b("State enable:" + PhoneActivity.d(this.a));
      }
      if (PhoneActivity.d(this.a) != null)
      {
        PhoneActivity.d(this.a).a(this.b);
        this.a.b("State update:" + PhoneActivity.d(this.a));
      }
      return;
      if ((i == 13) || (i == 16))
      {
        Intent localIntent = new Intent("com.viber.voip.action.CALL_DIALOG", Uri.fromParts("tel", this.b.c().b(), null));
        localIntent.putExtra("last_resolved", System.currentTimeMillis());
        localIntent.setFlags(268435456);
        this.a.startActivity(localIntent);
        PhoneActivity.g(this.a).a();
        PhoneActivity.h(this.a).handleHangup();
        this.a.finish();
      }
    }
  }
  
  public void a()
  {
    this.b.d().addObserver(this);
  }
  
  public void a(k paramk)
  {
    if (paramk != this.b) {
      b();
    }
    this.b = paramk;
  }
  
  public void b()
  {
    if (this.b != null) {
      this.b.d().deleteObserver(this);
    }
  }
  
  public void c()
  {
    update(this.b.d(), this.b.d().clone());
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    int i = 1;
    n localn = (n)paramObject;
    g localg = PhoneActivity.a(this.a);
    if ((PhoneActivity.b(this.a) != null) && (localn.c() != 0)) {
      PhoneActivity.b(this.a).cancel();
    }
    switch (localn.c())
    {
    }
    for (;;)
    {
      PhoneActivity.a(this.a, localn.c());
      return;
      a(PhoneActivity.c(this.a).c(), localn);
      continue;
      if (PhoneActivity.d(this.a) != null)
      {
        PhoneActivity.d(this.a).b();
        continue;
        if (PhoneActivity.e(this.a) != 3) {
          bc.a().a(localg.e());
        }
        a(PhoneActivity.c(this.a).b(), localn);
        continue;
        PhoneActivity localPhoneActivity = this.a;
        StringBuilder localStringBuilder = new StringBuilder().append("update PhoneState.ID_Dialed: mAnalyticsTrackedState!=PhoneState.ID_Dialed-");
        if (PhoneActivity.e(this.a) != 4) {}
        for (;;)
        {
          localPhoneActivity.b(i);
          if (PhoneActivity.e(this.a) != 4) {
            bc.a().a(localg.c());
          }
          if ((PhoneActivity.e(this.a) != 6) && (localn.c() == 6)) {
            bc.a().a(localg.d());
          }
          a(PhoneActivity.c(this.a).a(), localn);
          break;
          i = 0;
        }
        if (PhoneActivity.e(this.a) != 10)
        {
          if (localn.o() != i) {
            break label440;
          }
          bc.a().a(localg.k());
        }
        for (;;)
        {
          this.a.b("Timer on Failed");
          PhoneActivity.a(this.a, new q(this.a, this.b));
          PhoneActivity.f(this.a).schedule(PhoneActivity.b(this.a), 5000L);
          a(PhoneActivity.c(this.a).d(), localn);
          break;
          label440:
          if (localn.p() == 3) {
            bc.a().a(localg.h());
          } else {
            bc.a().a(localg.i());
          }
        }
        if ((PhoneActivity.e(this.a) != 8) && (localn.c() == 8)) {
          bc.a().a(localg.j());
        }
        this.a.b("Timer on EndingCall");
        if (localn.o() != 0)
        {
          PhoneActivity.a(this.a, new q(this.a, this.b));
          if (localn.o() == i) {
            PhoneActivity.f(this.a).schedule(PhoneActivity.b(this.a), 5000L);
          }
          for (;;)
          {
            a(PhoneActivity.c(this.a).d(), localn);
            break;
            PhoneActivity.f(this.a).schedule(PhoneActivity.b(this.a), 1800L);
          }
          this.a.b("EndReason = " + localn.o());
          if (PhoneActivity.b(this.a) == null) {
            this.a.finish();
          }
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.t
 * JD-Core Version:    0.7.0.1
 */