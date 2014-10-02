package com.viber.voip.messages.extras.fb;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class n
  implements DialogInterface.OnClickListener
{
  n(FacebookLikeDialogActivity paramFacebookLikeDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ViberApplication.preferences().a("show_facebook_like_dialog", false);
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.n
 * JD-Core Version:    0.7.0.1
 */