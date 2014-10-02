package com.viber.voip.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class IncomingSmsReceiver
  extends BroadcastReceiver
{
  private static final String a = IncomingSmsReceiver.class.getSimpleName();
  
  private static void a(String paramString) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    a(" new sms comes! action " + paramIntent.getAction());
    paramContext.startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sms.IncomingSmsReceiver
 * JD-Core Version:    0.7.0.1
 */