package com.viber.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;

class n
  extends BroadcastReceiver
{
  n(VoipConnectorService paramVoipConnectorService) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.viber.voip.action.VIBER_SERVICE_EXIT".equals(paramIntent.getAction())) {
      VoipConnectorService.d(this.a).post(new o(this));
    }
    do
    {
      return;
      if ("com.viber.voip.action.KEEP_ALIVE_RECEIVE".equals(paramIntent.getAction()))
      {
        VoipConnectorService.d(this.a).post(new p(this));
        return;
      }
      if ("com.viber.voip.action.VERSION_CHECK".equals(paramIntent.getAction()))
      {
        dc.a(dk.h).post(VoipConnectorService.e(this.a));
        return;
      }
      if ("com.viber.voip.action.SEND_TIMEOUT".equals(paramIntent.getAction()))
      {
        this.a.a(paramContext, paramIntent);
        return;
      }
      if ("com.viber.voip.action.SETTINGS_CHANGE_CHECK".equals(paramIntent.getAction()))
      {
        VoipConnectorService.d(this.a).post(new r(this));
        return;
      }
    } while (!"com.viber.voip.action.APP_ON_FOREGROUND".equals(paramIntent.getAction()));
    VoipConnectorService.d(this.a).post(new s(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.n
 * JD-Core Version:    0.7.0.1
 */