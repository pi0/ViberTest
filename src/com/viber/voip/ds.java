package com.viber.voip;

import android.content.Intent;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.dialer.DialerControllerDelegate.DialerCallback;
import com.viber.voip.registration.ActivationController;

class ds
  extends PhoneControllerDelegateAdapter
  implements DialerControllerDelegate.DialerCallback
{
  private ds(ViberApplication paramViberApplication) {}
  
  public void hideCallBack()
  {
    ViberApplication.log("CallBackListener hideCallBack");
  }
  
  public void onDebugInfo(int paramInt, String paramString1, String paramString2) {}
  
  public void onShouldRegister()
  {
    ViberApplication.getInstance().setActivated(false);
    this.a.getActivationController().setKeyChainDeviceKey(null);
    Intent localIntent = new Intent("com.viber.voip.action.DEFAULT");
    localIntent.putExtra("extra_navigate_should_register", true);
    localIntent.setFlags(335544320);
    ViberApplication.getInstance().startActivity(localIntent);
  }
  
  public void showCallBack(int paramInt1, int paramInt2)
  {
    ViberApplication.log("CallBackListener showCallBack " + paramInt1);
  }
  
  public void showDialog(int paramInt, String paramString)
  {
    ViberApplication.log("CallBackListener showDialog type:" + paramInt + "Ctx = " + paramString);
    ViberApplication.access$200(this.a, paramInt, paramString);
  }
  
  public void switchToGSM(String paramString)
  {
    ViberApplication.log("CallBackListener switchToGSM");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ds
 * JD-Core Version:    0.7.0.1
 */