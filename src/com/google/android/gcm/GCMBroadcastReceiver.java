package com.google.android.gcm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class GCMBroadcastReceiver
  extends BroadcastReceiver
{
  private static boolean a = false;
  
  static final String b(Context paramContext)
  {
    return paramContext.getPackageName() + ".GCMIntentService";
  }
  
  protected String a(Context paramContext)
  {
    return b(paramContext);
  }
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    Log.v("GCMBroadcastReceiver", "onReceive: " + paramIntent.getAction());
    if (!a)
    {
      a = true;
      String str2 = getClass().getName();
      if (!str2.equals(GCMBroadcastReceiver.class.getName())) {
        a.a(str2);
      }
    }
    String str1 = a(paramContext);
    Log.v("GCMBroadcastReceiver", "GCM IntentService class: " + str1);
    GCMBaseIntentService.a(paramContext, paramIntent, str1);
    setResult(-1, null, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.google.android.gcm.GCMBroadcastReceiver
 * JD-Core Version:    0.7.0.1
 */