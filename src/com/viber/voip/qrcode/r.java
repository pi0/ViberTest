package com.viber.voip.qrcode;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class r
  implements DialogInterface.OnClickListener
{
  private final Intent b;
  private final Runnable c;
  
  public r(ScannerActivity paramScannerActivity, Intent paramIntent, Runnable paramRunnable)
  {
    this.b = paramIntent;
    this.c = paramRunnable;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ScannerActivity.a(this.a, null);
    this.a.startActivity(this.b);
    if (this.c != null) {
      this.c.run();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.qrcode.r
 * JD-Core Version:    0.7.0.1
 */