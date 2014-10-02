package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.viber.voip.registration.HardwareParameters;

class bt
  implements DialogInterface.OnClickListener
{
  bt(SystemDialogActivity paramSystemDialogActivity, Intent paramIntent) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.b.a();
    if (ViberApplication.getInstance().getHardwareParameters().isGsmSupported())
    {
      Intent localIntent = new Intent("com.viber.voip.action.CALL", this.a.getData());
      this.b.startActivity(localIntent);
      this.b.a(paramDialogInterface);
      return;
    }
    SystemDialogActivity.b(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.bt
 * JD-Core Version:    0.7.0.1
 */