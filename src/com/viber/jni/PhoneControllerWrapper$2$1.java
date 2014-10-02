package com.viber.jni;

import com.viber.voip.phone.call.i;
import com.viber.voip.phone.call.k;
import java.util.Iterator;
import java.util.Set;

class PhoneControllerWrapper$2$1
  implements Runnable
{
  PhoneControllerWrapper$2$1(PhoneControllerWrapper.2 param2, k paramk) {}
  
  public void run()
  {
    synchronized (PhoneControllerWrapper.access$1100(this.this$1.this$0))
    {
      Iterator localIterator = PhoneControllerWrapper.access$1100(this.this$1.this$0).iterator();
      if (localIterator.hasNext()) {
        ((i)localIterator.next()).onCallInfoReady(this.val$callInfo);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.2.1
 * JD-Core Version:    0.7.0.1
 */