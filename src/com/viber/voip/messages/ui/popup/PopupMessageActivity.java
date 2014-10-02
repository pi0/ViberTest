package com.viber.voip.messages.ui.popup;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.lastonline.LastOnlineDelegate;
import com.viber.jni.lastonline.LastOnlineListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ah;
import com.viber.voip.a.bc;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.e.u;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.conversation.as;
import com.viber.voip.messages.conversation.av;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.ui.PttViewController;
import com.viber.voip.messages.ui.popup.a.g;
import com.viber.voip.messages.ui.popup.view.PopupStickerQuickReply;
import com.viber.voip.messages.ui.popup.view.PopupViewPagerRoot;
import com.viber.voip.stickers.r;
import com.viber.voip.util.ao;
import com.viber.voip.util.gj;
import com.viber.voip.util.gl;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class PopupMessageActivity
  extends ViberFragmentActivity
  implements View.OnClickListener, TextView.OnEditorActionListener, av, com.viber.voip.messages.ui.popup.view.f
{
  public static boolean a;
  private static final String z = PopupMessageActivity.class.getSimpleName();
  private AtomicBoolean A = new AtomicBoolean(true);
  private final LastOnlineDelegate B = new h(this);
  private com.viber.voip.stickers.d.b C = new j(this);
  public boolean b;
  public int c;
  private com.viber.voip.messages.ui.popup.a.a d;
  private com.viber.voip.messages.ui.popup.a.k e;
  private g f;
  private as g;
  private Set<an> h = new HashSet();
  private Handler i = new Handler();
  private i j;
  private ConversationEntityImpl k;
  private BroadcastReceiver l;
  private n m;
  private boolean n;
  private boolean o = true;
  private k p;
  private int q;
  private int r;
  private boolean s;
  private boolean t;
  private int u;
  private Rect v = new Rect();
  private final Runnable w = new a(this);
  private Runnable x = new b(this);
  private com.viber.voip.messages.ui.popup.a.h y = new c(this);
  
  private void a(an paraman)
  {
    try
    {
      String str = this.m.i.getText().toString();
      if ((!TextUtils.isEmpty(str.trim())) && (this.j != null))
      {
        ConversationEntityImpl localConversationEntityImpl = this.y.a(paraman.j());
        if (localConversationEntityImpl != null)
        {
          MessageEntityImpl localMessageEntityImpl = new com.viber.voip.messages.controller.b.b(localConversationEntityImpl.getGroupId(), localConversationEntityImpl.getNumber(), localConversationEntityImpl.getConversationType()).a("text", str, 0);
          localMessageEntityImpl.setConversationId(localConversationEntityImpl.getId());
          localMessageEntityImpl.setParticipantId(1L);
          localMessageEntityImpl.setMessageSeq(ViberApplication.getInstance().getPhoneController(true).generateSequence());
          if ((localConversationEntityImpl.isShareLocation()) && ((localMessageEntityImpl.getLat() == 0) || (localMessageEntityImpl.getLng() == 0))) {
            localMessageEntityImpl.setExtraStatus(0);
          }
          this.j.c().a(localMessageEntityImpl);
          this.m.i.setText("");
          k.a(this.p);
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      l();
    }
  }
  
  private void a(ViewPager... paramVarArgs)
  {
    if (paramVarArgs == null) {}
    for (;;)
    {
      return;
      int i1 = paramVarArgs.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        ViewPager localViewPager = paramVarArgs[i2];
        if ((localViewPager != null) && (localViewPager.getAdapter() != null)) {
          localViewPager.getAdapter().notifyDataSetChanged();
        }
      }
    }
  }
  
  private void a(com.viber.voip.messages.ui.popup.a.l... paramVarArgs)
  {
    if (paramVarArgs == null) {}
    for (;;)
    {
      return;
      int i1 = paramVarArgs.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        com.viber.voip.messages.ui.popup.a.l locall = paramVarArgs[i2];
        if (locall != null) {
          locall.b();
        }
      }
    }
  }
  
  private void d()
  {
    String str;
    Object localObject;
    if ((this.g != null) && (this.g.e(0) != null))
    {
      str = gj.b(this.g.e(0).p());
      a("messageDataChange: BODY: " + str);
      StringBuilder localStringBuilder = new StringBuilder().append("messageDataChange: Items count: ");
      if (this.g == null) {
        break label160;
      }
      localObject = Integer.valueOf(this.g.getCount());
      label89:
      a(localObject);
      this.c = this.g.getCount();
      if (this.m.a.getAdapter() != null) {
        break label167;
      }
      a("messageDataChange:  wrapper.viewPager.getAdapter() == null");
      f();
      e();
    }
    for (;;)
    {
      g();
      this.A.set(true);
      return;
      str = "some problem, no messages";
      break;
      label160:
      localObject = "mService == null";
      break label89;
      label167:
      a("messageDataChange:  wrapper.viewPager.getAdapter() != null -> notifyAdapterDataChanges()");
      this.i.removeCallbacks(this.x);
      this.i.postDelayed(this.x, 700L);
    }
  }
  
  private void e()
  {
    this.d = new com.viber.voip.messages.ui.popup.a.a(this, this.g);
    this.d.a(this.n);
    this.d.a(this);
    this.m.a.setAdapter(new com.viber.voip.messages.ui.popup.a.j(this.d));
  }
  
  private void f()
  {
    this.e = new com.viber.voip.messages.ui.popup.a.k(this, this.g);
    this.f = new g(this, this.g, this.y);
    this.m.b.setAdapter(new com.viber.voip.messages.ui.popup.a.j(this.e));
    this.m.c.setAdapter(new com.viber.voip.messages.ui.popup.a.j(this.f));
  }
  
  private void g()
  {
    com.viber.voip.messages.ui.popup.a.l[] arrayOfl = new com.viber.voip.messages.ui.popup.a.l[3];
    arrayOfl[0] = this.d;
    arrayOfl[1] = this.f;
    arrayOfl[2] = this.e;
    a(arrayOfl);
    ViewPager[] arrayOfViewPager = new ViewPager[3];
    arrayOfViewPager[0] = this.m.a;
    arrayOfViewPager[1] = this.m.c;
    arrayOfViewPager[2] = this.m.b;
    a(arrayOfViewPager);
  }
  
  private void h()
  {
    this.o = true;
    this.i.removeCallbacks(this.w);
    this.i.postDelayed(this.w, 15000L);
  }
  
  private boolean i()
  {
    return (this.k != null) && (!this.k.isPublicGroup()) && (!this.k.isTrialPublicGroup());
  }
  
  private void j()
  {
    PopupViewPagerRoot localPopupViewPagerRoot = this.m.a;
    for (int i1 = 0; i1 < localPopupViewPagerRoot.getChildCount(); i1++) {
      com.viber.voip.messages.ui.popup.a.a.a(localPopupViewPagerRoot.getChildAt(i1));
    }
  }
  
  private void k()
  {
    u.a().f();
  }
  
  private void l()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.m.i.getWindowToken(), 0);
  }
  
  private void m()
  {
    a("updateReadStatus");
    if (this.g != null)
    {
      an localan = this.g.e(-1 + this.g.getCount());
      if (localan != null) {
        ViberApplication.getInstance().getMessagesManager().c().a(localan.j(), localan.E(), localan.m());
      }
    }
  }
  
  private void n()
  {
    if ((i()) && (this.m.p.getVisibility() == 8))
    {
      l();
      this.m.p.setVisibility(0);
      this.m.m.setVisibility(8);
      if ((gl.e(this)) && (!ViberApplication.isTablet()))
      {
        if ((this.d != null) && (this.d.a() != null)) {
          this.d.a().setVisibility(8);
        }
        Resources localResources = getResources();
        this.m.l.setLayoutParams(new LinearLayout.LayoutParams(localResources.getDimensionPixelSize(2131362191), localResources.getDimensionPixelSize(2131362194)));
      }
    }
    do
    {
      do
      {
        return;
        this.m.p.setVisibility(8);
        this.m.m.setVisibility(0);
      } while ((!gl.e(this)) || (ViberApplication.isTablet()));
      this.m.l.setLayoutParams(new LinearLayout.LayoutParams(getResources().getDimensionPixelSize(2131362191), getResources().getDimensionPixelSize(2131362192)));
    } while ((this.d == null) || (this.d.a() == null));
    this.d.a().setVisibility(0);
  }
  
  private void o()
  {
    boolean bool1 = true;
    if ((i()) && (TextUtils.isEmpty(this.m.i.getText())))
    {
      int i1 = this.m.p.getVisibility();
      boolean bool2 = false;
      if (i1 == 0) {
        bool2 = bool1;
      }
      if (this.k != null) {
        com.viber.voip.h.b.d().a(bool2, new com.viber.voip.h.d(this.k.getId()), bool1);
      }
      if (bool2)
      {
        this.m.h.setImageResource(2130838048);
        return;
      }
      this.m.h.setImageResource(2130838052);
      return;
    }
    this.m.h.setImageResource(2130838047);
    ImageButton localImageButton = this.m.h;
    if (!TextUtils.isEmpty(this.m.i.getText())) {}
    for (;;)
    {
      localImageButton.setEnabled(bool1);
      return;
      bool1 = false;
    }
  }
  
  public void a()
  {
    finish();
  }
  
  public void a(int paramInt)
  {
    if ((this.g != null) && (paramInt == -1 + this.g.getCount())) {
      this.m.g.setVisibility(0);
    }
    b(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2) {}
  
  public void a(com.viber.provider.b paramb) {}
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    if ((paramb == this.g) && (this.g.getCount() != 0))
    {
      if (paramBoolean)
      {
        this.m.i.addTextChangedListener(this.p);
        this.q = this.g.getCount();
        this.r = this.g.getCount();
        this.s = false;
        d();
        this.m.a.c();
        this.m.g.setVisibility(0);
        h();
      }
      do
      {
        return;
        d();
      } while (this.g.getCount() <= this.r);
      bc.a().a(com.viber.voip.a.a.y.b(String.valueOf(this.g.getCount() - this.q)));
      this.r = this.g.getCount();
      return;
    }
    a("onDataReady: service count == 0");
    finish();
  }
  
  protected void a(String paramString) {}
  
  public void b()
  {
    String str = ViberApplication.preferences().b(com.viber.voip.settings.j.A(), "1");
    if (str.equals("0"))
    {
      this.m.i.setVisibility(0);
      this.m.h.setVisibility(0);
    }
    do
    {
      return;
      if (str.equals("1"))
      {
        this.m.i.setVisibility(0);
        this.m.h.setVisibility(0);
        return;
      }
    } while (!str.equals("2"));
    c();
  }
  
  public void b(int paramInt)
  {
    if (this.d != null)
    {
      an localan = this.d.a(this.m.a, this);
      if (localan != null) {
        this.h.add(localan);
      }
    }
  }
  
  public void c()
  {
    this.m.i.setVisibility(8);
    this.m.h.setVisibility(8);
  }
  
  public void onClick(View paramView)
  {
    if (this.d != null) {}
    for (an localan = this.d.a(this.m.a, this);; localan = null)
    {
      if (localan == null) {
        a("can't click wihle message not loaded");
      }
      do
      {
        return;
        if (paramView == this.m.i)
        {
          k();
          return;
        }
        if (paramView == this.m.h)
        {
          if (TextUtils.isEmpty(this.m.i.getText()))
          {
            n();
            o();
            return;
          }
          a(localan);
          k();
          finish();
          return;
        }
        if (paramView == this.m.d)
        {
          finish();
          return;
        }
        if (paramView.getId() == 2131165872)
        {
          this.m.a.b();
          return;
        }
        if (paramView.getId() == 2131165873)
        {
          this.m.a.a();
          return;
        }
      } while (paramView == null);
      k();
      ConversationEntityImpl localConversationEntityImpl = this.y.a(localan.j());
      long l1;
      long l2;
      String str1;
      int i1;
      long l3;
      long l4;
      if (localConversationEntityImpl != null)
      {
        l1 = localConversationEntityImpl.getId();
        l2 = localConversationEntityImpl.getGroupId();
        str1 = localConversationEntityImpl.getNumber();
        i1 = localConversationEntityImpl.getConversationType();
        l3 = localan.B();
        l4 = localan.C();
        if (!localConversationEntityImpl.isConversationGroup()) {
          break label379;
        }
      }
      label379:
      for (String str2 = localConversationEntityImpl.getGroupName();; str2 = localan.y())
      {
        Intent localIntent = com.viber.voip.messages.j.a(l1, l2, str1, i1, l3, l4, str2, true);
        u.a(localIntent);
        if (this.k != null)
        {
          String str3 = this.m.i.getText().toString().trim();
          a("saveConversationDraft text " + str3 + " id :  " + this.k.getId());
          this.j.c().a(this.k.getId(), str3);
          localIntent.putExtra("draft", str3);
        }
        localIntent.setAction("com.viber.voip.action.PRE_CONVERSATION");
        startActivity(localIntent);
        finish();
        return;
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if ((this.m == null) || (this.m.l == null) || (this.m.m == null) || (this.m.p == null)) {
      return;
    }
    int i1 = (int)getResources().getDimension(2131362192);
    int i2 = (int)getResources().getDimension(2131362193);
    int i3;
    if ((ao.b(this)) && (!ViberApplication.isTablet()))
    {
      i3 = -1;
      if ((this.m.p.getVisibility() != 0) || (!gl.e(this)) || (ViberApplication.isTablet())) {
        break label264;
      }
      if ((this.d != null) && (this.d.a() != null)) {
        this.d.a().setVisibility(8);
      }
      Resources localResources = getResources();
      this.m.l.setLayoutParams(new LinearLayout.LayoutParams(localResources.getDimensionPixelSize(2131362191), localResources.getDimensionPixelSize(2131362194)));
    }
    for (;;)
    {
      this.m.m.setLayoutParams(new LinearLayout.LayoutParams(i3, i2));
      this.m.p.setLayoutParams(new LinearLayout.LayoutParams(i3, i1));
      this.m.l.requestLayout();
      this.m.m.requestLayout();
      this.m.p.requestLayout();
      return;
      i3 = (int)getResources().getDimension(2131362191);
      break;
      label264:
      if ((this.d != null) && (this.d.a() != null)) {
        this.d.a().setVisibility(0);
      }
      this.m.l.setLayoutParams(new LinearLayout.LayoutParams(i3, i1));
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    a("onCreate");
    super.onCreate(paramBundle);
    if (!a)
    {
      ViberApplication.startHomeActivity();
      finish();
      return;
    }
    this.j = ViberApplication.getInstance().getMessagesManager();
    boolean bool = ((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    gl.b(this);
    setContentView(2130903225);
    bc.a().a(com.viber.voip.a.a.y.a());
    this.p = new k(this, null);
    this.m = new n(this, null);
    LinearLayout localLinearLayout = this.m.g;
    if (bool) {}
    for (int i1 = 17170444;; i1 = 2131296434)
    {
      localLinearLayout.setBackgroundResource(i1);
      this.m.f.setOnClickListener(this);
      this.m.i.setOnClickListener(this);
      this.m.i.setOnEditorActionListener(this);
      this.m.h.setOnClickListener(this);
      this.m.d.setOnClickListener(this);
      this.m.e.setOnClickListener(this);
      this.m.j.setOnClickListener(this);
      this.m.a.a(this.m.b);
      this.m.a.a(this.m.c);
      this.m.a.setOnPagerChangingListener(this);
      this.m.n.setStickerSelectListener(new d(this));
      this.m.o.setOnClickListener(new e(this));
      if (!ViberApplication.preferences().b(com.viber.voip.settings.j.k(), com.viber.voip.settings.j.l())) {
        this.m.m.setVisibility(8);
      }
      b();
      this.t = ViberApplication.preferences().b(com.viber.voip.settings.j.Y(), com.viber.voip.settings.j.Z());
      IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
      localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
      localIntentFilter.addAction("android.intent.action.USER_PRESENT");
      localIntentFilter.addAction("com.viber.voip.action.CLOSE_POPUP");
      this.l = new PopupMessageActivity.ScreenReceiver(this);
      registerReceiver(this.l, localIntentFilter);
      a = false;
      h();
      return;
    }
  }
  
  public void onDestroy()
  {
    if (this.l != null)
    {
      a("onDestroy: unregisterReceiver");
      unregisterReceiver(this.l);
      this.l = null;
    }
    if (this.g != null) {
      this.g.u();
    }
    super.onDestroy();
  }
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.m.h.getVisibility() == 0) && (this.m.h.isEnabled()))
    {
      this.m.h.performClick();
      return true;
    }
    return false;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    this.b = true;
    if (i())
    {
      this.m.p.c();
      ViberApplication.getInstance().getPhoneController(false).getPttPlaylist().b(null, true);
      com.viber.voip.h.b.d().a(false, new com.viber.voip.h.d(-1L), true);
    }
    r.a().b(this.C);
    if (this.t) {
      ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getLastOnlineListener().removeDelegate(this.B);
    }
    super.onPause();
  }
  
  protected void onResume()
  {
    this.b = false;
    if (i()) {
      this.m.p.b();
    }
    if (this.g == null)
    {
      this.m.g.setVisibility(4);
      ViberApplication.getInstance().getMessagesManager().c().a(new f(this));
    }
    for (;;)
    {
      if (this.t)
      {
        LastOnlineListener localLastOnlineListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getLastOnlineListener();
        LastOnlineDelegate[] arrayOfLastOnlineDelegate = new LastOnlineDelegate[1];
        arrayOfLastOnlineDelegate[0] = this.B;
        localLastOnlineListener.registerDelegate(arrayOfLastOnlineDelegate);
      }
      r.a().a(this.C);
      r.a().r();
      j();
      super.onResume();
      return;
      this.m.g.setVisibility(0);
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    this.n = ViberApplication.preferences().b(com.viber.voip.settings.j.k(), com.viber.voip.settings.j.l());
  }
  
  public void onUserInteraction()
  {
    a("onUserInteraction");
    this.o = false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.PopupMessageActivity
 * JD-Core Version:    0.7.0.1
 */