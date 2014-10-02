package com.viber.voip.util;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.RelativeLayout.LayoutParams;
import com.actionbarsherlock.app.ActionBar;
import com.slidingmenu.lib.SlidingMenu;
import com.slidingmenu.lib.n;
import com.slidingmenu.lib.p;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.ad;
import com.viber.voip.a.ae;
import com.viber.voip.a.bc;
import com.viber.voip.a.c;
import com.viber.voip.a.m;
import com.viber.voip.calls.ui.PhoneFragment;
import com.viber.voip.contacts.ui.ContactDetailsFragment;
import com.viber.voip.contacts.ui.ContactsFragment;
import com.viber.voip.d;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationFragment;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupInfoFragment;
import com.viber.voip.messages.conversation.publicgroup.bf;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.conversation.ui.ConversationInfoFragment;
import com.viber.voip.messages.conversation.ui.az;
import com.viber.voip.messages.conversation.ui.cm;
import com.viber.voip.messages.ui.MessagesFragment;
import com.viber.voip.messages.ui.MessagesFragmentModeManager;
import com.viber.voip.messages.ui.g;
import com.viber.voip.phone.v;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.ui.SettingsHeadersFragment;
import com.viber.voip.settings.ui.ca;
import com.viber.voip.user.YouFragment;
import com.viber.voip.user.YouFragment.PreferenceItem;
import java.util.HashMap;
import java.util.Map;

public class bo
  implements View.OnClickListener, com.slidingmenu.lib.l, n, p, az, cm
{
  private static boolean z;
  private boolean A;
  private int B;
  private int C = -1;
  private int D = -1;
  private long E;
  private View F;
  private int G;
  private bt H;
  private SlidingMenu a;
  private SlidingMenu b;
  private FrameLayout c;
  private View d;
  private View e;
  private View f;
  private View g;
  private int h = -1;
  private int i = -1;
  private String j = null;
  private MessagesFragment k;
  private ContactsFragment l;
  private PhoneFragment m;
  private bf n;
  private ConversationFragment o;
  private ConversationInfoFragment p;
  private ContactDetailsFragment q;
  private YouFragment r;
  private SettingsHeadersFragment s;
  private Fragment t;
  private PublicGroupConversationFragment u;
  private PublicGroupInfoFragment v;
  private g w = ViberApplication.getInstance().getPhoneApp().a();
  private HomeActivity x;
  private Map<Integer, Intent> y = new HashMap();
  
  private void a(Fragment paramFragment)
  {
    if (paramFragment == null) {
      return;
    }
    FragmentTransaction localFragmentTransaction = this.x.getSupportFragmentManager().beginTransaction();
    if (this.t != null) {
      localFragmentTransaction.remove(this.t);
    }
    localFragmentTransaction.replace(2131165350, paramFragment);
    localFragmentTransaction.commitAllowingStateLoss();
    this.t = paramFragment;
  }
  
  private static void a(Fragment paramFragment, boolean paramBoolean)
  {
    if ((paramFragment instanceof d)) {
      ((d)paramFragment).onFragmentVisibilityChanged(paramBoolean);
    }
  }
  
  protected static void a(FragmentTransaction paramFragmentTransaction, Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null) {}
    do
    {
      return;
      if ((paramBoolean) && (paramFragment.isHidden()))
      {
        paramFragmentTransaction.show(paramFragment);
        a(paramFragment, true);
        return;
      }
    } while ((paramBoolean) || (paramFragment.isHidden()));
    paramFragmentTransaction.hide(paramFragment);
    a(paramFragment, false);
  }
  
  private static void a(String paramString)
  {
    ViberApplication.log(3, "HomeActivity", paramString);
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt)
  {
    boolean bool1 = this.m.b();
    boolean bool2 = this.k.b();
    if ((this.n != null) && (this.n.b())) {}
    for (int i1 = 1;; i1 = 0) {
      switch (paramInt)
      {
      default: 
        return;
      }
    }
    this.c.setVisibility(8);
    this.b.setVisibility(8);
    if (this.A)
    {
      SlidingMenu localSlidingMenu2 = this.a;
      int i9;
      View localView5;
      int i10;
      if (i1 != 0)
      {
        i9 = 0;
        localSlidingMenu2.setVisibility(i9);
        localView5 = this.e;
        i10 = 0;
        if (i1 == 0) {
          break label154;
        }
      }
      for (;;)
      {
        localView5.setVisibility(i10);
        return;
        i9 = 8;
        break;
        label154:
        i10 = 8;
      }
    }
    this.a.setVisibility(0);
    this.e.setVisibility(8);
    return;
    this.c.setVisibility(8);
    this.b.setVisibility(8);
    if (this.A)
    {
      SlidingMenu localSlidingMenu1 = this.a;
      int i7;
      View localView4;
      int i8;
      if (bool2)
      {
        i7 = 0;
        localSlidingMenu1.setVisibility(i7);
        localView4 = this.e;
        i8 = 0;
        if (!bool2) {
          break label254;
        }
      }
      for (;;)
      {
        localView4.setVisibility(i8);
        return;
        i7 = 8;
        break;
        label254:
        i8 = 8;
      }
    }
    this.a.setVisibility(0);
    if ((this.a.g()) && (paramBoolean1)) {
      this.a.d();
    }
    this.e.setVisibility(8);
    return;
    this.a.setVisibility(8);
    this.b.setVisibility(0);
    FrameLayout localFrameLayout2 = this.c;
    int i5;
    View localView3;
    if (paramBoolean2)
    {
      i5 = 0;
      localFrameLayout2.setVisibility(i5);
      localView3 = this.d;
      if (!paramBoolean2) {
        break label386;
      }
    }
    label386:
    for (int i6 = 0;; i6 = 8)
    {
      localView3.setVisibility(i6);
      this.e.setVisibility(8);
      this.g.setVisibility(0);
      p();
      return;
      i5 = 8;
      break;
    }
    this.a.setVisibility(8);
    this.b.setVisibility(0);
    FrameLayout localFrameLayout1 = this.c;
    int i2;
    int i3;
    label444:
    View localView2;
    int i4;
    if (paramBoolean3)
    {
      i2 = 0;
      localFrameLayout1.setVisibility(i2);
      View localView1 = this.d;
      if (!bool1) {
        break label492;
      }
      i3 = 0;
      localView1.setVisibility(i3);
      this.e.setVisibility(8);
      localView2 = this.g;
      i4 = 0;
      if (!paramBoolean3) {
        break label499;
      }
    }
    for (;;)
    {
      localView2.setVisibility(i4);
      p();
      return;
      i2 = 8;
      break;
      label492:
      i3 = 8;
      break label444;
      label499:
      i4 = 8;
    }
  }
  
  private void f(boolean paramBoolean)
  {
    View localView;
    if (this.F != null)
    {
      localView = this.F;
      if (!paramBoolean) {
        break label24;
      }
    }
    label24:
    for (int i1 = 0;; i1 = 8)
    {
      localView.setVisibility(i1);
      return;
    }
  }
  
  private boolean i(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      ConversationData localConversationData = (ConversationData)paramIntent.getParcelableExtra("extra_conversation_data");
      if (localConversationData != null) {
        return localConversationData.r == 2;
      }
    }
    return false;
  }
  
  private void j(Intent paramIntent)
  {
    if (paramIntent.hasExtra("selected_item"))
    {
      int i1 = paramIntent.getIntExtra("selected_item", -1);
      this.s.a(i1);
      this.s.b();
      a(0, i1);
    }
  }
  
  private int o()
  {
    int i1 = this.x.getSupportActionBar().getSelectedNavigationIndex();
    if (i1 == -1) {
      i1 = this.C;
    }
    while (i1 != -2) {
      return i1;
    }
    return this.x.f();
  }
  
  private void p()
  {
    if (!this.b.g())
    {
      this.b.setBehindWidth(this.G);
      this.b.c(false);
      this.b.postDelayed(new bq(this), 20L);
    }
  }
  
  private void q()
  {
    this.a.a();
  }
  
  private void r()
  {
    boolean bool1 = this.a.g();
    boolean bool2 = this.b.g();
    boolean bool3 = this.b.h();
    if (bool1) {
      bc.a().a(a.n.f());
    }
    boolean bool4 = this.a.h();
    if ((!this.A) && (this.C != 1))
    {
      if (bool1)
      {
        this.k.setHasOptionsMenu(true);
        this.o.setHasOptionsMenu(false);
        if (this.u != null) {
          this.u.setHasOptionsMenu(false);
        }
        this.x.i().a(true);
      }
    }
    else
    {
      if (this.C == 1)
      {
        a("onSlidingMenuUpdated isLeftSettingsMenuShowing:" + bool2 + ",isRightSettingsMenuShowing:" + bool3);
        if ((bool2) || (this.x.getSupportActionBar().getNavigationMode() == 2))
        {
          bl localbl = this.x.i();
          boolean bool5 = false;
          if (!bool2) {
            bool5 = true;
          }
          localbl.b(bool2, bool5);
        }
        this.l.setHasOptionsMenu(bool2);
        this.q.setHasOptionsMenu(bool2);
        if ((bool2) || (bool3)) {
          break label470;
        }
        if (this.j == null) {
          this.j = gl.a(this.x).toString();
        }
        this.x.getSupportActionBar().setTitle(2131493848);
        this.x.getSupportActionBar().setIcon(2130838482);
        this.s.getListView().clearChoices();
        this.s.getListView().requestLayout();
        Intent localIntent = (Intent)this.y.get(Integer.valueOf(1));
        this.i = -1;
        if (localIntent != null) {
          localIntent.removeExtra("selected_item");
        }
        this.r.updateSettingsItem(true);
      }
      label330:
      if (this.C != 0) {
        break label513;
      }
      if ((z) || (!bool4)) {
        break label492;
      }
      this.o.b();
    }
    label513:
    for (;;)
    {
      z = bool4;
      return;
      if ((this.C != 0) && (this.C != 3)) {
        break;
      }
      this.k.setHasOptionsMenu(false);
      this.o.setHasOptionsMenu(true);
      if (this.u != null) {
        this.u.setHasOptionsMenu(true);
      }
      MessagesFragmentModeManager localMessagesFragmentModeManager = this.k.o();
      if (localMessagesFragmentModeManager != null)
      {
        if (!localMessagesFragmentModeManager.l()) {
          break label453;
        }
        localMessagesFragmentModeManager.n();
        localMessagesFragmentModeManager.c();
      }
      for (;;)
      {
        this.x.i().a(false);
        break;
        label453:
        if (localMessagesFragmentModeManager.k()) {
          localMessagesFragmentModeManager.b(true);
        }
      }
      label470:
      if (bool3)
      {
        s();
        t();
        break label330;
      }
      if (!bool1) {
        break label330;
      }
      break label330;
      label492:
      if ((z) && (!bool4))
      {
        this.o.c();
        continue;
        if ((this.C == 3) && (this.u != null)) {
          if ((!z) && (bool4)) {
            this.u.b();
          } else if ((z) && (!bool4)) {
            this.u.c();
          }
        }
      }
    }
  }
  
  private void s()
  {
    this.b.setBehindOffset(this.G - this.B);
  }
  
  private void t()
  {
    if (this.h == -1) {
      this.h = ((int)this.s.getListView().getItemIdAtPosition(this.s.getListView().getCheckedItemPosition()));
    }
    if ((this.i != this.h) || ((this.b.h()) && (TextUtils.isEmpty(this.x.getSupportActionBar().getTitle()))))
    {
      this.i = this.h;
      YouFragment.PreferenceItem localPreferenceItem = ca.a(this.h);
      a("updateSelectedSettingsTitle mSelectedSettingsItemId:" + this.h + ",preferenceItem:" + localPreferenceItem);
      if (localPreferenceItem != null)
      {
        this.x.getSupportActionBar().setTitle(localPreferenceItem.title);
        this.x.getSupportActionBar().setIcon(localPreferenceItem.icon);
        a(this.s.a());
      }
    }
  }
  
  private void u()
  {
    View localView = this.x.getCurrentFocus();
    if (localView != null) {
      ((InputMethodManager)this.x.getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 0);
    }
  }
  
  private void v()
  {
    if ((dj.d()) && (ViberApplication.preferences().b("show_carlos_messages", true)))
    {
      this.F = LayoutInflater.from(this.x).inflate(2130903148, null);
      this.c.addView(this.F, new RelativeLayout.LayoutParams(-1, -1));
    }
  }
  
  public void a()
  {
    r();
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    Intent localIntent = (Intent)this.y.get(Integer.valueOf(1));
    if (localIntent != null) {
      localIntent.putExtra("selected_item", paramInt2);
    }
    s();
    this.b.postDelayed(new bs(this), 200L);
    this.h = paramInt2;
    t();
  }
  
  public void a(int paramInt, Fragment paramFragment)
  {
    int i1 = 0;
    if (paramInt == 0)
    {
      boolean bool1 = paramFragment instanceof MessagesFragment;
      i1 = 0;
      if (!bool1) {
        break label46;
      }
    }
    for (;;)
    {
      this.y.remove(Integer.valueOf(i1));
      if (this.C == i1) {
        c();
      }
      return;
      label46:
      if ((paramFragment instanceof ContactsFragment))
      {
        i1 = 1;
      }
      else if ((paramFragment instanceof PhoneFragment))
      {
        i1 = 2;
      }
      else
      {
        boolean bool2 = paramFragment instanceof bf;
        i1 = 0;
        if (bool2) {
          i1 = 3;
        }
      }
    }
  }
  
  public void a(Intent paramIntent)
  {
    this.y.put(Integer.valueOf(2), paramIntent);
    if (2 == o()) {
      c();
    }
  }
  
  public void a(Fragment paramFragment, int paramInt)
  {
    if ((paramFragment instanceof MessagesFragment)) {
      this.k = ((MessagesFragment)paramFragment);
    }
    do
    {
      return;
      if ((paramFragment instanceof ContactsFragment))
      {
        this.l = ((ContactsFragment)paramFragment);
        return;
      }
      if ((paramFragment instanceof PhoneFragment))
      {
        this.m = ((PhoneFragment)paramFragment);
        return;
      }
    } while (!(paramFragment instanceof bf));
    this.n = ((bf)paramFragment);
  }
  
  public void a(HomeActivity paramHomeActivity, boolean paramBoolean)
  {
    int i1 = 2;
    this.x = paramHomeActivity;
    this.A = gl.e(paramHomeActivity);
    int i2;
    label113:
    int i4;
    label449:
    float f4;
    label485:
    int i8;
    label583:
    View localView;
    if (this.A)
    {
      i2 = gl.h();
      this.B = i2;
      this.x.i().a(this);
      this.a = ((SlidingMenu)paramHomeActivity.findViewById(2131165337));
      this.a.setContent(2130903093);
      this.a.setFadeDegree(0.35F);
      if (!this.A) {
        break label866;
      }
      this.a.setMode(1);
      this.a.setMenu(2130903094);
      this.a.setShadowDrawable(2130838485);
      this.b = ((SlidingMenu)paramHomeActivity.findViewById(2131165338));
      this.b.setShadowWidthRes(2131362103);
      this.b.setContent(2130903051);
      this.b.setFadeDegree(0.35F);
      this.b.setMode(i1);
      this.b.setShadowDrawable(2130838484);
      this.b.setMenu(2130903052);
      this.b.setTouchModeBehind(i1);
      this.b.setTouchModeAbove(i1);
      this.b.setSecondaryShadowDrawable(2130838485);
      this.b.setSecondaryMenu(2130903053);
      this.g = this.b.findViewById(2131165345);
      FragmentManager localFragmentManager = paramHomeActivity.getSupportFragmentManager();
      this.k = ((MessagesFragment)localFragmentManager.findFragmentById(2131165329));
      this.l = ((ContactsFragment)localFragmentManager.findFragmentById(2131165348));
      this.m = ((PhoneFragment)localFragmentManager.findFragmentById(2131165349));
      this.n = ((bf)localFragmentManager.findFragmentById(2131165302));
      this.r = ((YouFragment)localFragmentManager.findFragmentById(2131165344));
      this.s = ((SettingsHeadersFragment)localFragmentManager.findFragmentById(2131165346));
      this.u = ((PublicGroupConversationFragment)localFragmentManager.findFragmentById(2131165303));
      this.o = ((ConversationFragment)localFragmentManager.findFragmentById(2131165328));
      this.p = ((ConversationInfoFragment)localFragmentManager.findFragmentById(2131165331));
      this.v = ((PublicGroupInfoFragment)localFragmentManager.findFragmentById(2131165304));
      this.q = ((ContactDetailsFragment)localFragmentManager.findFragmentById(2131165343));
      Resources localResources = paramHomeActivity.getResources();
      int i3 = localResources.getDisplayMetrics().widthPixels - this.B;
      float f1 = gl.a(localResources);
      float f2 = i3;
      if (!this.A) {
        break label924;
      }
      i4 = i1;
      int i5 = (int)(f2 * (1.0F - f1 * i4));
      float f3 = 0.5F * i3;
      if (!this.A) {
        break label930;
      }
      f4 = 1.0F - f1;
      int i6 = (int)(f4 * f3);
      this.a.setBehindOffset(i5);
      this.a.setTouchmodeMarginThreshold(i6);
      this.a.setShadowWidthRes(2131362103);
      this.a.a(this.o.t());
      this.a.a(this.o.u());
      this.a.setOnOpenedListener(this);
      this.a.setOnClosedListener(this);
      this.a.setOnStartDragListener(this);
      SlidingMenu localSlidingMenu = this.a;
      if (!paramBoolean) {
        break label936;
      }
      localSlidingMenu.setTouchModeAbove(i1);
      int i7 = (int)(f1 * i3);
      i8 = i3 - i7;
      this.G = (i7 + this.B);
      a("mSettingsSlidingView setBehindWidth width:" + i3 + ",behindWidthOffset:" + this.G + ",offset:" + i5);
      this.b.setBehindWidth(this.G);
      this.b.a();
      this.c = ((FrameLayout)this.b.findViewById(2131165342));
      this.d = paramHomeActivity.findViewById(2131165347);
      this.e = paramHomeActivity.findViewById(2131165339);
      this.f = this.b.findViewById(2131165350);
      this.g.setVisibility(0);
      localView = this.f;
      if (!this.A) {
        break label941;
      }
    }
    label924:
    label930:
    label936:
    label941:
    for (int i9 = 8;; i9 = 0)
    {
      localView.setVisibility(i9);
      this.c.getLayoutParams().width = i8;
      this.g.getLayoutParams().width = i8;
      this.b.setOnOpenedListener(this);
      this.b.setOnClosedListener(this);
      this.x.getSupportActionBar().setHomeButtonEnabled(false);
      if ((this.A) && (!z)) {
        this.a.setOnPageSelectedListener(new bp(this));
      }
      z = this.a.h();
      v();
      return;
      i2 = 0;
      break;
      label866:
      this.a.a();
      this.a.setMode(i1);
      this.a.setMenu(2130903095);
      this.a.setSecondaryMenu(2130903094);
      this.a.setShadowDrawable(17170445);
      this.a.setSecondaryShadowDrawable(2130838485);
      break label113;
      i4 = 1;
      break label449;
      f4 = 1.0F;
      break label485;
      i1 = 0;
      break label583;
    }
  }
  
  public void a(h paramh, boolean paramBoolean)
  {
    int i1 = 2;
    this.E = paramh.a();
    if (paramh.b() == i1)
    {
      if (this.n != null)
      {
        this.v.a(paramh, paramBoolean, false);
        this.n.a(paramh, paramBoolean);
      }
      if (!this.A) {
        break label103;
      }
      SlidingMenu localSlidingMenu2 = this.a;
      if (!paramh.n()) {
        break label98;
      }
      label64:
      localSlidingMenu2.setTouchModeAbove(i1);
    }
    for (;;)
    {
      e(false);
      return;
      this.p.a(paramh, paramBoolean, false);
      this.k.a(paramh, paramBoolean);
      break;
      label98:
      i1 = 0;
      break label64;
      label103:
      this.a.setTouchModeAbove(0);
      SlidingMenu localSlidingMenu1 = this.a;
      if (paramh.n()) {
        i1 = 0;
      }
      localSlidingMenu1.setMode(i1);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    boolean bool = true;
    this.w.a(paramBoolean);
    if (!i(n())) {
      if ((paramBoolean) && (o() == 0)) {
        if (this.o != null) {
          this.o.c(bool);
        }
      }
    }
    for (;;)
    {
      return;
      bool = false;
      break;
      if ((paramBoolean) && (o() == 3)) {}
      while (this.u != null)
      {
        this.u.c(bool);
        return;
        bool = false;
      }
    }
  }
  
  public void b()
  {
    r();
  }
  
  public void b(int paramInt)
  {
    this.o.b(paramInt);
  }
  
  public void b(Intent paramIntent)
  {
    Map localMap = this.y;
    if (i(paramIntent)) {}
    for (int i1 = 3;; i1 = 0)
    {
      localMap.put(Integer.valueOf(i1), paramIntent);
      if ((o() == 0) || (3 == o())) {
        c();
      }
      return;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    int i1 = 1;
    boolean bool2 = this.k.q();
    boolean bool3 = this.m.a();
    FragmentManager localFragmentManager;
    FragmentTransaction localFragmentTransaction;
    label115:
    boolean bool5;
    boolean bool4;
    boolean bool6;
    boolean bool7;
    boolean bool8;
    boolean bool9;
    boolean bool10;
    boolean bool11;
    boolean bool12;
    if ((this.n != null) && (this.n.j()))
    {
      int i2 = i1;
      int i4 = o();
      if (!paramBoolean) {
        this.y.remove(Integer.valueOf(i4));
      }
      a(bool2, i1, bool3, i4);
      localFragmentManager = this.x.getSupportFragmentManager();
      localFragmentTransaction = localFragmentManager.beginTransaction();
      a(i1);
      g localg = this.w;
      if ((i4 != 0) && (i4 != 3)) {
        break label341;
      }
      int i5 = i1;
      localg.a(i5);
      switch (i4)
      {
      default: 
        bool5 = false;
        bool4 = false;
        i1 = 0;
        bool6 = false;
        bool7 = false;
        bool8 = false;
        bool9 = false;
        bool10 = false;
        bool11 = false;
        bool12 = false;
      }
    }
    for (;;)
    {
      label341:
      boolean bool17;
      label454:
      boolean bool16;
      boolean bool14;
      label561:
      boolean bool15;
      for (;;)
      {
        a(localFragmentTransaction, this.k, bool12);
        a(localFragmentTransaction, this.o, bool11);
        a(localFragmentTransaction, this.p, bool10);
        a(localFragmentTransaction, this.l, bool9);
        a(localFragmentTransaction, this.m, bool7);
        a(localFragmentTransaction, this.q, bool8);
        a(localFragmentTransaction, this.r, bool6);
        if (this.n != null)
        {
          a(localFragmentTransaction, this.n, i1);
          a(localFragmentTransaction, this.u, bool4);
          a(localFragmentTransaction, this.v, bool5);
        }
        if (!localFragmentTransaction.isEmpty()) {}
        try
        {
          localFragmentTransaction.commitAllowingStateLoss();
          localFragmentManager.executePendingTransactions();
          if (bool6) {
            this.r.updateSettingsItem(false);
          }
          return;
          int i3 = 0;
          break;
          int i6 = 0;
          break label115;
          if ((bool2) || (this.y.containsKey(Integer.valueOf(0)))) {}
          for (int i9 = i1;; bool17 = false)
          {
            if (i9 == 0) {
              break label832;
            }
            this.o.a((Intent)this.y.get(Integer.valueOf(0)), i1, i1);
            bool10 = i9;
            bool11 = i9;
            bool12 = i1;
            bool5 = false;
            i1 = 0;
            bool4 = false;
            bool6 = false;
            bool7 = false;
            bool8 = false;
            bool9 = false;
            break;
          }
          int i7;
          if (!this.b.h())
          {
            i7 = i1;
            if ((this.l.t()) || (!this.y.containsKey(Integer.valueOf(i1)))) {
              break label561;
            }
          }
          for (int i8 = i1;; bool15 = false)
          {
            bool16 = this.l.t();
            if (i8 == 0) {
              break label797;
            }
            this.q.a((Intent)this.y.get(Integer.valueOf(i1)));
            bool8 = i8;
            bool9 = i7;
            bool6 = bool16;
            bool5 = false;
            bool1 = false;
            bool4 = false;
            bool7 = false;
            bool10 = false;
            bool11 = false;
            bool12 = false;
            break;
            bool14 = false;
            break label454;
          }
          if ((bool3) && (this.y.containsKey(Integer.valueOf(2)))) {
            bool13 = bool1;
          }
          for (;;)
          {
            if (bool13)
            {
              this.q.a((Intent)this.y.get(Integer.valueOf(2)));
              bool7 = bool1;
              bool8 = bool13;
              bool5 = false;
              bool1 = false;
              bool4 = false;
              bool6 = false;
              bool9 = false;
              bool10 = false;
              bool11 = false;
              bool12 = false;
              break;
              bool13 = false;
              continue;
              if ((i3 != 0) || (this.y.containsKey(Integer.valueOf(3)))) {}
              for (bool4 = bool1;; bool4 = false)
              {
                if ((bool4) && (this.u != null)) {
                  this.u.a((Intent)this.y.get(Integer.valueOf(3)), bool1, bool1);
                }
                bool5 = bool4;
                bool6 = false;
                bool7 = false;
                bool8 = false;
                bool9 = false;
                bool10 = false;
                bool11 = false;
                bool12 = false;
                break;
              }
            }
          }
        }
        catch (IllegalStateException localIllegalStateException)
        {
          boolean bool13;
          for (;;)
          {
            localIllegalStateException.printStackTrace();
          }
          bool7 = bool1;
          bool8 = bool13;
          bool5 = false;
          bool1 = false;
          bool4 = false;
          bool6 = false;
          bool9 = false;
          bool10 = false;
          bool11 = false;
          bool12 = false;
        }
      }
      continue;
      label797:
      bool8 = bool15;
      bool9 = bool14;
      bool6 = bool16;
      bool5 = false;
      boolean bool1 = false;
      bool4 = false;
      bool7 = false;
      bool10 = false;
      bool11 = false;
      bool12 = false;
      continue;
      label832:
      bool10 = bool17;
      bool11 = bool17;
      bool12 = bool1;
      bool5 = false;
      bool1 = false;
      bool4 = false;
      bool6 = false;
      bool7 = false;
      bool8 = false;
      bool9 = false;
    }
  }
  
  public void c()
  {
    b(true);
  }
  
  public void c(Intent paramIntent)
  {
    this.l.a(paramIntent);
  }
  
  public void c(boolean paramBoolean)
  {
    b(false);
  }
  
  public boolean c(int paramInt)
  {
    return false;
  }
  
  public void d()
  {
    if ((i(n())) && (this.v != null))
    {
      this.v.a();
      return;
    }
    this.p.a();
  }
  
  public void d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
    case 0: 
    case 1: 
      int i1;
      do
      {
        do
        {
          return;
        } while (this.k == null);
        if (this.k.q())
        {
          bc.a().a(a.q.a());
          return;
        }
        bc.a().a(a.r.a());
        return;
        if (this.l != null) {}
        for (i1 = this.l.r(); i1 == 1; i1 = 0)
        {
          bc.a().a(a.s.d.a());
          return;
        }
      } while (i1 != 0);
      bc.a().a(a.s.e.a());
      return;
    }
    bc.a().a(a.g.a());
  }
  
  public void d(Intent paramIntent)
  {
    if ((this.A) && (this.f.getVisibility() == 0) && (paramIntent.hasExtra("selected_item")))
    {
      j(paramIntent);
      return;
    }
    if (!this.b.e())
    {
      j(paramIntent);
      return;
    }
    this.l.a(new Intent("com.viber.voip.action.YOU"));
    this.H = new bt(this, paramIntent);
    this.b.postDelayed(this.H, 800L);
  }
  
  public void d(boolean paramBoolean) {}
  
  public void d_(int paramInt)
  {
    if (1 == paramInt) {
      this.o.a(paramInt);
    }
    while (paramInt != 0) {
      return;
    }
    this.a.setOnPageSelectedListener(null);
  }
  
  public Fragment e(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalStateException("Unknown fragment index: " + paramInt);
    case 0: 
      return this.k;
    case 1: 
      return this.l;
    case 2: 
      return this.m;
    }
    return this.n;
  }
  
  public void e()
  {
    this.a.c();
  }
  
  public void e(Intent paramIntent)
  {
    this.y.put(Integer.valueOf(1), paramIntent);
    if ((1 == o()) || (-2 == o())) {
      c();
    }
  }
  
  public void e(boolean paramBoolean)
  {
    if ((this.E > 0L) && (!paramBoolean))
    {
      this.w.a(this.E);
      return;
    }
    this.w.b(this.E);
  }
  
  public void e_() {}
  
  public void f()
  {
    if (this.A)
    {
      this.a.setOnPageSelectedListener(null);
      this.a.d();
      return;
    }
    if (this.a.h())
    {
      this.a.c();
      return;
    }
    this.a.b();
  }
  
  public void f(int paramInt)
  {
    boolean bool1 = true;
    boolean bool2;
    label51:
    int i2;
    label71:
    SlidingMenu localSlidingMenu1;
    int i1;
    if (this.D != paramInt)
    {
      this.D = paramInt;
      if (paramInt == 0) {
        break label99;
      }
      bool2 = bool1;
      if (bool2) {
        break label104;
      }
      dc.a(dk.a).postDelayed(new br(this), 300L);
      b(bool1);
      if (this.A)
      {
        SlidingMenu localSlidingMenu2 = this.a;
        if (!bool2) {
          break label202;
        }
        i2 = 0;
        localSlidingMenu2.setTouchModeAbove(i2);
      }
      localSlidingMenu1 = this.a;
      i1 = 0;
      if (!bool2) {
        break label208;
      }
    }
    for (;;)
    {
      localSlidingMenu1.setTouchModeBehind(i1);
      return;
      label99:
      bool2 = false;
      break;
      label104:
      if ((this.A) && (this.a.getVisibility() == 8) && (this.d.getVisibility() == 8)) {
        b(false);
      }
      if (this.C != 0) {
        break label51;
      }
      if ((this.A) || ((!this.A) && (!this.a.g()))) {}
      for (;;)
      {
        this.x.i().c(bool1, bool1);
        this.x.getSupportActionBar().setDisplayHomeAsUpEnabled(false);
        break;
        bool1 = false;
      }
      label202:
      i2 = 2;
      break label71;
      label208:
      i1 = 2;
    }
  }
  
  public void f(Intent paramIntent)
  {
    this.y.put(Integer.valueOf(1), paramIntent);
    this.b.c(true);
  }
  
  public void g(int paramInt)
  {
    ActionBar localActionBar;
    switch (paramInt)
    {
    default: 
      if (this.C != paramInt)
      {
        localActionBar = this.x.getSupportActionBar();
        if (paramInt != -1) {
          switch (this.C)
          {
          }
        }
      }
      break;
    }
    for (;;)
    {
      this.C = paramInt;
      u();
      if (!this.x.isFinishing()) {
        c();
      }
      return;
      if (this.A)
      {
        this.k.setHasOptionsMenu(true);
        this.o.setHasOptionsMenu(true);
        if (this.u != null) {
          this.u.setHasOptionsMenu(true);
        }
        this.x.i().b(true, this.k.q());
        break;
      }
      if (this.a.g())
      {
        this.k.setHasOptionsMenu(true);
        this.o.setHasOptionsMenu(false);
        if (this.u != null) {
          this.u.setHasOptionsMenu(false);
        }
        this.x.i().a(true);
        this.x.getSupportActionBar().setDisplayShowTitleEnabled(false);
      }
      for (;;)
      {
        this.x.i().a = false;
        break;
        if (!this.x.i().a)
        {
          this.k.setHasOptionsMenu(false);
          this.o.setHasOptionsMenu(true);
          if (this.u != null) {
            this.u.setHasOptionsMenu(true);
          }
          this.x.i().a(false);
        }
      }
      this.x.i().a = false;
      f(true);
      break;
      f(false);
      break;
      if ((this.k.r()) && (localActionBar.getNavigationMode() == 2)) {
        localActionBar.setSelectedNavigationItem(paramInt);
      }
      if ((!this.A) && (!this.a.g()))
      {
        this.x.i().a = true;
        this.x.i().a(true);
        if (localActionBar.getNavigationMode() == 2) {
          localActionBar.setSelectedNavigationItem(paramInt);
        }
        this.a.a(false);
        continue;
        if ((this.l.u()) && (localActionBar.getNavigationMode() == 2)) {
          localActionBar.setSelectedNavigationItem(paramInt);
        }
      }
    }
  }
  
  public void g(Intent paramIntent)
  {
    if ((ViberApplication.isTablet()) && (this.C == 1))
    {
      this.l.setHasOptionsMenu(this.b.g());
      this.q.setHasOptionsMenu(this.b.g());
      if ((!this.b.g()) && (!this.b.h())) {
        this.r.updateSettingsItem(true);
      }
    }
  }
  
  public boolean g()
  {
    if ((this.C == 0) || (this.C == 3))
    {
      boolean bool = this.a.h();
      if (((this.A) && (bool)) || ((!this.A) && (bool))) {
        this.a.c();
      }
      do
      {
        do
        {
          return true;
          if ((this.A) || (this.a.e())) {
            break;
          }
        } while ((this.o.isVisible()) && (this.o.onActivityBackPressed()));
        this.a.a();
        return true;
      } while (((this.A) && (this.o.isVisible()) && (this.o.onActivityBackPressed())) || ((this.A) && (this.u != null) && (this.u.isVisible()) && (this.u.onActivityBackPressed())));
    }
    do
    {
      do
      {
        return false;
        if (this.C == 2) {
          return this.m.onActivityBackPressed();
        }
      } while (this.C != 1);
      if (this.b.h())
      {
        this.b.setBehindWidth(this.G);
        this.b.c(true);
        return true;
      }
      if (!this.b.g())
      {
        this.b.a(true);
        b(false);
        return true;
      }
    } while ((!this.A) || (!this.q.isVisible()) || (!this.q.onActivityBackPressed()));
    return true;
  }
  
  public void h(int paramInt)
  {
    if ((this.l != null) && (this.l.b()))
    {
      this.l.c(paramInt);
      return;
    }
    ViberApplication.preferences().a("contacts_filter", paramInt);
  }
  
  public void h(Intent paramIntent)
  {
    if (this.m != null) {
      this.m.a(paramIntent);
    }
  }
  
  public boolean h()
  {
    return (this.a != null) && (this.a.f());
  }
  
  public void i()
  {
    if (this.A)
    {
      this.a.a();
      return;
    }
    this.a.b();
  }
  
  public void j()
  {
    if (this.F != null)
    {
      this.c.removeView(this.F);
      this.F = null;
      ViberApplication.preferences().a("show_carlos_messages", false);
    }
  }
  
  public boolean k()
  {
    return this.F != null;
  }
  
  public void l()
  {
    if (this.o != null)
    {
      this.a.c();
      this.o.w();
    }
  }
  
  public Intent m()
  {
    if (this.H != null)
    {
      Intent localIntent = this.H.a();
      this.b.removeCallbacks(this.H);
      this.H = null;
      return localIntent;
    }
    return n();
  }
  
  public Intent n()
  {
    Intent localIntent = (Intent)this.y.get(Integer.valueOf(1));
    if ((localIntent != null) && ("com.viber.voip.action.SETTINGS".equals(localIntent.getAction()))) {
      return localIntent;
    }
    return null;
  }
  
  public void onClick(View paramView)
  {
    if ((this.C == 0) || (this.C == 3)) {
      q();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.bo
 * JD-Core Version:    0.7.0.1
 */