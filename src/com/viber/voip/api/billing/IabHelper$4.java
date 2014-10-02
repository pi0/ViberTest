package com.viber.voip.api.billing;

import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class IabHelper$4
  implements Runnable
{
  IabHelper$4(IabHelper paramIabHelper, List paramList, IabHelper.OnConsumeFinishedListener paramOnConsumeFinishedListener, Handler paramHandler, IabHelper.OnConsumeMultiFinishedListener paramOnConsumeMultiFinishedListener) {}
  
  public void run()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.val$purchases.iterator();
    while (localIterator.hasNext())
    {
      Purchase localPurchase = (Purchase)localIterator.next();
      try
      {
        IabHelper.access$300(this.this$0, localPurchase);
        localArrayList.add(new IabResult(0, "Successful consume of productId " + localPurchase.getProductId()));
      }
      catch (IabException localIabException)
      {
        localArrayList.add(localIabException.getResult());
      }
    }
    if (this.val$singleListener != null) {
      this.val$handler.post(new IabHelper.4.1(this, localArrayList));
    }
    if (this.val$multiListener != null) {
      this.val$handler.post(new IabHelper.4.2(this, localArrayList));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IabHelper.4
 * JD-Core Version:    0.7.0.1
 */