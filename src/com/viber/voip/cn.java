package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;

class cn
  implements DialogInterface.OnClickListener
{
  cn(SystemDialogActivity paramSystemDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ViberApplication.getInstance().getPhoneController(true).getDialerController().handleClose();
    this.a.a(paramDialogInterface);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.cn
 * JD-Core Version:    0.7.0.1
 */