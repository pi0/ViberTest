package com.viber.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.viber.voip.settings.l;

class m
  extends BroadcastReceiver
{
  m(VoipConnectorService paramVoipConnectorService) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.AIRPLANE_MODE".equals(paramIntent.getAction()))
    {
      if (paramIntent.getBooleanExtra("state", true)) {
        VoipConnectorService.c(this.a).a("airplane_mode", true);
      }
    }
    else {
      return;
    }
    VoipConnectorService.c(this.a).a("airplane_mode", false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.m
 * JD-Core Version:    0.7.0.1
 */