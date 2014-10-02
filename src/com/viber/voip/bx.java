package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class bx
  implements DialogInterface.OnClickListener
{
  bx(SystemDialogActivity paramSystemDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    a.z.getClass();
    localbc.a(localu.a("305c", "Continue"));
    Intent localIntent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
    this.a.startActivity(localIntent);
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.bx
 * JD-Core Version:    0.7.0.1
 */