package com.viber.voip.messages.extras.fb;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class o
  implements DialogInterface.OnClickListener
{
  o(FacebookLikeDialogActivity paramFacebookLikeDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ViberApplication.preferences().a("call_min_time_count", 0);
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.o
 * JD-Core Version:    0.7.0.1
 */