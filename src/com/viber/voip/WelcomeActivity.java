package com.viber.voip;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.service.contacts.authentication.AccountAuthenticatorService;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.contacts.ui.ContactDetailsActivity;
import com.viber.voip.registration.ActivationController;
import com.viber.voip.settings.l;
import com.viber.voip.util.bm;
import com.viber.voip.viberout.e;

public class WelcomeActivity
  extends ViberActivity
{
  private static final String a = WelcomeActivity.class.getSimpleName();
  private static boolean b = true;
  private boolean c;
  private Handler d = dc.a(dk.a);
  
  private void b()
  {
    if (d())
    {
      e.c().a(this, getIntent());
      c();
      com.viber.voip.backgrounds.a.a().d();
    }
  }
  
  private void c()
  {
    Intent localIntent = getIntent();
    localIntent.setFlags(0);
    if (("android.intent.action.VIEW".equals(localIntent.getAction())) && (localIntent.getScheme().equals("tel")))
    {
      localIntent.putExtra("EXTRA_RETURN_TO_HOME", true);
      localIntent.setClass(this, ContactDetailsActivity.class);
      bm.a(this, localIntent, true);
      return;
    }
    localIntent.setClass(this, HomeActivity.class);
    localIntent.putExtra("EXTRA_FROM_LAUNCH_ACTIVITY", true);
    startActivity(localIntent);
    finish();
  }
  
  private boolean d()
  {
    if (b)
    {
      e();
      b = false;
    }
    ActivationController localActivationController = ViberApplication.getInstance().getActivationController();
    if ((ViberApplication.isActivated()) && (localActivationController.isActivationCompleted()))
    {
      com.viber.service.contacts.sync.a.a().d();
      return true;
    }
    com.viber.service.contacts.sync.a.a().e();
    localActivationController.resumeActivation();
    return false;
  }
  
  private void e() {}
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Log.i(a, "ViberApplication initialization Welcome");
    ViberApplication.getInstance();
    if ((!ViberApplication.isActivated()) || (!ViberApplication.preferences().b("async_native_lib_load", true))) {
      ViberApplication.getInstance().getPhoneController(false).addReadyListener(new ea(this));
    }
    for (;;)
    {
      startService(new Intent(this, AccountAuthenticatorService.class));
      if (!ViberApplication.getInstance().getPhoneController(false).isReady())
      {
        setContentView(2130903229);
        Log.i(a, "ViberApplication initialization Service not ready");
      }
      Log.i(a, "ViberApplication initialization Welcome DONE");
      return;
      b();
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    this.c = false;
    setIntent(paramIntent);
    b();
  }
  
  protected void onResume()
  {
    Log.i(a, "ViberApplication initialization Welcome RESUME");
    if (this.c)
    {
      this.c = false;
      finish();
    }
    for (;;)
    {
      super.onResume();
      Log.i(a, "ViberApplication initialization Welcome RESUME DONE");
      return;
      this.c = true;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.WelcomeActivity
 * JD-Core Version:    0.7.0.1
 */