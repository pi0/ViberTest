package com.viber.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class DelayedRestartReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      paramContext.startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.DelayedRestartReceiver
 * JD-Core Version:    0.7.0.1
 */