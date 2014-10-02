package com.viber.voip.qrcode;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;

class o
  implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, Runnable
{
  private o(ScannerActivity paramScannerActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.finish();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.finish();
  }
  
  public void run()
  {
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.qrcode.o
 * JD-Core Version:    0.7.0.1
 */