package com.viber.voip.messages.controller.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.viber.voip.dk;

class k
  extends BroadcastReceiver
{
  k(j paramj) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.viber.voip.action.APP_ON_BACKGROUND".equals(paramIntent.getAction())) {
      dk.d.a().post(new l(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.k
 * JD-Core Version:    0.7.0.1
 */