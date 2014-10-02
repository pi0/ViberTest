package com.viber.voip;

import android.os.Handler;
import com.viber.jni.PhoneControllerDelegateAdapter;

class ac
  extends PhoneControllerDelegateAdapter
{
  ac(HomeActivity paramHomeActivity) {}
  
  public void onServiceStateChanged(int paramInt)
  {
    HomeActivity.a("onServiceStateChanged state:" + paramInt + ",previousState:" + HomeActivity.a(this.a));
    if (HomeActivity.b(this.a) != null) {
      switch (am.a[com.viber.jni.PhoneControllerDelegate.ViberConnectionState.resolveEnum(paramInt).ordinal()])
      {
      }
    }
    for (;;)
    {
      HomeActivity.a(this.a, paramInt);
      return;
      HomeActivity.d(this.a).removeCallbacks(HomeActivity.c(this.a));
      HomeActivity.d(this.a).post(new ad(this));
      continue;
      HomeActivity.d(this.a).removeCallbacks(HomeActivity.c(this.a));
      HomeActivity.d(this.a).post(new ae(this));
      continue;
      HomeActivity.d(this.a).removeCallbacks(HomeActivity.c(this.a));
      HomeActivity.d(this.a).postDelayed(HomeActivity.c(this.a), 250L);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ac
 * JD-Core Version:    0.7.0.1
 */