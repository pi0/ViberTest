package com.viber.voip.registration;

import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.sms.a;

class d
  implements p
{
  d(b paramb) {}
  
  public void a(int paramInt)
  {
    b.a("onActivationStateChange " + paramInt);
    if (paramInt != 1) {
      b.c(this.a);
    }
    if ((paramInt == 2) || (paramInt == 3))
    {
      ViberApplication localViberApplication = ViberApplication.getInstance();
      localViberApplication.getActivationController().unregisterActivationStateListener(this);
      b.a("onActivationStateChange ACTIVATION_STEP_COMPLETE insert message tzintukNumber: " + b.d(this.a) + " , activateCode " + b.e(this.a));
      if ((!TextUtils.isEmpty(b.d(this.a))) && (!TextUtils.isEmpty(b.e(this.a))))
      {
        a locala = localViberApplication.getSmsDbManager();
        String str1 = localViberApplication.getString(2131494822);
        String str2 = localViberApplication.getString(2131494869);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = b.e(this.a);
        locala.a(str1, String.format(str2, arrayOfObject));
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.d
 * JD-Core Version:    0.7.0.1
 */