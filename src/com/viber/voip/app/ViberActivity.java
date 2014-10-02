package com.viber.voip.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.actionbarsherlock.app.SherlockActivity;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.WelcomeActivity;
import com.viber.voip.a.bc;
import com.viber.voip.process.k;
import com.viber.voip.process.l;
import com.viber.voip.util.gl;

public abstract class ViberActivity
  extends SherlockActivity
{
  public static Activity sLastUsedActivity;
  
  public static Activity getLastUsedActivity()
  {
    return sLastUsedActivity;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    sLastUsedActivity = this;
    l.a().a(this);
    super.onCreate(paramBundle);
  }
  
  protected void onDestroy()
  {
    sLastUsedActivity = null;
    l.a().b(this);
    super.onDestroy();
    gl.a(getWindow());
  }
  
  protected void onPause()
  {
    super.onPause();
    ViberApplication.getInstance().notifyActivityOnForeground(false, getClass().getSimpleName());
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((!(this instanceof WelcomeActivity)) && (k.a() == k.a) && (ViberApplication.getInstance().isUseDelayedLoad()) && (!ViberApplication.getInstance().getPhoneController(false).isReady())) {
      startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
    }
    ViberApplication.getInstance().notifyActivityOnForeground(true, getClass().getSimpleName());
  }
  
  protected void onStart()
  {
    sLastUsedActivity = this;
    super.onStart();
    bc.a().a(this);
  }
  
  protected void onStop()
  {
    super.onStop();
    bc.a().b(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.app.ViberActivity
 * JD-Core Version:    0.7.0.1
 */