package com.viber.voip.api.billing;

import android.os.Bundle;
import com.android.b.a.a;

public class InAppBillingService$InAppBillingServiceServiceImpl
  extends IInAppBillingService.Stub
{
  public InAppBillingService$InAppBillingServiceServiceImpl(InAppBillingService paramInAppBillingService) {}
  
  public int consumePurchase(int paramInt, String paramString1, String paramString2)
  {
    InAppBillingService.access$100("consumePurchase()");
    a locala = InAppBillingService.access$200(this.this$0);
    if (locala != null)
    {
      InAppBillingService.access$300(this.this$0);
      try
      {
        int i = locala.b(paramInt, paramString1, paramString2);
        return i;
      }
      finally
      {
        InAppBillingService.access$400(this.this$0);
      }
    }
    return 6;
  }
  
  public Bundle getBuyIntent(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    InAppBillingService.access$100("getBuyIntent()");
    a locala = InAppBillingService.access$200(this.this$0);
    if (locala != null)
    {
      InAppBillingService.access$300(this.this$0);
      try
      {
        Bundle localBundle = locala.a(paramInt, paramString1, paramString2, paramString3, paramString4);
        return localBundle;
      }
      finally
      {
        InAppBillingService.access$400(this.this$0);
      }
    }
    return null;
  }
  
  public Bundle getPurchases(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    InAppBillingService.access$100("getPurchases()");
    a locala = InAppBillingService.access$200(this.this$0);
    if (locala != null)
    {
      InAppBillingService.access$300(this.this$0);
      try
      {
        Bundle localBundle = locala.a(paramInt, paramString1, paramString2, paramString3);
        return localBundle;
      }
      finally
      {
        InAppBillingService.access$400(this.this$0);
      }
    }
    return null;
  }
  
  public Bundle getSkuDetails(int paramInt, String paramString1, String paramString2, Bundle paramBundle)
  {
    InAppBillingService.access$100("getSkuDetails()");
    a locala = InAppBillingService.access$200(this.this$0);
    if (locala != null)
    {
      InAppBillingService.access$300(this.this$0);
      try
      {
        Bundle localBundle = locala.a(paramInt, paramString1, paramString2, paramBundle);
        return localBundle;
      }
      finally
      {
        InAppBillingService.access$400(this.this$0);
      }
    }
    return null;
  }
  
  public int isBillingSupported(int paramInt, String paramString1, String paramString2)
  {
    InAppBillingService.access$100("isBillingSupported()");
    if (InAppBillingService.access$200(this.this$0) != null)
    {
      InAppBillingService.access$300(this.this$0);
      try
      {
        int i = this.this$0.mService.a(paramInt, paramString1, paramString2);
        return i;
      }
      finally
      {
        InAppBillingService.access$400(this.this$0);
      }
    }
    return 3;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.InAppBillingService.InAppBillingServiceServiceImpl
 * JD-Core Version:    0.7.0.1
 */