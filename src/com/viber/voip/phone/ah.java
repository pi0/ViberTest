package com.viber.voip.phone;

import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import java.util.Observable;
import java.util.Observer;

final class ah
  implements Observer
{
  private k b;
  
  private ah(VideoCallActivity paramVideoCallActivity) {}
  
  public void a()
  {
    if (this.b != null) {
      this.b.d().addObserver(this);
    }
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
    if (this.b != null) {
      update(this.b.d(), this.b.d().clone());
    }
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    switch (((n)paramObject).c())
    {
    case 1: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 9: 
    default: 
      return;
    case 2: 
    case 3: 
      this.a.a(this.b);
      return;
    }
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.ah
 * JD-Core Version:    0.7.0.1
 */