package com.viber.jni;

import com.viber.voip.util.fu;

class PhoneControllerWrapper$ConnectivityMgr
  implements fu
{
  private PhoneControllerWrapper$ConnectivityMgr(PhoneControllerWrapper paramPhoneControllerWrapper) {}
  
  public void backgroundDataChanged(boolean paramBoolean) {}
  
  public void connectivityChanged(int paramInt1, int paramInt2)
  {
    PhoneControllerWrapper.access$200(this.this$0, "connectivityChanged networkType:" + paramInt1 + ",networkSubtype:" + paramInt2);
    PhoneControllerWrapper.access$802(this.this$0, paramInt1);
    switch (paramInt1)
    {
    default: 
      return;
    case 0: 
      PhoneControllerWrapper.access$900(this.this$0).handleConnectivityChange(2);
      PhoneControllerWrapper.access$1002(this.this$0, true);
      return;
    case 1: 
      PhoneControllerWrapper.access$900(this.this$0).handleConnectivityChange(1);
      PhoneControllerWrapper.access$1002(this.this$0, true);
      return;
    }
    PhoneControllerWrapper.access$900(this.this$0).handleConnectivityChange(0);
    PhoneControllerWrapper.access$1002(this.this$0, false);
    PhoneControllerWrapper.access$602(this.this$0, false);
  }
  
  public void wifiConnectivityChanged()
  {
    this.this$0.sendKA();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.ConnectivityMgr
 * JD-Core Version:    0.7.0.1
 */