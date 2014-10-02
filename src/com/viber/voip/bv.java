package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class bv
  implements DialogInterface.OnClickListener
{
  bv(SystemDialogActivity paramSystemDialogActivity, Intent paramIntent) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SystemDialogActivity.b(this.b, this.a.getExtras());
    this.b.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.bv
 * JD-Core Version:    0.7.0.1
 */