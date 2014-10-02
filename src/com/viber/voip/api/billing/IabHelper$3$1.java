package com.viber.voip.api.billing;

class IabHelper$3$1
  implements Runnable
{
  IabHelper$3$1(IabHelper.3 param3, IabResult paramIabResult, IabInventory paramIabInventory) {}
  
  public void run()
  {
    this.this$1.val$listener.onQueryInventoryFinished(this.val$result_f, this.val$inv_f);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.billing.IabHelper.3.1
 * JD-Core Version:    0.7.0.1
 */