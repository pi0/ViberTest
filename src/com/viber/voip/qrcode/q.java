package com.viber.voip.qrcode;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;

class q
  implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, Runnable
{
  private q(ScannerActivity paramScannerActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    ScannerActivity.a(this.a, null);
    this.a.e();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ScannerActivity.a(this.a, null);
    this.a.e();
  }
  
  public void run()
  {
    ScannerActivity.a(this.a, null);
    this.a.e();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.qrcode.q
 * JD-Core Version:    0.7.0.1
 */