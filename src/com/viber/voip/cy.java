package com.viber.voip;

import android.content.Intent;
import android.net.Uri;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.util.az;
import com.viber.voip.util.gn;

class cy
  implements az
{
  cy(SystemDialogActivity paramSystemDialogActivity, int paramInt, Uri paramUri) {}
  
  public void a(boolean paramBoolean)
  {
    if (this.a == 2131493760)
    {
      bc localbc = bc.a();
      u localu = a.z;
      a.z.getClass();
      a.z.getClass();
      localbc.a(localu.a("300", "Delete"));
      if (paramBoolean) {
        gn.b();
      }
    }
    if (ViberApplication.getInstance().getHardwareParameters().isGsmSupported())
    {
      Intent localIntent = new Intent("android.intent.action.CALL", this.b);
      localIntent.setFlags(268435456);
      this.c.startActivity(localIntent);
      this.c.a(SystemDialogActivity.a(this.c));
      return;
    }
    SystemDialogActivity.b(this.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.cy
 * JD-Core Version:    0.7.0.1
 */