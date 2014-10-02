package com.viber.voip.qrcode;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.util.hc;

class p
  implements DialogInterface.OnClickListener
{
  private p(ScannerActivity paramScannerActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ScannerActivity.a(this.a, null);
    hc.e(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.qrcode.p
 * JD-Core Version:    0.7.0.1
 */