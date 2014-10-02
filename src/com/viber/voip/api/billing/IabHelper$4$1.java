package com.viber.voip.api.billing;

import java.util.List;

class IabHelper$4$1
  implements Runnable
{
  IabHelper$4$1(IabHelper.4 param4, List paramList) {}
  
  public void run()
  {
    this.this$1.val$singleListener.onConsumeFinished((Purchase)this.this$1.val$purchases.get(0), (IabResult)this.val$results.get(0));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IabHelper.4.1
 * JD-Core Version:    0.7.0.1
 */