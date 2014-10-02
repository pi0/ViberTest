package com.viber.voip.phone.b;

import android.view.View;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.h;

@Deprecated
public class af
  extends k
{
  private o f;
  private View g;
  
  public af(View paramView, PhoneActivity paramPhoneActivity)
  {
    super(paramView, paramPhoneActivity);
    this.g = paramView.findViewById(2131165613);
    this.f = new o(paramView.findViewById(2131165322));
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    super.a(paramPhoneControllerWrapper);
    this.g.setVisibility(8);
    this.f.e.setEnabled(false);
    this.f.c.setEnabled(false);
    this.f.g.setEnabled(false);
  }
  
  public void a(com.viber.voip.phone.call.k paramk)
  {
    super.a(paramk);
    this.f.e.setEnabled(false);
    this.f.c.setEnabled(false);
    this.f.g.setEnabled(false);
  }
  
  public boolean d()
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.af
 * JD-Core Version:    0.7.0.1
 */