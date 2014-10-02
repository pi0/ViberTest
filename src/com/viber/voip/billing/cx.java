package com.viber.voip.billing;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class cx
  extends BroadcastReceiver
{
  cx(PurchaseSupportActivity paramPurchaseSupportActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    PurchaseSupportActivity.b("received event " + paramIntent.getAction());
    if ("finish-purchase-support".equals(paramIntent.getAction())) {
      PurchaseSupportActivity.a(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.cx
 * JD-Core Version:    0.7.0.1
 */