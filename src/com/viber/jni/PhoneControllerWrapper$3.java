package com.viber.jni;

import com.viber.voip.pixie.PixieController.PixieReadyListener;

class PhoneControllerWrapper$3
  implements PixieController.PixieReadyListener
{
  PhoneControllerWrapper$3(PhoneControllerWrapper paramPhoneControllerWrapper) {}
  
  public void onReady()
  {
    PhoneControllerWrapper.access$200(this.this$0, "library initialization pixi checking finished");
    synchronized (PhoneControllerWrapper.access$1200(this.this$0))
    {
      if (!PhoneControllerWrapper.access$1300(this.this$0)) {
        PhoneControllerWrapper.access$1400(this.this$0);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.3
 * JD-Core Version:    0.7.0.1
 */