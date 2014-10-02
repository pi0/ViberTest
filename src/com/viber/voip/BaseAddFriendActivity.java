package com.viber.voip;

import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.messages.controller.dn;
import com.viber.voip.messages.i;
import com.viber.voip.ui.a.d;
import com.viber.voip.ui.a.f;
import com.viber.voip.util.hd;

public abstract class BaseAddFriendActivity
  extends ViberFragmentActivity
{
  private d a;
  private Handler b;
  private volatile boolean c;
  private v d;
  private final Runnable e = new l(this);
  private final DialogInterface.OnCancelListener f = new m(this);
  
  private void a()
  {
    FragmentManager localFragmentManager = getSupportFragmentManager();
    this.a = ((d)localFragmentManager.findFragmentByTag("progress_overlay"));
    if (this.a == null) {
      this.a = f.a();
    }
    this.a.a(this.f);
    if (!this.a.isAdded()) {
      this.a.show(localFragmentManager, "progress_overlay");
    }
  }
  
  private void a(String paramString)
  {
    ((ViberApplication)getApplication()).getContactManager().a(paramString, new q(this, paramString));
  }
  
  private void a(boolean paramBoolean, int paramInt, String paramString)
  {
    switch (paramInt)
    {
    }
    do
    {
      this.b.removeCallbacks(this.e);
      b();
      if (this.d != null) {
        this.d.a(paramInt, paramString);
      }
      return;
      if (paramBoolean)
      {
        a(paramString);
        return;
      }
      b(paramString);
      return;
    } while (!paramBoolean);
    a(paramString);
  }
  
  private void b()
  {
    FragmentManager localFragmentManager = getSupportFragmentManager();
    if (this.a == null) {
      this.a = ((d)localFragmentManager.findFragmentByTag("progress_overlay"));
    }
    if (this.a != null) {
      this.a.dismissAllowingStateLoss();
    }
    this.a = null;
  }
  
  private void b(String paramString)
  {
    ((ViberApplication)getApplication()).getMessagesManager().e().a(new String[] { paramString }, new r(this, paramString));
  }
  
  protected final void a(String paramString, boolean paramBoolean, v paramv)
  {
    this.d = paramv;
    this.c = false;
    if (paramBoolean) {
      a();
    }
    this.b.postDelayed(this.e, 5000L);
    hd.a((ViberApplication)getApplication(), paramString, new n(this));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = dc.a(dk.a);
    this.a = ((d)getSupportFragmentManager().findFragmentByTag("progress_overlay"));
    if (this.a != null) {
      this.a.a(this.f);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.BaseAddFriendActivity
 * JD-Core Version:    0.7.0.1
 */