package com.viber.jni;

import com.viber.jni.connection.ConnectionDelegate;

class PhoneControllerWrapper$PhoneControllerWrapperDelegate
  extends PhoneControllerDelegateAdapter
  implements ConnectionDelegate
{
  private long deltaTime = 9223372036854775807L;
  private int prevConnectionState = -1;
  
  private PhoneControllerWrapper$PhoneControllerWrapperDelegate(PhoneControllerWrapper paramPhoneControllerWrapper) {}
  
  public void onConnect() {}
  
  public void onConnectionStateChange(int paramInt)
  {
    int i = 1;
    PhoneControllerWrapper.access$200(this.this$0, "onConnectionStateChange connectionState:" + paramInt + " prevConnectionState:" + this.prevConnectionState);
    if (this.prevConnectionState == paramInt) {
      return;
    }
    this.prevConnectionState = paramInt;
    if (paramInt == i)
    {
      PhoneControllerWrapper.access$500(this.this$0, PhoneControllerDelegate.ViberConnectionState.CONNECTING);
      return;
    }
    PhoneControllerWrapper localPhoneControllerWrapper = this.this$0;
    if (paramInt == 3) {}
    for (;;)
    {
      PhoneControllerWrapper.access$602(localPhoneControllerWrapper, i);
      PhoneControllerWrapper.access$500(this.this$0, PhoneControllerWrapper.access$700(this.this$0));
      return;
      i = 0;
    }
  }
  
  public void onIsRegistered(int paramInt)
  {
    if (paramInt == 1) {
      PhoneControllerWrapper.access$400(this.this$0);
    }
  }
  
  public void onLBServerTime(long paramLong)
  {
    this.deltaTime = (System.currentTimeMillis() - paramLong);
    PhoneControllerWrapper.access$200(this.this$0, "onLBServerTime: deltaTime=" + this.deltaTime);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.PhoneControllerWrapperDelegate
 * JD-Core Version:    0.7.0.1
 */