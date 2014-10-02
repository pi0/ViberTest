package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.registration.HardwareParameters;

class cq
  implements DialogInterface.OnClickListener
{
  cq(SystemDialogActivity paramSystemDialogActivity, String paramString, Uri paramUri) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    bc localbc = bc.a();
    u localu = a.z;
    String str = this.a;
    a.z.getClass();
    localbc.a(localu.a(str, "Yes"));
    if (ViberApplication.getInstance().getHardwareParameters().isGsmSupported())
    {
      Intent localIntent = new Intent("android.intent.action.CALL", this.b);
      localIntent.setFlags(268435456);
      this.c.startActivity(localIntent);
      this.c.a(paramDialogInterface);
      return;
    }
    SystemDialogActivity.b(this.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.cq
 * JD-Core Version:    0.7.0.1
 */