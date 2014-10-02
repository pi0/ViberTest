package com.viber.voip.viberout.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class j
  extends BroadcastReceiver
{
  j(ViberOutActivity paramViberOutActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ViberOutActivity.a("Received broadcast " + paramIntent.getAction());
    if ("fetch_balance".equals(paramIntent.getAction())) {
      ViberOutActivity.a(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.j
 * JD-Core Version:    0.7.0.1
 */