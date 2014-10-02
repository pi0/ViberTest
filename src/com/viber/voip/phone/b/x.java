package com.viber.voip.phone.b;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.messages.extras.fb.FacebookLikeDialogActivity;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.k;

class x
  implements View.OnClickListener
{
  private x(u paramu) {}
  
  public void onClick(View paramView)
  {
    this.a.c().a();
    this.a.d().handleHangup();
    k localk = this.a.c().b();
    if (localk != null) {
      PhoneActivity.d(FacebookLikeDialogActivity.a(localk));
    }
    if ((localk == null) || (!localk.h())) {
      this.a.getActivity().finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.x
 * JD-Core Version:    0.7.0.1
 */