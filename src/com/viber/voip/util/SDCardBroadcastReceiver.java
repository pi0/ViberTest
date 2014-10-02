package com.viber.voip.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.viber.voip.ViberApplication;

public class SDCardBroadcastReceiver
  extends BroadcastReceiver
{
  private static final String a = SDCardBroadcastReceiver.class.getSimpleName();
  
  private void a(String paramString) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext.startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
    String str = paramIntent.getAction();
    if ("android.intent.action.MEDIA_MOUNTED".equals(str))
    {
      a("SDCARD MOUNTED!!!!");
      ViberApplication.getInstance().fireMediaMounted();
    }
    while (!"android.intent.action.MEDIA_UNMOUNTED".equals(str)) {
      return;
    }
    a("SDCARD UNMOUNTED!!!!");
    ViberApplication.getInstance().fireMediaUnmounted();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.SDCardBroadcastReceiver
 * JD-Core Version:    0.7.0.1
 */