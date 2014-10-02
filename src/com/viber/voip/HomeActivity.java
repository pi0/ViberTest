package com.viber.voip;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.preference.PreferenceScreen;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.ActionBar.Tab;
import com.actionbarsherlock.app.ActionBar.TabListener;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.a.bc;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.calls.ao;
import com.viber.voip.j.c;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.conversation.ui.az;
import com.viber.voip.messages.conversation.ui.ba;
import com.viber.voip.messages.conversation.ui.ci;
import com.viber.voip.messages.conversation.ui.cm;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.messages.i;
import com.viber.voip.messages.ui.ad;
import com.viber.voip.messages.ui.df;
import com.viber.voip.messages.ui.dt;
import com.viber.voip.rakuten.l;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.ui.bi;
import com.viber.voip.settings.ui.bv;
import com.viber.voip.settings.ui.by;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.SoundFactory;
import com.viber.voip.ui.HomeViewPager;
import com.viber.voip.user.YouFragment;
import com.viber.voip.user.YouFragment.Callbacks;
import com.viber.voip.util.bm;
import com.viber.voip.util.bo;
import com.viber.voip.util.fz;
import com.viber.voip.util.gf;
import com.viber.voip.util.gl;
import com.viber.voip.viberout.e;
import com.viber.voip.widget.MessageBar;
import com.viber.voip.widget.k;

public class HomeActivity
  extends ViberFragmentActivity
  implements ViewPager.OnPageChangeListener, ActionBar.TabListener, com.viber.voip.calls.ui.j, com.viber.voip.contacts.ui.ac, com.viber.voip.contacts.ui.bl, com.viber.voip.f.h, c, az, ci, cm, df, bi, by, YouFragment.Callbacks, gf, k
{
  private static final int i;
  final PhoneControllerDelegateAdapter a = new ac(this);
  boolean b = true;
  private int c = t();
  private com.viber.voip.util.bl d;
  private HomeViewPager e;
  private bo f;
  private Menu g;
  private fz h;
  private int j = i;
  private boolean k;
  private boolean l;
  private int m = -1;
  private Handler n = new Handler();
  private MessageBar o;
  private int p = -1;
  private dt q;
  private boolean r;
  private Runnable s = new af(this);
  private boolean t;
  private Runnable u = new ak(this);
  
  static
  {
    if (dj.d()) {}
    for (int i1 = 1;; i1 = 0)
    {
      i = i1;
      return;
    }
  }
  
  private Intent a(Bundle paramBundle)
  {
    if ((paramBundle != null) && (paramBundle.containsKey("last_intent"))) {
      return (Intent)paramBundle.getParcelable("last_intent");
    }
    return getIntent();
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramInt >= 0) {
      a(this.f.e(paramInt), paramBoolean);
    }
  }
  
  private void a(Fragment paramFragment, boolean paramBoolean)
  {
    if ((paramFragment != null) && (paramFragment.getFragmentManager() != null))
    {
      paramFragment.setMenuVisibility(paramBoolean);
      if ((!gl.b()) && (paramBoolean == true) && (getSupportActionBar().getNavigationMode() == 2)) {
        c();
      }
    }
  }
  
  private void a(Runnable paramRunnable)
  {
    dc.a(dk.h).post(paramRunnable);
  }
  
  private boolean b(String paramString)
  {
    return ("com.viber.voip.action.CONTACTS".equals(paramString)) || ("android.intent.action.CALL_BUTTON".equals(paramString)) || (("com.viber.voip.action.YOU".equals(paramString)) && (this.l)) || (("com.viber.voip.action.SETTINGS".equals(paramString)) && (this.l)) || (("com.viber.voip.action.VIEW_CONTACT".equals(paramString)) && (this.l));
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= this.c) {
      return;
    }
    runOnUiThread(new ah(this, paramInt1, paramInt2));
  }
  
  private static void c(String paramString) {}
  
  private void e(int paramInt)
  {
    c("checkContactsOnStart()");
    if (paramInt == 1)
    {
      this.t = true;
      c("checkContactsOnStart() Scheduling CONTACTS_SHOWN");
      this.n.removeCallbacks(this.u);
      this.n.post(this.u);
      return;
    }
    this.t = false;
  }
  
  private void e(Intent paramIntent)
  {
    int i1 = paramIntent.getIntExtra("popup_action_id", -1);
    if (i1 != -1)
    {
      ConversationFragment localConversationFragment = (ConversationFragment)getSupportFragmentManager().findFragmentById(2131165328);
      if (localConversationFragment != null) {
        switch (i1)
        {
        }
      }
      for (;;)
      {
        paramIntent.removeExtra("popup_action_id");
        setIntent(paramIntent);
        return;
        localConversationFragment.B().j().b();
        continue;
        localConversationFragment.B().j().c();
        continue;
        localConversationFragment.B().j().e();
        continue;
        localConversationFragment.B().j().a();
        continue;
        localConversationFragment.B().j().d();
        continue;
        localConversationFragment.B().j().f();
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
  
  private void f(int paramInt)
  {
    c("checkContactsOnTabChanged()");
    if ((paramInt == 1) && (!this.t))
    {
      this.t = true;
      c("checkContactsOnTabChanged() scheduling CONTACTS_SHOWN");
      this.n.removeCallbacks(this.u);
      this.n.post(this.u);
    }
  }
  
  private void f(boolean paramBoolean)
  {
    int[] arrayOfInt1 = { 2131493554, 2131493553, 2131493552, 2131494509 };
    int[] arrayOfInt2 = { 2130837690, 2130837689, 2130837691, 2130837692 };
    Resources localResources1 = getResources();
    String[] arrayOfString = new String[4];
    arrayOfString[0] = localResources1.getString(2131493554);
    arrayOfString[1] = localResources1.getString(2131493553);
    arrayOfString[2] = localResources1.getString(2131493552);
    arrayOfString[3] = localResources1.getString(2131493555);
    int i5;
    int i1;
    label182:
    LayoutInflater localLayoutInflater;
    int i2;
    label202:
    ActionBar.Tab localTab;
    if (this.l)
    {
      Resources localResources2 = getResources();
      int i4 = localResources2.getDisplayMetrics().widthPixels;
      if (gl.e(this))
      {
        i5 = gl.h();
        int i6 = i4 - i5;
        i1 = (-1 + ((int)(gl.a(localResources2) * i6) + this.c)) / this.c;
        if (paramBoolean) {
          getSupportActionBar().removeAllTabs();
        }
        localLayoutInflater = LayoutInflater.from(this);
        i2 = 0;
        if (i2 >= this.c) {
          return;
        }
        localTab = getSupportActionBar().newTab();
        localTab.setContentDescription(arrayOfInt1[i2]);
        localTab.setTabListener(this);
        if (i2 != 3) {
          break label339;
        }
      }
    }
    label339:
    for (int i3 = 2130903097;; i3 = 2130903096)
    {
      FrameLayout localFrameLayout = (FrameLayout)localLayoutInflater.inflate(i3, null);
      localFrameLayout.setContentDescription(arrayOfString[i2]);
      localFrameLayout.setLayoutParams(new RelativeLayout.LayoutParams(i1, -1));
      ((ImageView)localFrameLayout.findViewById(2131165398)).setImageResource(arrayOfInt2[i2]);
      localTab.setCustomView(localFrameLayout);
      getSupportActionBar().addTab(localTab);
      i2++;
      break label202;
      i5 = 0;
      break;
      i1 = -1;
      break label182;
    }
  }
  
  private boolean f(Intent paramIntent)
  {
    if ((0x100000 & paramIntent.getFlags()) != 0) {}
    while (!"com.viber.voip.action.ACTION_CLOSE_HOME".equals(paramIntent.getAction())) {
      return false;
    }
    finish();
    return true;
  }
  
  private void g(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    int i1;
    if (i(paramIntent))
    {
      this.j = i;
      paramIntent.removeExtra("fresh_start");
      i1 = -1;
    }
    for (;;)
    {
      if (i1 >= this.c) {
        i1 = i;
      }
      if (i1 != -1)
      {
        if ((this.l) && (this.j == 1) && (i1 == 0) && (getSupportActionBar().getNavigationMode() != 2)) {
          i().a(true);
        }
        if ((this.j == 3) && (this.j != i1)) {
          this.h.a(false);
        }
        this.j = i1;
      }
      if (getSupportActionBar().getNavigationMode() == 2)
      {
        this.m = this.j;
        getSupportActionBar().setSelectedNavigationItem(this.j);
        h(paramIntent);
      }
      for (;;)
      {
        e(this.j);
        return;
        if (("com.viber.voip.action.CALL_LOG".equals(str)) || ("com.viber.voip.action.DIALER".equals(str)) || ("android.intent.action.DIAL".equals(str)))
        {
          i1 = 2;
          break;
        }
        if (b(str))
        {
          i1 = 1;
          break;
        }
        if (("com.viber.voip.action.MESSAGES".equals(str)) || (("com.viber.voip.action.CONVERSATION".equals(str)) && (this.l)))
        {
          i1 = 0;
          break;
        }
        if (!"com.viber.voip.action.PUBLIC_GROUP".equals(str)) {
          break label278;
        }
        i1 = 3;
        break;
        if (this.l)
        {
          this.f.g(this.j);
          h(paramIntent);
        }
      }
      label278:
      i1 = -1;
    }
  }
  
  private void h(Intent paramIntent)
  {
    switch (this.j)
    {
    }
    do
    {
      do
      {
        return;
      } while (!paramIntent.hasExtra("filter"));
      int i1 = paramIntent.getIntExtra("filter", -1);
      this.f.h(i1);
      paramIntent.removeExtra("filter");
      return;
      if (paramIntent.hasExtra("open_keypad_number"))
      {
        this.f.h(paramIntent);
        return;
      }
    } while ((paramIntent.getData() == null) || (paramIntent.getData().getScheme() == null) || (!paramIntent.getData().getScheme().equals("tel")));
    paramIntent.putExtra("open_keypad_number", paramIntent.getData().getSchemeSpecificPart());
    this.f.h(paramIntent);
  }
  
  private boolean i(Intent paramIntent)
  {
    return (paramIntent.hasExtra("fresh_start")) && (paramIntent.getExtras().getBoolean("fresh_start"));
  }
  
  private void o()
  {
    int i1 = t();
    if (i1 != this.e.getAdapter().getCount())
    {
      this.c = i1;
      this.e.getAdapter().notifyDataSetChanged();
      f(true);
    }
  }
  
  private void p()
  {
    a(new ag(this));
  }
  
  private void q()
  {
    int i1 = 1;
    Fragment localFragment1 = this.f.e(0);
    Fragment localFragment2 = this.f.e(i1);
    Fragment localFragment3 = this.f.e(2);
    Fragment localFragment4 = this.f.e(3);
    if (this.j == 0)
    {
      int i3 = i1;
      a(localFragment1, i3);
      if (this.j != i1) {
        break label116;
      }
      int i5 = i1;
      label68:
      a(localFragment2, i5);
      if (this.j != 2) {
        break label122;
      }
      int i7 = i1;
      label86:
      a(localFragment3, i7);
      if (this.j != 3) {
        break label128;
      }
    }
    for (;;)
    {
      a(localFragment4, i1);
      return;
      int i4 = 0;
      break;
      label116:
      int i6 = 0;
      break label68;
      label122:
      int i8 = 0;
      break label86;
      label128:
      int i2 = 0;
    }
  }
  
  private boolean r()
  {
    return getIntent().getBooleanExtra("system_conversation", false);
  }
  
  private boolean s()
  {
    Intent localIntent = getIntent();
    boolean bool = localIntent.getBooleanExtra("invalidate_options_menu", false);
    if (bool) {
      localIntent.removeExtra("invalidate_options_menu");
    }
    return bool;
  }
  
  private static int t()
  {
    if (com.viber.voip.j.a.a().e()) {
      return 4;
    }
    return 3;
  }
  
  public void a(int paramInt)
  {
    if (this.l) {
      this.f.f(paramInt);
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    c(paramInt1, paramInt2);
  }
  
  public void a(int paramInt, Fragment paramFragment)
  {
    this.f.a(paramInt, paramFragment);
  }
  
  public void a(long paramLong) {}
  
  public void a(Parcelable paramParcelable)
  {
    c("You clicked message #" + paramParcelable);
  }
  
  public void a(PreferenceScreen paramPreferenceScreen, int paramInt)
  {
    c("onPreferenceAttached root:" + paramPreferenceScreen + ", xmlId:" + paramInt);
  }
  
  public void a(com.viber.voip.messages.conversation.h paramh, boolean paramBoolean)
  {
    this.f.a(paramh, paramBoolean);
  }
  
  public void a(boolean paramBoolean)
  {
    this.d.b(paramBoolean);
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      b(bool);
      return;
    }
  }
  
  public void a(boolean paramBoolean, long paramLong, String paramString)
  {
    if ((paramBoolean) && (this.r)) {
      this.n.postDelayed(new aj(this), 300L);
    }
  }
  
  public void a(boolean paramBoolean, Intent paramIntent)
  {
    if (!this.l)
    {
      startActivity(paramIntent);
      return;
    }
    this.f.e(paramIntent);
  }
  
  public void a_(Intent paramIntent)
  {
    if (!this.l)
    {
      startActivity(paramIntent);
      return;
    }
    this.f.b(paramIntent);
  }
  
  public int b()
  {
    if ((this.e == null) || (this.e.getAdapter() == null)) {
      return this.j;
    }
    return this.e.getCurrentItem();
  }
  
  public void b(int paramInt)
  {
    this.f.b(paramInt);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    c("onSettingsItemSelected position:" + paramInt1);
    this.f.a(paramInt1, paramInt2);
  }
  
  public void b(Intent paramIntent)
  {
    if (!this.l)
    {
      startActivity(paramIntent);
      return;
    }
    this.f.a(paramIntent);
  }
  
  public void b(boolean paramBoolean)
  {
    if (this.e != null) {
      this.e.setPagingEnabled(paramBoolean);
    }
  }
  
  public void c()
  {
    if (this.e != null)
    {
      this.e.post(new ai(this));
      return;
    }
    h(this);
  }
  
  public void c(Intent paramIntent)
  {
    if (!this.l)
    {
      startActivity(paramIntent);
      return;
    }
    this.f.c(paramIntent);
  }
  
  public void c(boolean paramBoolean)
  {
    this.f.c(paramBoolean);
  }
  
  public boolean c(int paramInt)
  {
    return this.f.c(paramInt);
  }
  
  public void d()
  {
    this.f.d();
  }
  
  public void d(int paramInt)
  {
    runOnUiThread(new al(this));
  }
  
  public void d(Intent paramIntent)
  {
    if (this.l) {
      this.f.d(paramIntent);
    }
  }
  
  public void d(boolean paramBoolean) {}
  
  public void e() {}
  
  public void e(boolean paramBoolean)
  {
    for (int i1 = 0; i1 < this.c; i1++)
    {
      Fragment localFragment = this.f.e(i1);
      if ((localFragment instanceof com.viber.voip.f.h)) {
        ((com.viber.voip.f.h)localFragment).e(paramBoolean);
      }
    }
  }
  
  public void e_()
  {
    h();
  }
  
  public int f()
  {
    return this.m;
  }
  
  public void g()
  {
    if (this.l) {
      this.r = true;
    }
  }
  
  public void h()
  {
    if (this.l) {
      this.f.e();
    }
  }
  
  public com.viber.voip.util.bl i()
  {
    return this.d;
  }
  
  public void j()
  {
    if (this.l) {
      this.f.j();
    }
  }
  
  public boolean k()
  {
    if (this.l) {
      return this.f.k();
    }
    return false;
  }
  
  public boolean l()
  {
    return this.f.h();
  }
  
  public void m()
  {
    this.f.i();
  }
  
  public void n()
  {
    this.f.l();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ViberApplication.log(3, "HomeActivity", "handleActivityResult requestCode:" + paramInt1 + ",resultCode:" + paramInt2);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      if (this.l) {
        ViberApplication.getInstance().getFacebookManager().a(this, paramInt1, paramInt2, paramIntent);
      }
      Fragment localFragment = getSupportFragmentManager().findFragmentById(2131165350);
      if ((localFragment != null) && ((localFragment instanceof bv))) {
        localFragment.onActivityResult(paramInt1, paramInt2, paramIntent);
      }
      return;
      if (paramIntent.getIntExtra("action", 0) != 0)
      {
        YouFragment localYouFragment = (YouFragment)getSupportFragmentManager().findFragmentById(2131165344);
        switch (paramIntent.getIntExtra("action", 0))
        {
        default: 
          break;
        case 100: 
          localYouFragment.onFacebookDetailsRequested();
          break;
        case 101: 
          localYouFragment.showDialog(10);
        }
      }
    }
  }
  
  public void onAttachFragment(Fragment paramFragment)
  {
    this.f.a(paramFragment, this.j);
    if ((!ViberApplication.isTablet()) && (!gl.b())) {
      q();
    }
  }
  
  public void onBackPressed()
  {
    if (this.e != null)
    {
      localFragment = this.f.e(this.e.getCurrentItem());
      if ((!(localFragment instanceof d)) || (!((d)localFragment).onActivityBackPressed())) {}
    }
    else
    {
      while ((ViberApplication.isTablet()) && (this.f.g()))
      {
        Fragment localFragment;
        return;
      }
    }
    super.onBackPressed();
  }
  
  @SuppressLint({"InlinedApi"})
  protected void onCreate(Bundle paramBundle)
  {
    c("onCreate");
    getSherlock().setUiOptions(1);
    this.d = new com.viber.voip.util.bl(this);
    this.f = new bo();
    requestViberOutCheck();
    super.onCreate(paramBundle);
    if (f(getIntent())) {
      return;
    }
    setDefaultKeyMode(1);
    setDefaultKeyMode(2);
    setContentView(2130903048);
    this.q = ((dt)findViewById(2131165334));
    c("Root view: " + this.q);
    this.h = fz.a();
    this.j = this.h.a(-1, this.c, i);
    c("onCreate pager");
    this.e = ((HomeViewPager)findViewById(2131165335));
    this.l = ViberApplication.isTablet();
    Intent localIntent = a(paramBundle);
    if (!this.l)
    {
      this.e.setOnPageChangeListener(this);
      this.e.setOffscreenPageLimit(this.c);
      this.e.setAdapter(new an(this, getSupportFragmentManager()));
      ViberApplication.getInstance().getPromoHandler().a(this, (FrameLayout)((View)this.q).getParent(), this);
    }
    for (;;)
    {
      f(false);
      ViberApplication.getInstance().getRecentLetterManager().a();
      ViberApplication.getInstance().getFacebookManager().b(this, null, true);
      onNewIntent(localIntent);
      if (paramBundle == null) {
        ViberApplication.getInstance().getMessagesManager().a().c();
      }
      this.o = new MessageBar(this);
      this.o.a(this);
      e.c().f().b();
      ViberApplication.getInstance().getContactManager().b(false);
      e(getIntent());
      com.viber.voip.j.a.a().a(this);
      c("onCreate stop");
      return;
      this.f.a(this, r());
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.g = paramMenu;
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    com.viber.voip.j.a.a().b(this);
    ViberApplication.getInstance().getPhoneController(false).removeDelegate(this.a);
    this.n.removeCallbacks(this.s);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.e != null)
    {
      Fragment localFragment = this.f.e(this.e.getCurrentItem());
      if (((localFragment instanceof d)) && (((d)localFragment).onActivityKeyUp(paramInt, paramKeyEvent))) {
        return true;
      }
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    c("onNewIntent ACTION:" + paramIntent.getAction());
    super.onNewIntent(paramIntent);
    if (f(paramIntent)) {
      return;
    }
    bm.a(this, paramIntent);
    g(paramIntent);
    paramIntent.setAction("com.viber.voip.action.DEFAULT");
    setIntent(paramIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 16908332: 
      this.f.g();
      return true;
    }
    this.f.f();
    return true;
  }
  
  public void onPageScrollStateChanged(int paramInt)
  {
    boolean bool;
    if (paramInt == 0)
    {
      bool = true;
      this.k = bool;
      if (this.g != null) {
        this.g.setGroupEnabled(0, this.k);
      }
      if ((!gl.b()) && (!isFinishing())) {
        switch (paramInt)
        {
        }
      }
    }
    int i1;
    do
    {
      return;
      bool = false;
      break;
      i1 = this.e.getCurrentItem();
    } while ((this.m == i1) && (!s()));
    a(this.m, false);
    a(i1, true);
    this.m = i1;
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt)
  {
    if ((getSupportActionBar().getSelectedNavigationIndex() != paramInt) && (getSupportActionBar().getNavigationMode() == 2)) {
      getSupportActionBar().setSelectedNavigationItem(paramInt);
    }
    if (!this.l) {
      this.j = paramInt;
    }
    int i1 = 0;
    if (i1 < this.c)
    {
      Fragment localFragment = this.f.e(i1);
      d locald;
      if ((localFragment != null) && ((localFragment instanceof d)))
      {
        locald = (d)localFragment;
        if (paramInt != i1) {
          break label101;
        }
      }
      label101:
      for (boolean bool = true;; bool = false)
      {
        locald.onFragmentVisibilityChanged(bool);
        i1++;
        break;
      }
    }
    f(paramInt);
  }
  
  protected void onPause()
  {
    super.onPause();
    ViberApplication.getInstance().getAvailableScreenWidthMeasurer().b(this.q);
  }
  
  protected void onRestart()
  {
    super.onRestart();
    e(getIntent());
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    this.o.a(paramBundle.getBundle("com.viber.voip.HomeActivity.messageBar"));
  }
  
  protected void onResume()
  {
    c("onResume ACTION: " + getIntent().getAction() + ", DATA: " + getIntent().getData() + ", BUNDLE: " + getIntent().getExtras());
    ViberApplication.getInstance().getAvailableScreenWidthMeasurer().a(this.q);
    this.f.g(getIntent());
    sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP"));
    super.onResume();
    l.a().a(this);
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    SparseArray localSparseArray = new SparseArray();
    if (this.e != null)
    {
      Fragment localFragment = this.f.e(this.e.getCurrentItem());
      if ((localFragment instanceof d)) {
        localSparseArray.put(localFragment.getClass().hashCode(), ((d)localFragment).onRetainCustomNonConfigurationInstance());
      }
    }
    return localSparseArray;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    Intent localIntent1 = new Intent("com.viber.voip.action.DEFAULT");
    Intent localIntent2;
    if (this.l)
    {
      localIntent2 = this.f.m();
      if (localIntent2 == null) {}
    }
    for (;;)
    {
      paramBundle.putParcelable("last_intent", localIntent2);
      paramBundle.putBundle("com.viber.voip.HomeActivity.messageBar", this.o.c());
      super.onSaveInstanceState(paramBundle);
      return;
      localIntent2 = localIntent1;
    }
  }
  
  public boolean onSearchRequested()
  {
    if ((this.e != null) && (this.k))
    {
      Fragment localFragment = this.f.e(this.e.getCurrentItem());
      if (((localFragment instanceof d)) && (((d)localFragment).onActivitySearchRequested())) {
        return true;
      }
    }
    return super.onSearchRequested();
  }
  
  protected void onStart()
  {
    super.onStart();
    if (!ViberApplication.isActivated())
    {
      Intent localIntent = new Intent();
      localIntent.setAction("android.intent.action.MAIN");
      localIntent.addCategory("android.intent.category.LAUNCHER");
      localIntent.setClass(this, WelcomeActivity.class);
      startActivity(localIntent);
      finish();
    }
    do
    {
      return;
      this.h.a(this);
      p();
      if (!gl.b())
      {
        int i1 = this.j;
        int i2 = 0;
        if (i2 < this.c)
        {
          if (i2 == i1) {}
          for (boolean bool = true;; bool = false)
          {
            a(i2, bool);
            i2++;
            break;
          }
        }
      }
      ViberApplication.getInstance().getPhoneController(false).registerDelegate(this.a);
    } while (!this.l);
    this.f.e(false);
  }
  
  protected void onStop()
  {
    super.onStop();
    bc.a().b(this);
    if (this.l) {
      this.f.e(true);
    }
    this.h.a(this.j);
    this.h.b(this);
  }
  
  public void onTabReselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction)
  {
    Fragment localFragment = this.f.e(this.j);
    if ((localFragment != null) && ((localFragment instanceof d))) {
      ((d)localFragment).onTabReselected();
    }
  }
  
  public void onTabSelected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction)
  {
    int i1 = paramTab.getPosition();
    this.d.a(i1);
    if ((this.b) && (this.j != 0))
    {
      Log.e("HomeActivity", "callback onTabSelected was ignored!");
      this.b = false;
    }
    label192:
    label208:
    for (;;)
    {
      return;
      this.b = false;
      this.f.d(i1);
      if ((this.j == 3) && (this.j != i1)) {
        this.h.a(false);
      }
      if ((this.j == 1) && (this.j != i1)) {
        this.h.k();
      }
      if (this.e != null)
      {
        if (this.e.getCurrentItem() != i1) {
          this.e.setCurrentItem(i1, true);
        }
        if (this.l) {
          this.j = i1;
        }
        if (SoundFactory.isInitialized())
        {
          if (i1 != 2) {
            break label192;
          }
          setVolumeControlStream(ViberApplication.getInstance().getSoundService().stream_Dtmf());
        }
      }
      for (;;)
      {
        if (!this.l) {
          break label208;
        }
        this.m = i1;
        return;
        this.f.g(i1);
        break;
        setVolumeControlStream(ViberApplication.getInstance().getSoundService().stream_Ring());
      }
    }
  }
  
  public void onTabUnselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction) {}
  
  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    if (this.e != null)
    {
      Fragment localFragment = this.f.e(this.e.getCurrentItem());
      if (((localFragment instanceof d)) && (((d)localFragment).onActivityTrackballEvent(paramMotionEvent))) {
        return true;
      }
    }
    return super.onTrackballEvent(paramMotionEvent);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (this.l) {
      this.f.a(paramBoolean);
    }
  }
  
  public void onYouItemSelected(Intent paramIntent)
  {
    if (!this.l)
    {
      startActivity(paramIntent);
      return;
    }
    this.f.f(paramIntent);
  }
  
  public void supportInvalidateOptionsMenu()
  {
    if (gl.b()) {
      c();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.HomeActivity
 * JD-Core Version:    0.7.0.1
 */