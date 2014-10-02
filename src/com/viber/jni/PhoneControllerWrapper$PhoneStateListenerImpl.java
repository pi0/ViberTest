package com.viber.jni;

import android.telephony.PhoneStateListener;

class PhoneControllerWrapper$PhoneStateListenerImpl
  extends PhoneStateListener
{
  private PhoneControllerWrapper$PhoneStateListenerImpl(PhoneControllerWrapper paramPhoneControllerWrapper) {}
  
  public void onCallStateChanged(int paramInt, String paramString)
  {
    PhoneControllerWrapper.access$200(this.this$0, "PhoneStateListenerImpl.onCallStateChanged: " + paramString + "; state: " + paramInt);
    super.onCallStateChanged(paramInt, paramString);
    PhoneControllerWrapper.access$300(this.this$0).onGSMStateChange(paramInt, paramString);
    PhoneControllerWrapper.access$200(this.this$0, "# CALL_STATE: " + paramInt + ": " + paramString);
    if ((paramInt != 0) && (this.this$0.isGSMCallActive()))
    {
      this.this$0.handleGSMStateChange(1);
      this.this$0.reschedulePhoneStateWatchdog(null);
      return;
    }
    this.this$0.handleGSMStateChange(0);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.PhoneStateListenerImpl
 * JD-Core Version:    0.7.0.1
 */