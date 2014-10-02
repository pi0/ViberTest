package com.viber.voip;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.sms.s;

class cp
  implements DialogInterface.OnClickListener
{
  cp(SystemDialogActivity paramSystemDialogActivity, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (ViberApplication.getInstance().getHardwareParameters().isGsmSupported()) {
      try
      {
        SystemDialogActivity.a(this.b, this.a, s.b(this.b));
        this.b.finish();
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        for (;;)
        {
          ViberApplication.log(6, "SystemDialogActivity", "startActivity", localActivityNotFoundException);
        }
      }
    }
    SystemDialogActivity.b(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.cp
 * JD-Core Version:    0.7.0.1
 */