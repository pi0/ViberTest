package com.viber.voip.api.billing;

import android.os.Handler;
import java.util.List;

class IabHelper$3
  implements Runnable
{
  IabHelper$3(IabHelper paramIabHelper, boolean paramBoolean, List paramList, Handler paramHandler, IabHelper.QueryInventoryFinishedListener paramQueryInventoryFinishedListener) {}
  
  public void run()
  {
    localIabResult = new IabResult(0, "Inventory refresh successful.");
    try
    {
      IabInventory localIabInventory2 = IabHelper.access$200(this.this$0, this.val$queryProductDetails, this.val$moreProductIds);
      localIabInventory1 = localIabInventory2;
    }
    catch (IabException localIabException)
    {
      for (;;)
      {
        localIabResult = localIabException.getResult();
        IabInventory localIabInventory1 = null;
      }
    }
    this.val$handler.post(new IabHelper.3.1(this, localIabResult, localIabInventory1));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.billing.IabHelper.3
 * JD-Core Version:    0.7.0.1
 */