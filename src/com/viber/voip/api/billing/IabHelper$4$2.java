package com.viber.voip.api.billing;

import java.util.List;

class IabHelper$4$2
  implements Runnable
{
  IabHelper$4$2(IabHelper.4 param4, List paramList) {}
  
  public void run()
  {
    this.this$1.val$multiListener.onConsumeMultiFinished(this.this$1.val$purchases, this.val$results);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.billing.IabHelper.4.2
 * JD-Core Version:    0.7.0.1
 */