package com.viber.voip.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.k.a;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.messages.ui.MessageComposerView;
import com.viber.voip.settings.l;

public class PackageReplacedBroadcastReceiver
  extends BroadcastReceiver
{
  private static final String a = PackageReplacedBroadcastReceiver.class.getSimpleName();
  
  private void a(Context paramContext)
  {
    ViberApplication.preferences(paramContext.getApplicationContext()).a("PREF_IS_VIBER_UPGRADED", true);
  }
  
  private void a(String paramString) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext.startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
    if (("android.intent.action.PACKAGE_REPLACED".equals(paramIntent.getAction())) && (paramIntent.getData().getSchemeSpecificPart().equals(paramContext.getPackageName())))
    {
      a("Package was replaced / upgraded");
      a.a().e();
      a(paramContext);
      MessageComposerView.h();
      ViberApplication.getInstance().getFacebookManager().c();
      hk.a().a(paramContext);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.PackageReplacedBroadcastReceiver
 * JD-Core Version:    0.7.0.1
 */