package com.viber.service;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b;
import com.viber.voip.contacts.b.i;
import com.viber.voip.e.u;
import com.viber.voip.phone.v;
import com.viber.voip.util.hd;

public class OutgoingCallBroadcaster
  extends Activity
{
  private void a(Intent paramIntent, String paramString)
  {
    hd.a(ViberApplication.getInstance(), paramString, new e(this, paramIntent, paramString));
  }
  
  private void a(String paramString)
  {
    Intent localIntent1 = getIntent();
    Uri localUri = localIntent1.getData();
    if ((paramString.equals("android.intent.action.CALL")) || (paramString.equals("com.viber.voip.action.SERVICE_NUMBER_DIALOG")) || (paramString.equals("com.viber.voip.action.NO_SERVICE_DIALOG")) || (paramString.equals("com.viber.voip.action.CONNECTION_PROBLEM")) || (paramString.equals("com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG")) || (paramString.equals("com.viber.voip.action.SLOW_INTERNET_DIALOG")) || (paramString.equals("com.viber.voip.action.PROBLEM_DEVICE_DIALOG")) || (paramString.equals("android.intent.action.DIAL")))
    {
      localIntent2 = new Intent(paramString);
      if ((localUri != null) && (!paramString.equals("com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG")) && (!paramString.equals("com.viber.voip.action.CONNECTION_PROBLEM"))) {
        localIntent2.setData(localUri);
      }
      localIntent2.setFlags(268435456);
      startActivity(localIntent2);
    }
    while (!paramString.equals("com.viber.voip.action.CALL_DIALOG"))
    {
      Intent localIntent2;
      return;
    }
    Intent localIntent3 = new Intent(paramString, localUri);
    localIntent3.setFlags(268435456);
    localIntent3.putExtra("last_resolved", System.currentTimeMillis());
    if ((localIntent1.hasExtra("extra_was_viber")) && (localIntent1.getBooleanExtra("extra_was_viber", false))) {
      localIntent3.putExtra("extra_was_viber", true);
    }
    startActivity(localIntent3);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      return;
    }
    Intent localIntent1 = getIntent();
    String str = com.viber.voip.phone.aa.a(getIntent(), this);
    int i;
    long l1;
    if ((localIntent1.getExtras() != null) && (localIntent1.getExtras().getBoolean("external_call", false)))
    {
      i = 1;
      if (localIntent1.getExtras() == null) {
        break label209;
      }
      l1 = localIntent1.getExtras().getLong("contact_id", -1L);
      label68:
      if (localIntent1.getExtras() == null) {
        break label217;
      }
    }
    label209:
    label217:
    for (long l2 = getIntent().getLongExtra("notif_extra_call", 0L);; l2 = 0L)
    {
      if (l2 != 0L) {
        ViberApplication.getInstance().getPhoneApp().a().c(l2);
      }
      if ((i == 0) || (l1 == -1L)) {
        break label241;
      }
      b localb = com.viber.voip.contacts.c.d.aa.a(this, l1);
      i locali = localb.i();
      if ((localb == null) || (!localb.e()) || (locali == null)) {
        break label223;
      }
      Intent localIntent2 = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", locali.a(), null));
      setIntent(localIntent2);
      a(localIntent2, locali.a());
      return;
      i = 0;
      break;
      l1 = -1L;
      break label68;
    }
    label223:
    startActivity(new Intent("com.viber.voip.action.NO_LONGER_VIBER_PROBLEM"));
    finish();
    return;
    label241:
    if (str != null)
    {
      localIntent1.setFlags(0);
      a(localIntent1, str);
      return;
    }
    sendOrderedBroadcast(localIntent1, null, new OutgoingCallBroadcaster.OutgoingCallReceiver(this), null, -1, null, null);
    finish();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    ViberApplication.log(3, "OutgoingCallBroadcaster", "onNewIntent() new call request received, do nothing, because already calling");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.OutgoingCallBroadcaster
 * JD-Core Version:    0.7.0.1
 */