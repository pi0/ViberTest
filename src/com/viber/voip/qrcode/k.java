package com.viber.voip.qrcode;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class k
  extends BroadcastReceiver
{
  private k(h paramh) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.BATTERY_CHANGED".equals(paramIntent.getAction())) {
      if (paramIntent.getIntExtra("plugged", -1) > 0) {
        break label36;
      }
    }
    label36:
    for (int i = 1; i != 0; i = 0)
    {
      this.a.a();
      return;
    }
    h.a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.qrcode.k
 * JD-Core Version:    0.7.0.1
 */