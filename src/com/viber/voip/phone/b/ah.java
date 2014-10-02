package com.viber.voip.phone.b;

import android.view.View;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.phone.CallCard;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.ab;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;

@Deprecated
public abstract class ah
  extends ab
{
  private boolean c = false;
  protected CallCard d;
  protected k e;
  
  public ah(View paramView, PhoneActivity paramPhoneActivity)
  {
    super(paramView, paramPhoneActivity);
    this.d = ((CallCard)paramView.findViewById(2131165314));
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    this.c = true;
  }
  
  public void a(k paramk)
  {
    this.e = paramk;
    if ((paramk != null) && (paramk.d() != null))
    {
      this.d.a(paramk);
      if ((!paramk.d().a()) && (!paramk.d().C())) {
        break label69;
      }
      this.d.setChronometerText(2131493906);
    }
    for (;;)
    {
      if (paramk != null) {
        this.d.a(paramk.f());
      }
      return;
      label69:
      if (paramk.d().n()) {
        this.d.setChronometerText(2131493907);
      } else {
        this.d.a();
      }
    }
  }
  
  public boolean a()
  {
    return this.c;
  }
  
  public void b()
  {
    this.c = false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.ah
 * JD-Core Version:    0.7.0.1
 */