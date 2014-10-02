package com.viber.voip.billing;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class dd
  implements DialogInterface.OnClickListener
{
  dd(dc paramdc) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    PurchaseSupportActivity.a(this.a.c.a, this.a.a);
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    a.z.getClass();
    localbc.a(localu.a("602", "Call"));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.dd
 * JD-Core Version:    0.7.0.1
 */