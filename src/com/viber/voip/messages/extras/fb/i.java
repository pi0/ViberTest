package com.viber.voip.messages.extras.fb;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class i
  implements DialogInterface.OnCancelListener
{
  i(FacebookDialogActivity paramFacebookDialogActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    localbc.a(localu.c("308"));
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.i
 * JD-Core Version:    0.7.0.1
 */