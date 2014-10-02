package com.viber.voip;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

public class ViberApplication$KillReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ViberApplication.access$300(ViberApplication.getInstance()).post(new dt(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ViberApplication.KillReceiver
 * JD-Core Version:    0.7.0.1
 */