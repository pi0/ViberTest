package com.viber.voip.registration;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.d;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.rakuten.l;
import com.viber.voip.user.UserDataFragment;
import com.viber.voip.widget.MessageBar;

public class RegistrationActivity
  extends BaseRegistrationActivity
  implements o
{
  private static int f;
  protected Fragment a;
  private MessageBar b;
  private af c;
  private b d;
  private TextView e;
  private BroadcastReceiver g;
  private int h = -1;
  
  private void a(Fragment paramFragment)
  {
    runOnUiThread(new ca(this, paramFragment));
  }
  
  private void b(Fragment paramFragment)
  {
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    if (this.a != null) {
      localFragmentTransaction.remove(this.a);
    }
    localFragmentTransaction.replace(2131166113, paramFragment);
    localFragmentTransaction.setCustomAnimations(2130968578, 2130968580);
    localFragmentTransaction.commitAllowingStateLoss();
    this.a = paramFragment;
  }
  
  private void i()
  {
    int i = a().getStep();
    if (i == this.h)
    {
      j();
      return;
    }
    b("updateScreen step : " + i);
    switch (i)
    {
    case 2: 
    case 3: 
    case 4: 
    case 6: 
    default: 
      b("Activation Completed. Nothing to show");
      finish();
    }
    for (;;)
    {
      this.h = i;
      l.a().a(this);
      return;
      e();
      continue;
      b();
      a(getIntent());
      continue;
      f();
      continue;
      c();
      g();
    }
  }
  
  private void j()
  {
    if (this.h == 1)
    {
      String str = getIntent().getStringExtra("activation_code");
      if ((!TextUtils.isEmpty(str)) && ((this.a instanceof t))) {
        ((t)this.a).b(str);
      }
    }
  }
  
  public void a(Intent paramIntent)
  {
    t localt = new t();
    localt.setArguments(intentToFragmentArguments(paramIntent));
    a(localt);
    d();
  }
  
  public void a(String paramString)
  {
    if (this.a != null) {
      ((ai)this.a).a(paramString);
    }
  }
  
  protected void b()
  {
    if (this.c == null)
    {
      this.c = new af(this);
      this.c.a();
    }
    if (this.d == null)
    {
      this.d = new b(this, getApplicationContext());
      this.d.a();
    }
  }
  
  protected void c()
  {
    if (this.c != null)
    {
      this.c.b();
      this.c = null;
    }
    if (this.d != null)
    {
      this.d.b();
      this.d = null;
    }
  }
  
  protected void d()
  {
    View localView = findViewById(2131166115);
    if (localView != null) {
      localView.setVisibility(8);
    }
  }
  
  public void e()
  {
    a(new cb());
  }
  
  public void f()
  {
    a(new bn());
  }
  
  public void g()
  {
    a(new UserDataFragment());
  }
  
  public MessageBar h()
  {
    return this.b;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    ViberApplication.getInstance().getFacebookManager().a(this, paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    if (this.a == null) {
      super.onBackPressed();
    }
    while (((d)this.a).onActivityBackPressed()) {
      return;
    }
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ImageView localImageView = (ImageView)findViewById(2131166114);
    if (localImageView != null) {
      localImageView.setImageDrawable(getResources().getDrawable(2130838610));
    }
    if ((this.a instanceof UserDataFragment)) {
      g();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Window localWindow = getWindow();
    if (ViberApplication.isTablet()) {}
    for (int i = 32;; i = 16)
    {
      localWindow.setSoftInputMode(i | 0x3);
      b("onCreate ACTION: " + getIntent().getAction() + ",activeInstances:" + f);
      super.onCreate(paramBundle);
      try
      {
        f = 1 + f;
        if (f > 1)
        {
          Intent localIntent = new Intent("com.viber.voip.action.UPDATE_SCREEN");
          if (getIntent().getExtras() != null) {
            localIntent.putExtras(getIntent().getExtras());
          }
          Log.d("RegistrationActivity", "sending update screen broadcast");
          sendBroadcast(localIntent);
          finish();
          return;
        }
        setContentView(2130903321);
        i();
        if (ViberApplication.isTablet()) {
          this.b = new MessageBar(this);
        }
        this.e = ((TextView)findViewById(2131165881));
        this.e.setOnClickListener(new by(this));
        this.g = new bz(this);
        registerReceiver(this.g, new IntentFilter("com.viber.voip.action.UPDATE_SCREEN"));
        return;
      }
      finally {}
    }
  }
  
  protected void onDestroy()
  {
    try
    {
      f = -1 + f;
      b("onDestroy activeInstances:" + f);
      c();
      if (this.g != null) {
        unregisterReceiver(this.g);
      }
      super.onDestroy();
      return;
    }
    finally {}
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    finish();
    return true;
  }
  
  public void onPause()
  {
    if (this.d != null) {
      this.d.c();
    }
    super.onPause();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.RegistrationActivity
 * JD-Core Version:    0.7.0.1
 */