package com.viber.voip.phone;

import android.view.View;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.phone.call.k;

public abstract class ab
{
  protected View a;
  protected PhoneActivity b;
  
  public ab(View paramView, PhoneActivity paramPhoneActivity)
  {
    this.a = paramView;
    this.b = paramPhoneActivity;
  }
  
  public abstract void a(PhoneControllerWrapper paramPhoneControllerWrapper);
  
  public abstract void a(k paramk);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract boolean a();
  
  public abstract void b();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.ab
 * JD-Core Version:    0.7.0.1
 */