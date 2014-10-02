package com.viber.voip.phone.a;

import android.content.Intent;
import android.view.View;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.ab;
import com.viber.voip.phone.call.k;

class d
  extends ab
{
  public d(c paramc, View paramView, PhoneActivity paramPhoneActivity)
  {
    super(paramView, paramPhoneActivity);
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    Intent localIntent = new Intent(this.b, PhoneActivity.class);
    localIntent.putExtra("extra_screen_factory", 0);
    localIntent.addFlags(2097152);
    this.b.finish();
    this.b.startActivity(localIntent);
  }
  
  public void a(k paramk) {}
  
  public void a(boolean paramBoolean) {}
  
  public boolean a()
  {
    return false;
  }
  
  public void b() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.a.d
 * JD-Core Version:    0.7.0.1
 */