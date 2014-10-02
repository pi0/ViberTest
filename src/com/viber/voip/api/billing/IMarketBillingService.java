package com.viber.voip.api.billing;

import android.os.Bundle;
import android.os.IInterface;

public abstract interface IMarketBillingService
  extends IInterface
{
  public abstract Bundle sendBillingRequest(Bundle paramBundle);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IMarketBillingService
 * JD-Core Version:    0.7.0.1
 */