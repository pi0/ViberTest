package com.viber.voip.contacts.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;

class ci
  implements DialogInterface.OnClickListener
{
  ci(cb paramcb, long paramLong) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    cb.b(this.b).postDelayed(new cj(this), 200L);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ci
 * JD-Core Version:    0.7.0.1
 */