package com.viber.voip.app;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.process.k;
import com.viber.voip.settings.j;
import com.viber.voip.util.bw;
import com.viber.voip.util.gl;
import com.viber.voip.viberout.e;
import com.viber.voip.viberout.i;

public abstract class ViberFragmentActivity
  extends SherlockFragmentActivity
{
  private static boolean mPttCheckAutoclean = true;
  private static boolean mZoobeCheckAutoclean = true;
  private i mEntryCookie;
  private boolean mViberOutCheck;
  
  public static Intent fragmentArgumentsToIntent(Bundle paramBundle)
  {
    Intent localIntent = new Intent();
    if (paramBundle == null) {
      return localIntent;
    }
    Uri localUri = (Uri)paramBundle.getParcelable("_uri");
    if (localUri != null) {
      localIntent.setData(localUri);
    }
    localIntent.putExtras(paramBundle);
    localIntent.removeExtra("_uri");
    return localIntent;
  }
  
  public static Bundle intentToFragmentArguments(Intent paramIntent)
  {
    Bundle localBundle = new Bundle();
    if (paramIntent == null) {}
    do
    {
      return localBundle;
      Uri localUri = paramIntent.getData();
      if (localUri != null) {
        localBundle.putParcelable("_uri", localUri);
      }
    } while (paramIntent.getExtras() == null);
    localBundle.putAll(paramIntent.getExtras());
    return localBundle;
  }
  
  void checkPttAutoclean()
  {
    if ((mPttCheckAutoclean) && (!ViberApplication.preferences().b(j.am())))
    {
      ViberApplication.log("PTT autoclean FIRST");
      ViberApplication.getInstance().getPhoneController(false).addReadyListener(new a(this));
    }
    for (;;)
    {
      if (mZoobeCheckAutoclean) {
        bw.a().a(dc.a(dk.h), new d(this));
      }
      mPttCheckAutoclean = false;
      mZoobeCheckAutoclean = false;
      return;
      if ((mPttCheckAutoclean) && (ViberApplication.preferences().b(j.am(), j.an())))
      {
        ViberApplication.log("PTT autoclean ON");
        dc.a(dk.h).post(new c(this));
      }
      else
      {
        ViberApplication.log("PTT autoclean OFF");
      }
    }
  }
  
  public ActionBarSherlock getActionBarSherlock()
  {
    return getSherlock();
  }
  
  public void onBackPressed()
  {
    try
    {
      super.onBackPressed();
      label4:
      if (this.mViberOutCheck) {
        e.c().b(this.mEntryCookie);
      }
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      break label4;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    ViberActivity.sLastUsedActivity = this;
    com.viber.voip.process.l.a().a(this);
    super.onCreate(paramBundle);
    if (this.mViberOutCheck) {
      this.mEntryCookie = e.c().b(this, getIntent());
    }
  }
  
  protected void onDestroy()
  {
    ViberActivity.sLastUsedActivity = null;
    com.viber.voip.process.l.a().b(this);
    super.onDestroy();
    gl.a(getWindow());
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    if (this.mViberOutCheck) {
      this.mEntryCookie = e.c().b(this, paramIntent);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    ViberApplication.getInstance().notifyActivityOnForeground(false, getClass().getSimpleName());
  }
  
  protected void onRestart()
  {
    super.onRestart();
    if (this.mViberOutCheck) {
      e.c().d(this.mEntryCookie);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (k.a() == k.a)
    {
      if ((ViberApplication.getInstance().isUseDelayedLoad()) && (!ViberApplication.getInstance().getPhoneController(false).isReady())) {
        startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
      }
      checkPttAutoclean();
    }
    ViberApplication.getInstance().notifyActivityOnForeground(true, getClass().getSimpleName());
    ViberActivity.sLastUsedActivity = this;
  }
  
  protected void onStart()
  {
    ViberActivity.sLastUsedActivity = this;
    super.onStart();
    bc.a().a(this);
    if (this.mViberOutCheck) {
      e.c().d(this.mEntryCookie);
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    bc.a().b(this);
    if (this.mViberOutCheck) {
      e.c().c(this.mEntryCookie);
    }
  }
  
  protected void requestViberOutCheck()
  {
    this.mViberOutCheck = true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.app.ViberFragmentActivity
 * JD-Core Version:    0.7.0.1
 */