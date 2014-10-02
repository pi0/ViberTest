package com.viber.jni;

class PhoneControllerWrapper$1
  implements Runnable
{
  PhoneControllerWrapper$1(PhoneControllerWrapper paramPhoneControllerWrapper) {}
  
  public void run()
  {
    if (this.this$0.isGSMCallActive())
    {
      this.this$0.reschedulePhoneStateWatchdog(this);
      return;
    }
    this.this$0.dropPhoneStateWatchdog(this, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.1
 * JD-Core Version:    0.7.0.1
 */