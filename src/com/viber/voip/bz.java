package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class bz
  implements DialogInterface.OnClickListener
{
  bz(SystemDialogActivity paramSystemDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.startActivity(new Intent("com.viber.voip.action.SETTINGS"));
    this.a.a(paramDialogInterface);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.bz
 * JD-Core Version:    0.7.0.1
 */