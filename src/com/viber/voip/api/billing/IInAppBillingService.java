package com.viber.voip.api.billing;

import android.os.Bundle;
import android.os.IInterface;

public abstract interface IInAppBillingService
  extends IInterface
{
  public abstract int consumePurchase(int paramInt, String paramString1, String paramString2);
  
  public abstract Bundle getBuyIntent(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract Bundle getPurchases(int paramInt, String paramString1, String paramString2, String paramString3);
  
  public abstract Bundle getSkuDetails(int paramInt, String paramString1, String paramString2, Bundle paramBundle);
  
  public abstract int isBillingSupported(int paramInt, String paramString1, String paramString2);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.billing.IInAppBillingService
 * JD-Core Version:    0.7.0.1
 */