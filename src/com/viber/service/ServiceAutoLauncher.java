package com.viber.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.viber.voip.ViberApplication;

public class ServiceAutoLauncher
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ViberApplication.log(4, "-autolaunch-", "ServiceAutoLauncher.onReceive");
    paramContext.startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.ServiceAutoLauncher
 * JD-Core Version:    0.7.0.1
 */