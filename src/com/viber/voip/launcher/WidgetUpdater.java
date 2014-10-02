package com.viber.voip.launcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.viber.voip.util.fz;

public class WidgetUpdater
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent("com.viber.voip.action.UPDATE_WIDGETS");
    localIntent.putExtra("call_count", fz.a().c());
    paramContext.sendBroadcast(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.launcher.WidgetUpdater
 * JD-Core Version:    0.7.0.1
 */