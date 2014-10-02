package com.viber.voip.phone.b.a;

import android.widget.TextView;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import java.util.Observable;
import java.util.Observer;

public class c
  implements Observer
{
  private k a;
  private d b;
  private b c;
  private TextView d;
  
  public c(TextView paramTextView, k paramk)
  {
    this.b = new d(paramTextView, paramk);
    this.c = new b(paramTextView);
    this.d = paramTextView;
    this.a = paramk;
  }
  
  public void a(k paramk)
  {
    if (paramk != this.a)
    {
      this.d.removeCallbacks(this.c);
      this.d.removeCallbacks(this.b);
      this.b = new d(this.d, paramk);
      this.c = new b(this.d);
      this.a = paramk;
    }
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    int i = 2131493713;
    n localn = (n)paramObject;
    if (localn.c() == 3)
    {
      if (localn.d())
      {
        this.c.a();
        if (!localn.a()) {
          break label105;
        }
        this.d.setText(2131493906);
        label50:
        if ((!localn.d()) && (!localn.u()) && (!localn.a())) {
          break label125;
        }
      }
      label105:
      label125:
      for (int j = 1;; j = 0)
      {
        if (j == 0) {
          break label131;
        }
        this.d.removeCallbacks(this.b);
        return;
        this.c.b();
        break;
        if (!localn.u()) {
          break label50;
        }
        this.d.setText(2131493724);
        break label50;
      }
      label131:
      this.d.post(this.b);
      return;
    }
    this.d.removeCallbacks(this.b);
    switch (localn.c())
    {
    case 1: 
    case 2: 
    case 9: 
    default: 
      i = 2131493717;
    }
    for (;;)
    {
      this.d.setText(i);
      return;
      if (localn.b())
      {
        i = 2131493714;
        continue;
        if (this.a.e())
        {
          i = 2131493723;
        }
        else
        {
          i = 2131493808;
          continue;
          i = 2131493715;
          continue;
          i = 2131493717;
          continue;
          if (localn.p() == 8) {
            i = 2131493722;
          } else if (localn.o() == 6) {
            i = 2131493721;
          } else if (localn.o() == 1) {
            i = 2131493716;
          } else if (localn.o() == 4) {
            i = 2131493719;
          } else if (localn.f()) {
            i = 2131493718;
          } else {
            i = 2131493720;
          }
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.a.c
 * JD-Core Version:    0.7.0.1
 */