package com.viber.voip.messages.ui;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.slidingmenu.lib.SlidingMenu;
import com.slidingmenu.lib.l;
import com.slidingmenu.lib.n;
import com.slidingmenu.lib.p;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationFragment;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupInfoFragment;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.conversation.ui.ConversationInfoFragment;
import com.viber.voip.messages.conversation.ui.az;
import com.viber.voip.messages.conversation.ui.ba;
import com.viber.voip.messages.conversation.ui.ci;
import com.viber.voip.messages.conversation.ui.cm;
import com.viber.voip.messages.conversation.ui.cs;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.phone.v;
import com.viber.voip.util.hu;
import java.util.Iterator;
import java.util.List;

public class ConversationActivity
  extends ViberFragmentActivity
  implements l, n, p, az, ci, cm, bl, df
{
  private g a;
  private Handler b;
  private SlidingMenu c;
  private a d;
  private h e;
  private ConversationFragment f;
  private cs g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private long m;
  private Runnable n = new e(this);
  
  private boolean a(Intent paramIntent, boolean paramBoolean)
  {
    boolean bool1;
    if (!paramIntent.getBooleanExtra("go_up", false))
    {
      bool1 = false;
      if (!paramBoolean)
      {
        boolean bool2 = paramIntent.getBooleanExtra("navigated_to_messages_on_back", false);
        bool1 = false;
        if (!bool2) {}
      }
    }
    else
    {
      if (!e(paramIntent)) {
        break label61;
      }
    }
    label61:
    for (String str = "com.viber.voip.action.PUBLIC_GROUP";; str = "com.viber.voip.action.MESSAGES")
    {
      startActivity(new Intent(str));
      bool1 = true;
      return bool1;
    }
  }
  
  private void b(Intent paramIntent)
  {
    int i1 = paramIntent.getIntExtra("popup_action_id", -1);
    if (i1 != -1)
    {
      switch (i1)
      {
      }
      for (;;)
      {
        paramIntent.removeExtra("popup_action_id");
        setIntent(paramIntent);
        return;
        this.f.B().j().b();
        continue;
        this.f.B().j().c();
        continue;
        this.f.B().j().e();
        continue;
        this.f.B().j().a();
        continue;
        this.f.B().j().d();
        continue;
        this.f.B().j().f();
        continue;
        MarketActivity.a();
        continue;
        MarketActivity.d(paramIntent.getIntExtra("package_id", 0));
        paramIntent.removeExtra("package_id");
        continue;
        MarketActivity.e(paramIntent.getIntExtra("package_id", 0));
        paramIntent.removeExtra("package_id");
        continue;
        sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP"));
      }
    }
    sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP"));
  }
  
  private void b(h paramh, boolean paramBoolean)
  {
    this.d.a(paramh, paramBoolean);
    cs localcs = this.g;
    if ((paramBoolean) && (!this.j)) {}
    for (boolean bool = true;; bool = false)
    {
      localcs.a(paramh, bool, false);
      this.m = paramh.a();
      i();
      return;
    }
  }
  
  private boolean c(Intent paramIntent)
  {
    Intent localIntent = (Intent)paramIntent.getParcelableExtra("back_intent");
    if (localIntent != null)
    {
      startActivity(localIntent);
      return true;
    }
    return false;
  }
  
  private boolean d(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      ConversationData localConversationData = (ConversationData)paramIntent.getParcelableExtra("extra_conversation_data");
      if (localConversationData != null) {
        return (localConversationData.p) || (localConversationData.q);
      }
    }
    return false;
  }
  
  private boolean e(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      ConversationData localConversationData = (ConversationData)paramIntent.getParcelableExtra("extra_conversation_data");
      if (localConversationData != null) {
        return (localConversationData.r == 2) || (localConversationData.r == 3);
      }
    }
    return false;
  }
  
  private void h()
  {
    if (!e(getIntent()))
    {
      if (this.h) {
        this.c.setMode(0);
      }
    }
    else {
      return;
    }
    this.c.setMode(2);
  }
  
  private void i()
  {
    if (this.a == null) {
      return;
    }
    if (this.m > 0L)
    {
      this.a.a(this.m);
      return;
    }
    this.a.b(this.m);
  }
  
  private void j()
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    int i1 = (int)TypedValue.applyDimension(0, localDisplayMetrics.widthPixels / 2, localDisplayMetrics);
    this.c.setTouchmodeMarginThreshold(i1);
  }
  
  private void k()
  {
    boolean bool1 = this.c.g();
    boolean bool2 = this.c.h();
    ConversationFragment localConversationFragment = this.f;
    boolean bool3;
    if (!bool1)
    {
      bool3 = true;
      localConversationFragment.setHasOptionsMenu(bool3);
      if ((this.i) || (!bool2)) {
        break label64;
      }
      this.f.b();
    }
    for (;;)
    {
      this.i = bool2;
      return;
      bool3 = false;
      break;
      label64:
      if ((this.i) && (!bool2)) {
        this.f.c();
      }
    }
  }
  
  private void l()
  {
    this.c.setShadowWidthRes(2131362103);
    this.c.setBehindOffsetRes(2131362102);
    this.c.setFadeDegree(0.35F);
    if (this.c.getMode() == 0) {
      this.c.setMode(2);
    }
    this.c.a(this, 1);
    this.c.setShadowDrawable(2130838484);
    this.c.setSecondaryShadowDrawable(2130838485);
    if (e(getIntent()))
    {
      this.c.setMenu(2130903044);
      this.c.setSecondaryMenu(2130903045);
    }
    for (this.g = ((PublicGroupInfoFragment)getSupportFragmentManager().findFragmentById(2131165330));; this.g = ((ConversationInfoFragment)getSupportFragmentManager().findFragmentById(2131165331)))
    {
      this.d = ((a)getSupportFragmentManager().findFragmentById(2131165329));
      this.d.setHasOptionsMenu(false);
      this.f.A();
      h();
      j();
      return;
      this.c.setMenu(2130903042);
      this.c.setSecondaryMenu(2130903046);
    }
  }
  
  public void a()
  {
    k();
  }
  
  public void a(int paramInt) {}
  
  public void a(long paramLong) {}
  
  public void a(h paramh, boolean paramBoolean)
  {
    this.e = paramh;
    if ((paramh != null) && (paramh.n())) {}
    for (boolean bool = true;; bool = false)
    {
      this.h = bool;
      h();
      if (this.k) {
        break;
      }
      this.b.removeCallbacks(this.n);
      this.b.postDelayed(this.n, 500L);
      return;
    }
    b(paramh, paramBoolean);
  }
  
  public void a(boolean paramBoolean, long paramLong, String paramString)
  {
    if ((paramBoolean) && (this.j)) {
      dc.a(dk.a).postDelayed(new f(this), 300L);
    }
  }
  
  public void a_(Intent paramIntent)
  {
    this.f.a(paramIntent, true, false);
    this.j = true;
  }
  
  public void b()
  {
    k();
  }
  
  public void b(int paramInt)
  {
    this.f.b(paramInt);
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean) {
      a(getIntent(), false);
    }
    finish();
  }
  
  public boolean c()
  {
    return (this.c != null) && (this.c.f());
  }
  
  public boolean c(int paramInt)
  {
    if ((this.c != null) && (this.c.getMode() != paramInt))
    {
      this.c.setMode(paramInt);
      return true;
    }
    return false;
  }
  
  public void d()
  {
    this.g.a();
  }
  
  public void d(boolean paramBoolean) {}
  
  public void d_(int paramInt)
  {
    if ((1 == paramInt) || (paramInt == 0)) {
      this.f.a(paramInt);
    }
  }
  
  public void e()
  {
    this.c.b();
  }
  
  public void e_()
  {
    this.c.c();
  }
  
  public void f()
  {
    this.l = true;
  }
  
  public void g()
  {
    this.l = false;
  }
  
  public ActionBarSherlock getActionBarSherlock()
  {
    return getSherlock();
  }
  
  public void n()
  {
    this.c.c(false);
    this.f.w();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    ViberApplication.getInstance().getFacebookManager().a(this, paramInt1, paramInt2, paramIntent);
    if (this.f != null) {
      this.f.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onBackPressed()
  {
    if (this.c.e()) {
      this.c.c();
    }
    while ((this.f != null) && (this.f.onActivityBackPressed())) {
      return;
    }
    if ((a(getIntent(), true)) || (c(getIntent())))
    {
      finish();
      return;
    }
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    j();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    requestViberOutCheck();
    super.onCreate(paramBundle);
    boolean bool = e(getIntent());
    if (bool) {}
    for (int i1 = 2130903043;; i1 = 2130903041)
    {
      setContentView(i1);
      this.h = d(getIntent());
      this.f = ((ConversationFragment)getSupportFragmentManager().findFragmentById(2131165328));
      this.b = dc.a(dk.a);
      getSupportActionBar().setHomeButtonEnabled(true);
      getSupportActionBar().setDisplayShowHomeEnabled(false);
      getSupportActionBar().setDisplayHomeAsUpEnabled(true);
      this.c = new SlidingMenu(this);
      Iterator localIterator = this.f.n().iterator();
      while (localIterator.hasNext())
      {
        View localView = (View)localIterator.next();
        this.c.a(localView);
      }
    }
    this.c.setOnOpenedListener(this);
    this.c.setOnClosedListener(this);
    this.c.setOnStartDragListener(this);
    this.f.a(getIntent(), true, false);
    this.i = this.c.h();
    this.a = ViberApplication.getInstance().getPhoneApp().a();
    b(getIntent());
    if (bool)
    {
      getSupportActionBar().setDisplayShowHomeEnabled(true);
      getSupportActionBar().setIcon(2130838233);
    }
    this.f.B().n.setOnSoftKeyboardVisibilityChangeListener(this);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.b.removeCallbacks(this.n);
    this.a = null;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.f != null) && (this.f.onActivityKeyUp(paramInt, paramKeyEvent))) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    if (((!e(paramIntent)) && (PublicGroupConversationFragment.class.isInstance(this.f))) || ((e(paramIntent)) && ((this.f instanceof ConversationFragment))))
    {
      finish();
      startActivity(paramIntent);
      return;
    }
    super.onNewIntent(paramIntent);
    this.h = d(paramIntent);
    this.c.c(false);
    h();
    setIntent(paramIntent);
    this.f.a(paramIntent, true, false);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 16908332: 
      if (this.f != null) {
        this.f.onActivityBackPressed();
      }
      c(true);
      return true;
    }
    if (this.c.h())
    {
      this.c.c();
      return true;
    }
    if ((this.l) && (this.f != null) && (this.f.t() != null))
    {
      this.f.t().c();
      this.b.postDelayed(new d(this), 500L);
      return true;
    }
    this.c.b();
    return true;
  }
  
  protected void onRestart()
  {
    super.onRestart();
    b(getIntent());
  }
  
  protected void onStart()
  {
    super.onStart();
    i();
  }
  
  protected void onStop()
  {
    super.onStop();
    i();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    this.f.c(paramBoolean);
    this.a.a(paramBoolean);
    hu.a().a(paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.ConversationActivity
 * JD-Core Version:    0.7.0.1
 */