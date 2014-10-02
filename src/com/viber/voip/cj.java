package com.viber.voip;

import android.content.ActivityNotFoundException;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.sms.s;
import com.viber.voip.util.az;

class cj
  implements az
{
  cj(SystemDialogActivity paramSystemDialogActivity, String paramString) {}
  
  public void a(boolean paramBoolean)
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
 * Qualified Name:     com.viber.voip.cj
 * JD-Core Version:    0.7.0.1
 */