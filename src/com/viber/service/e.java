package com.viber.service;

import android.content.Intent;
import android.telephony.PhoneNumberUtils;
import com.viber.voip.util.hj;

class e
  implements hj
{
  e(OutgoingCallBroadcaster paramOutgoingCallBroadcaster, Intent paramIntent, String paramString) {}
  
  public void a(boolean paramBoolean, int paramInt, String paramString)
  {
    if (this.a.getBooleanExtra("viber_out", false))
    {
      com.viber.voip.viberout.e.c().b(this.b);
      this.c.sendOrderedBroadcast(this.a, null, new OutgoingCallBroadcaster.OutgoingCallReceiver(this.c), null, -1, paramString, null);
      this.c.finish();
      return;
    }
    switch (paramInt)
    {
    default: 
      this.c.finish();
      return;
    case 0: 
      this.c.sendOrderedBroadcast(this.a, null, new OutgoingCallBroadcaster.OutgoingCallReceiver(this.c), null, -1, paramString, null);
      return;
    case 1: 
      if (com.viber.voip.viberout.e.c().b())
      {
        this.a.putExtra("viber_out", true);
        this.c.sendOrderedBroadcast(this.a, null, new OutgoingCallBroadcaster.OutgoingCallReceiver(this.c), null, -1, paramString, null);
        return;
      }
      OutgoingCallBroadcaster.a(this.c, "com.viber.voip.action.CALL_DIALOG");
      return;
    case -1: 
      OutgoingCallBroadcaster.a(this.c, "com.viber.voip.action.CALL_DIALOG");
      return;
    case 5: 
      if (PhoneNumberUtils.isEmergencyNumber(this.b.replaceAll("[^*0-9]+", "")))
      {
        OutgoingCallBroadcaster.a(this.c, "android.intent.action.DIAL");
        return;
      }
      OutgoingCallBroadcaster.a(this.c, "android.intent.action.CALL");
      return;
    case 6: 
      OutgoingCallBroadcaster.a(this.c, "com.viber.voip.action.SERVICE_NUMBER_DIALOG");
      return;
    case 2: 
      OutgoingCallBroadcaster.a(this.c, "com.viber.voip.action.NO_SERVICE_DIALOG");
      return;
    case 4: 
      OutgoingCallBroadcaster.a(this.c, "com.viber.voip.action.CONNECTION_PROBLEM");
      return;
    }
    OutgoingCallBroadcaster.a(this.c, "com.viber.voip.action.SLOW_INTERNET_DIALOG");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.e
 * JD-Core Version:    0.7.0.1
 */