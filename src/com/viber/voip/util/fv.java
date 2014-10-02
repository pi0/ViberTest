package com.viber.voip.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;

class fv
  extends BroadcastReceiver
{
  private fv(ft paramft) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    StringBuilder localStringBuilder = new StringBuilder(350);
    if (("android.intent.action.AIRPLANE_MODE".equals(paramIntent.getAction())) && (paramIntent.getBooleanExtra("state", false)))
    {
      ft.a(this.a, -1, -1);
      localStringBuilder.append("Airplane mode on").append('\n');
    }
    do
    {
      return;
      if (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
      {
        ft.a(this.a, paramIntent);
        return;
      }
    } while (!paramIntent.getAction().equals("android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"));
    ft.a(this.a, ft.a(this.a).getBackgroundDataSetting());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.fv
 * JD-Core Version:    0.7.0.1
 */