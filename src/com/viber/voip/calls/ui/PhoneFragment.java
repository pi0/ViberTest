package com.viber.voip.calls.ui;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings.System;
import android.support.v4.app.FragmentActivity;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.actionbarsherlock.view.Menu;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ae;
import com.viber.voip.a.bc;
import com.viber.voip.a.x;
import com.viber.voip.calls.entities.AggregatedCallEntity;
import com.viber.voip.calls.entities.CallEntity;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.service.EntityService;
import com.viber.voip.messages.orm.service.ServiceCallback;
import com.viber.voip.messages.orm.service.uiwrapper.ServiceWrapper.InternalWrapper;
import com.viber.voip.registration.dj;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.IVibratorService;
import com.viber.voip.util.at;
import com.viber.voip.util.b.w;
import com.viber.voip.util.fq;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.util.gu;
import com.viber.voip.util.hd;
import com.viber.voip.widget.PhoneTypeField;
import com.viber.voip.widget.o;
import com.viber.voip.widget.q;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class PhoneFragment
  extends com.viber.voip.ui.h
  implements View.OnClickListener, View.OnTouchListener, AbsListView.OnScrollListener, AdapterView.OnItemLongClickListener, PhoneControllerWrapper.InitializedListener, n, r, com.viber.voip.d, com.viber.voip.f.h, ServiceCallback, o, q
{
  private static j R = new a();
  private static com.viber.voip.calls.a.e a = new com.viber.voip.calls.a.e();
  private static com.viber.voip.contacts.e.k b = new com.viber.voip.contacts.e.k();
  private KeypadButton A;
  private KeypadButton B;
  private ImageButton C;
  private ImageButton D;
  private ImageButton E;
  private Object F = new Object();
  private IVibratorService G;
  private ISoundService H;
  private boolean I;
  private boolean J;
  private boolean K;
  private boolean L;
  private String M;
  private PhoneFragmentModeManager N;
  private Handler O = dc.a(dk.h);
  private w P;
  private PhoneFragmentModeManager.PhoneFragmentModeManagerData Q = null;
  private j S = R;
  private i T;
  private p c;
  private u d;
  private com.viber.voip.ui.s e;
  private com.viber.voip.calls.a.a f;
  private com.viber.voip.contacts.e.a g;
  private com.actionbarsherlock.view.MenuItem h;
  private com.actionbarsherlock.view.MenuItem i;
  private ImageView j;
  private View k;
  private View l;
  private PhoneTypeField m;
  private ImageView n;
  private KeypadButton o;
  private KeypadButton p;
  private KeypadButton q;
  private KeypadButton t;
  private KeypadButton u;
  private KeypadButton v;
  private KeypadButton w;
  private KeypadButton x;
  private KeypadButton y;
  private KeypadButton z;
  
  public PhoneFragment()
  {
    super(2);
  }
  
  private void a(View paramView, Bundle paramBundle)
  {
    this.m = ((PhoneTypeField)paramView.findViewById(2131166044));
    this.m.requestFocus();
    this.m.setInputType(0);
    this.m.setOnClickListener(this);
    this.m.setContactLookupListener(this);
    this.m.setPhoneFieldTextChangeListener(this);
    this.n = ((ImageView)paramView.findViewById(2131165525));
    this.n.setVisibility(8);
    this.n.setOnClickListener(this);
    this.k = paramView.findViewById(2131165422);
    this.l = paramView.findViewById(2131165423);
    int i1;
    View localView;
    label199:
    ImageButton localImageButton;
    if ((paramBundle != null) && (paramBundle.containsKey("show_keyboard")) && (paramBundle.containsKey("number")))
    {
      i1 = 1;
      if ((i1 != 0) && (paramBundle.getBoolean("show_keyboard")) && (!TextUtils.isEmpty(paramBundle.getString("number")))) {
        this.k.setVisibility(0);
      }
      localView = paramView.findViewById(2131165421);
      if (!ViberApplication.isTablet()) {
        break label795;
      }
      localView.findViewById(2131165483).setVisibility(8);
      localView.findViewById(2131165481).setOnClickListener(this);
      this.o = ((KeypadButton)paramView.findViewById(2131165732));
      this.p = ((KeypadButton)paramView.findViewById(2131165733));
      this.q = ((KeypadButton)paramView.findViewById(2131165734));
      this.t = ((KeypadButton)paramView.findViewById(2131165735));
      this.u = ((KeypadButton)paramView.findViewById(2131165736));
      this.v = ((KeypadButton)paramView.findViewById(2131165737));
      this.w = ((KeypadButton)paramView.findViewById(2131165738));
      this.x = ((KeypadButton)paramView.findViewById(2131165739));
      this.y = ((KeypadButton)paramView.findViewById(2131165740));
      this.z = ((KeypadButton)paramView.findViewById(2131165741));
      this.B = ((KeypadButton)paramView.findViewById(2131165742));
      this.A = ((KeypadButton)paramView.findViewById(2131165368));
      this.E = ((ImageButton)paramView.findViewById(2131165743));
      this.D = ((ImageButton)paramView.findViewById(2131165744));
      this.C = ((ImageButton)paramView.findViewById(2131165745));
      this.o.setOnClickListener(new k(this, "1", 1));
      this.p.setOnClickListener(new k(this, "2", 2));
      this.q.setOnClickListener(new k(this, "3", 3));
      this.t.setOnClickListener(new k(this, "4", 4));
      this.u.setOnClickListener(new k(this, "5", 5));
      this.v.setOnClickListener(new k(this, "6", 6));
      this.w.setOnClickListener(new k(this, "7", 7));
      this.x.setOnClickListener(new k(this, "8", 8));
      this.y.setOnClickListener(new k(this, "9", 9));
      this.z.setOnClickListener(new k(this, "0", 0));
      this.A.setOnClickListener(new k(this, "*", 10));
      this.B.setOnClickListener(new k(this, "#", 11));
      this.z.setOnLongClickListener(new b(this));
      this.C.setOnClickListener(new c(this));
      this.C.setOnLongClickListener(new d(this));
      registerForContextMenu(this.D);
      this.D.setLongClickable(false);
      this.D.setOnClickListener(this);
      localImageButton = this.E;
      if (!dj.d()) {
        break label810;
      }
    }
    label795:
    label810:
    for (int i2 = 8;; i2 = 0)
    {
      localImageButton.setVisibility(i2);
      this.E.setOnClickListener(new e(this));
      this.m.addTextChangedListener(new f(this));
      if ((gl.e(getActivity())) && (!ViberApplication.isTablet())) {
        this.k.setVisibility(0);
      }
      this.e = new com.viber.voip.ui.s();
      return;
      i1 = 0;
      break;
      if (localView == null) {
        break label199;
      }
      localView.setVisibility(8);
      break label199;
    }
  }
  
  private void a(i parami, boolean paramBoolean)
  {
    h localh = new h(this, parami, paramBoolean);
    String str;
    if (parami != null) {
      if ((this.d != null) && (this.d.getCount() > 0)) {
        str = ((com.viber.voip.contacts.b.b)this.d.b(0)).a();
      }
    }
    for (;;)
    {
      com.viber.voip.viberout.e.c().b(i.b(parami));
      com.viber.voip.block.i.a(getActivity(), str, i.a(parami), false, localh);
      return;
      if ((this.c != null) && (this.c.getCount() > 0))
      {
        com.viber.voip.contacts.b.b localb = ((AggregatedCallEntity)this.c.b(0)).c();
        if (localb != null)
        {
          str = localb.a();
          continue;
          localh.run();
          return;
        }
      }
      str = "";
    }
  }
  
  private void a(EntityService<?> paramEntityService)
  {
    if ((paramEntityService instanceof com.viber.voip.calls.a.a)) {
      this.K = false;
    }
    for (;;)
    {
      if ((!this.K) && (!this.L) && (this.c != null))
      {
        this.c.notifyDataSetChanged();
        this.d.notifyDataSetChanged();
        if ((this.f != null) && (this.f.isInit())) {
          this.e.a(s());
        }
      }
      if ((this.N != null) && (!this.N.c())) {
        w();
      }
      i();
      return;
      if ((paramEntityService instanceof com.viber.voip.contacts.e.a)) {
        this.L = false;
      }
    }
  }
  
  private void a(String paramString1, boolean paramBoolean1, boolean paramBoolean2, String paramString2)
  {
    if (!gn.a(getActivity())) {
      return;
    }
    String str = paramString1.replaceAll("[^*0-9]+", "");
    if ((str.length() == 3) || (PhoneNumberUtils.isEmergencyNumber(str))) {}
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + str)));
      return;
    }
    int i2;
    int i3;
    label137:
    int i4;
    label168:
    int i5;
    if (str.length() >= 4)
    {
      i2 = 1;
      if (PhoneNumberUtils.toCallerIDMinMatch(this.m.getPhoneTypeText()).length() >= PhoneNumberUtils.getStrippedReversed(this.m.getPhoneTypeText()).length()) {
        break label287;
      }
      i3 = 1;
      if ((!str.matches(fq.i.pattern())) && (!str.matches(fq.j.pattern()))) {
        break label293;
      }
      i4 = 1;
      if ((i1 == 0) && (i2 == 0) && (i3 == 0) && (i4 == 0)) {
        break label299;
      }
      i5 = 1;
    }
    for (;;)
    {
      if (i5 != 0)
      {
        this.T = new i(this, null);
        i.a(this.T, paramString1);
        com.viber.voip.viberout.e.c().b(paramString1);
        i.b(this.T, com.viber.voip.viberout.e.c().c(paramString1));
        i.a(this.T, Boolean.valueOf(paramBoolean2));
        i.c(this.T, paramString2);
        if (!com.viber.voip.viberout.e.c().b())
        {
          a(this.T, false);
          return;
          i2 = 0;
          break;
          label287:
          i3 = 0;
          break label137;
          label293:
          i4 = 0;
          break label168;
          label299:
          i5 = 0;
          continue;
        }
        hd.a(ViberApplication.getInstance(), paramString1, new g(this, paramBoolean2, paramBoolean1));
        return;
      }
    }
    this.m.setPhoneFieldText("");
    at.a(getActivity(), getString(2131493775), getString(2131494137), 2131493683, null, true);
  }
  
  private void a(boolean paramBoolean)
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    if ((paramBoolean) && (!gl.e(localViberApplication)) && (gl.c(localViberApplication))) {}
    for (boolean bool = true;; bool = false)
    {
      this.h.setVisible(bool);
      this.i.setVisible(paramBoolean);
      setMenuVisibility(bool);
      if (Build.VERSION.SDK_INT < 11) {
        ((HomeActivity)getActivity()).c();
      }
      return;
    }
  }
  
  private void b(i parami, boolean paramBoolean)
  {
    o();
    bc localbc;
    if ((parami != null) && (!TextUtils.isEmpty(i.a(parami))))
    {
      localbc = bc.a();
      if (!i.c(parami).booleanValue()) {
        break label182;
      }
    }
    label182:
    for (x localx = com.viber.voip.a.a.v.d(paramBoolean);; localx = com.viber.voip.a.a.v.c(paramBoolean))
    {
      localbc.a(localx);
      Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", i.a(parami), null));
      if (i.d(parami) != null) {
        localIntent.putExtra("prev_action", i.d(parami));
      }
      localIntent.putExtra("viber_out", paramBoolean);
      localIntent.putExtra("from_dialpad", i.c(parami));
      localIntent.putExtra("number_status", i.e(parami));
      localIntent.putExtra("canonized_number", i.f(parami));
      com.viber.service.b.a(getActivity(), localIntent);
      if ((getActivity() != null) && (getActivity().getIntent() != null)) {
        getActivity().getIntent().setData(null);
      }
      m();
      return;
    }
  }
  
  private void b(String paramString)
  {
    getListView().setSelection(0);
    String str = paramString.replaceFirst("[-.]*", "");
    if (PhoneNumberUtils.isGlobalPhoneNumber(str)) {
      str = hd.a(ViberApplication.getInstance(), str, str);
    }
    this.e.b(str);
    this.L = true;
    this.K = true;
    if (this.g != null) {
      this.g.a(str);
    }
    if (this.d != null) {
      this.d.a(str);
    }
    if (this.f != null) {
      this.f.a(str);
    }
  }
  
  private void c(int paramInt)
  {
    if (paramInt < 0) {
      paramInt = 0;
    }
    AggregatedCallEntity localAggregatedCallEntity = this.f.a(paramInt);
    if (localAggregatedCallEntity != null) {
      a(localAggregatedCallEntity.f(), false, false, null);
    }
  }
  
  private void c(String paramString)
  {
    gu.a(getActivity(), 10, paramString);
  }
  
  private void d(String paramString)
  {
    ViberApplication.log(3, "PhoneFragment", paramString);
  }
  
  private void e(String paramString)
  {
    f(0);
    if ((!TextUtils.isEmpty(paramString)) && (this.m != null)) {
      this.m.setText(paramString);
    }
  }
  
  private boolean f(int paramInt)
  {
    int i1 = 1;
    if (getActivity() == null) {}
    while ((this.k == null) || (this.l == null) || (this.h == null)) {
      return false;
    }
    ViberApplication localViberApplication = ViberApplication.getInstance();
    int i2;
    int i3;
    label95:
    int i4;
    label114:
    int i5;
    label137:
    int i6;
    if ((paramInt == 0) && (this.k.getVisibility() == 8))
    {
      i2 = i1;
      if ((paramInt != 2) || (this.k.getVisibility() != 0) || ((this.l.getVisibility() != 8) && (!this.m.a()))) {
        break label317;
      }
      i3 = i1;
      if ((paramInt != 0) || (this.l.getVisibility() != 8)) {
        break label323;
      }
      i4 = i1;
      if (((paramInt != 2) && (paramInt != i1)) || (this.l.getVisibility() != 0)) {
        break label329;
      }
      i5 = i1;
      if ((gl.e(localViberApplication)) && ((!gl.e(localViberApplication)) || (!ViberApplication.isTablet()))) {
        break label392;
      }
      if (i2 == 0) {
        break label335;
      }
      this.k.setVisibility(0);
      i6 = i1;
    }
    for (;;)
    {
      label173:
      label211:
      int i7;
      label264:
      int i8;
      if ((i4 != 0) || (i5 != 0))
      {
        if (i4 != 0) {
          this.m.requestFocus();
        }
        if (gl.c(localViberApplication))
        {
          if (i4 == 0)
          {
            int i9 = i1;
            a(i9);
          }
        }
        else
        {
          if ((gl.e(getActivity())) && (!ViberApplication.isTablet())) {
            break label386;
          }
          if (i4 != 0) {
            bc.a().a(com.viber.voip.a.a.g.c());
          }
          View localView1 = this.l;
          i7 = 0;
          if (i4 == 0) {
            break label371;
          }
          localView1.setVisibility(i7);
          i();
          View localView2 = this.l;
          FragmentActivity localFragmentActivity = getActivity();
          if (i4 == 0) {
            break label378;
          }
          i8 = 2130968590;
          label297:
          localView2.startAnimation(AnimationUtils.loadAnimation(localFragmentActivity, i8));
        }
      }
      for (;;)
      {
        return i1;
        i2 = 0;
        break;
        label317:
        i3 = 0;
        break label95;
        label323:
        i4 = 0;
        break label114;
        label329:
        i5 = 0;
        break label137;
        label335:
        if (i3 == 0) {
          break label392;
        }
        this.k.setVisibility(8);
        this.m.setText("");
        i6 = i1;
        break label173;
        int i10 = 0;
        break label211;
        label371:
        i7 = 8;
        break label264;
        label378:
        i8 = 2130968591;
        break label297;
        label386:
        i1 = i6;
      }
      label392:
      i6 = 0;
    }
  }
  
  private void j()
  {
    int i1;
    ImageView localImageView;
    int i2;
    if (!TextUtils.isEmpty(this.m.getText()))
    {
      i1 = 1;
      localImageView = this.n;
      i2 = 0;
      if (i1 == 0) {
        break label37;
      }
    }
    for (;;)
    {
      localImageView.setVisibility(i2);
      return;
      i1 = 0;
      break;
      label37:
      i2 = 8;
    }
  }
  
  private void k()
  {
    this.N = new PhoneFragmentModeManager(this, this, this.f, this.Q);
    this.N.a(x());
    com.a.a.a.a locala = new com.a.a.a.a();
    this.d = new u(this, this.g);
    this.d.a(this);
    this.c = new p(this, this.f, this.d, this.N);
    this.c.a(this);
    locala.a(this.c);
    locala.a(this.d);
    getListView().setOnScrollListener(this);
    getListView().setOnItemLongClickListener(this);
    getListView().setOnTouchListener(this);
    getListView().setFastScrollEnabled(false);
    ListView localListView = getListView();
    boolean bool = ViberApplication.isTablet();
    int i1 = 0;
    if (bool) {
      i1 = 1;
    }
    localListView.setChoiceMode(i1);
    if ((ViberApplication.isTablet()) && (Build.VERSION.SDK_INT >= 11)) {
      gl.a(getListView(), 1);
    }
    setListAdapter(locala);
  }
  
  private void l()
  {
    if ((this.T != null) && (TextUtils.isEmpty(this.m.getPhoneTypeText())))
    {
      this.m.setPhoneFieldText(i.a(this.T));
      return;
    }
    com.viber.voip.viberout.e.c().b(this.m.getPhoneTypeText());
    String str = PhoneNumberUtils.stripSeparators(this.m.getPhoneTypeText());
    a(hd.a(ViberApplication.getInstance(), str, str), false, true, null);
  }
  
  private void m()
  {
    boolean bool1 = true;
    ImageButton localImageButton1 = this.C;
    boolean bool2;
    ImageButton localImageButton2;
    if (this.m.getPhoneFieldLength() != 0)
    {
      bool2 = bool1;
      localImageButton1.setEnabled(bool2);
      localImageButton2 = this.E;
      if (this.m.getPhoneFieldLength() == 0) {
        break label52;
      }
    }
    for (;;)
    {
      localImageButton2.setEnabled(bool1);
      return;
      bool2 = false;
      break;
      label52:
      bool1 = false;
    }
  }
  
  private boolean n()
  {
    ISoundService localISoundService = this.H;
    boolean bool = false;
    if (localISoundService != null) {
      bool = this.H.shouldVibrate(0);
    }
    return bool;
  }
  
  private void o()
  {
    if ((this.J) && (n()))
    {
      d("vibrateShort");
      this.G.vibrate(35L);
    }
  }
  
  private void p()
  {
    if ((this.J) && (n()))
    {
      d("vibrateLong");
      this.G.vibrate(200L);
    }
  }
  
  private void q()
  {
    this.l.setVisibility(8);
  }
  
  private boolean r()
  {
    return (this.l != null) && (this.l.getVisibility() == 0);
  }
  
  private String s()
  {
    if (this.f != null) {
      return this.f.c();
    }
    return "";
  }
  
  protected void a(int paramInt)
  {
    this.S.a(paramInt, this);
  }
  
  public void a(Intent paramIntent)
  {
    if (paramIntent.hasExtra("open_keypad_number"))
    {
      e(paramIntent.getStringExtra("open_keypad_number"));
      if (r()) {
        paramIntent.removeExtra("open_keypad_number");
      }
    }
  }
  
  public void a(String paramString)
  {
    this.E.setEnabled(false);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    a(paramString, paramBoolean, false, com.viber.voip.a.a.s.c.a());
  }
  
  public void a(List<Integer> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      ArrayList localArrayList = new ArrayList(paramList.size());
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        int i1 = ((Integer)localIterator.next()).intValue();
        localArrayList.add(this.f.a(i1));
      }
      ViberApplication.getInstance().getRecentCallsManager().a(localArrayList, null);
    }
    this.N.e();
  }
  
  public boolean a()
  {
    return (this.f != null) && (this.f.isInit()) && (this.f.getCount() > 0);
  }
  
  public void a_()
  {
    this.E.setEnabled(true);
  }
  
  void b(int paramInt)
  {
    if ((!this.I) || (this.H == null)) {}
    int i1;
    do
    {
      return;
      i1 = this.H.getRingerMode();
    } while ((i1 == 0) || (i1 == 1));
    synchronized (this.F)
    {
      this.H.playDTMFTone(paramInt, 150);
      return;
    }
  }
  
  public boolean b()
  {
    return (this.f != null) && (this.f.isInit());
  }
  
  public void d() {}
  
  public void e()
  {
    this.c.notifyDataSetChanged();
  }
  
  public void e(boolean paramBoolean)
  {
    if (getView() == null) {}
    ListView localListView;
    do
    {
      return;
      localListView = getListView();
      if ((paramBoolean) && (localListView.getPaddingBottom() == 0))
      {
        int i1 = getResources().getDimensionPixelSize(2131362223);
        localListView.setPadding(localListView.getPaddingLeft(), localListView.getPaddingTop(), localListView.getPaddingRight(), i1);
        localListView.setClipToPadding(false);
        return;
      }
    } while ((paramBoolean) || (localListView.getPaddingBottom() == 0));
    localListView.setPadding(localListView.getPaddingLeft(), localListView.getPaddingTop(), localListView.getPaddingRight(), 0);
    localListView.setClipToPadding(true);
  }
  
  public void f()
  {
    m();
  }
  
  protected boolean g()
  {
    return !b();
  }
  
  protected void h()
  {
    this.e.a(getView(), this, this, this);
    this.e.a(true, s());
    this.f = ((com.viber.voip.calls.a.a)a.getServiceWrapper(1).getInstance(this));
    this.g = ((com.viber.voip.contacts.e.a)b.getServiceWrapper(3).getInstance(this));
    this.f.a(0, this.m.getText().toString().trim());
    this.g.c(4);
    k();
    b(this.m.getText().toString().trim());
  }
  
  protected void i()
  {
    com.viber.voip.f.j localj = ViberApplication.getInstance().getPromoHandler();
    ViberApplication.getInstance().getPromoHandler().c(true);
    if (localj.d())
    {
      FragmentActivity localFragmentActivity = getActivity();
      if ((!ViberApplication.isTablet()) && ((localFragmentActivity instanceof HomeActivity)) && (isVisible()) && (2 == ((HomeActivity)localFragmentActivity).b())) {
        if ((this.l == null) || (this.l.getVisibility() == 0) || (gl.e(localFragmentActivity)) || (this.N == null) || (this.N.c())) {
          break label114;
        }
      }
    }
    label114:
    for (boolean bool = true;; bool = false)
    {
      ViberApplication.getInstance().getPromoHandler().a(bool);
      return;
    }
  }
  
  public void initialized(PhoneController paramPhoneController)
  {
    this.H = ViberApplication.getInstance().getSoundService();
    this.G = this.H.getVibratorService();
    com.viber.voip.phone.call.k localk = ViberApplication.getInstance().getPhoneController(false).getCurrentCall();
    if (localk != null)
    {
      this.H.setSpeakerphoneOn(localk.d().s());
      return;
    }
    this.H.setSpeakerphoneOn(false);
  }
  
  public boolean isPaused()
  {
    return getActivity() == null;
  }
  
  public boolean onActivityBackPressed()
  {
    return f(2);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      this.M = paramBundle.getString("edit_text");
      d("onActivityCreated number:" + this.M);
      if (this.M != null) {
        this.m.setPhoneFieldText(this.M);
      }
      this.Q = ((PhoneFragmentModeManager.PhoneFragmentModeManagerData)paramBundle.getParcelable("mode_manager"));
    }
  }
  
  public boolean onActivityKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default: 
      return false;
    }
    c(getListView().getSelectedItemPosition());
    return true;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 10) && (paramInt2 == -1)) {
      this.m.b();
    }
  }
  
  public boolean onActivitySearchRequested()
  {
    return false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof j)) {
      throw new ClassCastException("Activity must implement fragment's callbacks.");
    }
    this.S = ((j)paramActivity);
  }
  
  @TargetApi(11)
  public void onClick(View paramView)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("onClick view.getId():").append(paramView.getId()).append(",query:");
    String str1;
    if (this.f != null)
    {
      str1 = this.f.c();
      d(str1);
      switch (paramView.getId())
      {
      }
    }
    do
    {
      String str2;
      do
      {
        do
        {
          do
          {
            return;
            str1 = "";
            break;
          } while (isDetached());
          try
          {
            startActivity(new Intent("com.viber.voip.action.YOU"));
            return;
          }
          catch (IllegalStateException localIllegalStateException)
          {
            return;
          }
          f(0);
          return;
          l();
          return;
        } while (this.f == null);
        if (dj.d())
        {
          l();
          return;
        }
        str2 = this.f.c();
      } while (TextUtils.isEmpty(str2));
      bc.a().a(com.viber.voip.a.a.g.d());
      c(str2);
      return;
    } while (TextUtils.isEmpty(this.m.getText()));
    this.m.setText("");
    this.m.requestFocus();
  }
  
  public boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    i locali = this.T;
    if (paramMenuItem.getItemId() == 2131166302) {}
    for (boolean bool = true;; bool = false)
    {
      a(locali, bool);
      return super.onContextItemSelected(paramMenuItem);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    this.G = null;
    this.P = w.a(getActivity());
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    getActivity().getMenuInflater().inflate(2131755019, paramContextMenu);
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, com.actionbarsherlock.view.MenuInflater paramMenuInflater)
  {
    int i1 = 2130838267;
    if ((!c()) || (r())) {}
    int i2;
    int i3;
    do
    {
      return;
      Log.d("onCreateOptionsMenu", "Phone fragment");
      paramMenuInflater.inflate(2131755016, paramMenu);
      i2 = getNewPackagesCount();
      this.i = paramMenu.findItem(2131166269);
      com.actionbarsherlock.view.MenuItem localMenuItem = this.i;
      if (i2 <= 0) {
        break;
      }
      i3 = i1;
      localMenuItem.setIcon(i3);
      this.h = paramMenu.findItem(2131166295);
    } while (ViberApplication.isTablet());
    this.h.getActionView().findViewById(2131165481).setOnClickListener(this);
    this.j = ((ImageView)this.h.getActionView().findViewById(2131165483));
    ImageView localImageView = this.j;
    if (i2 > 0) {}
    for (;;)
    {
      localImageView.setImageResource(i1);
      this.j.setOnClickListener(this);
      return;
      i3 = 2130838266;
      break;
      i1 = 2130838266;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903075, paramViewGroup, false);
    a(localView, paramBundle);
    return localView;
  }
  
  public void onDataChange(EntityService<?> paramEntityService, int paramInt, Entity... paramVarArgs)
  {
    if (((paramEntityService instanceof com.viber.voip.calls.a.a)) && (this.e.e())) {
      this.e.a(false, s());
    }
    a(paramEntityService);
  }
  
  public void onDataReady(EntityService<?> paramEntityService)
  {
    if ((paramEntityService instanceof com.viber.voip.calls.a.a)) {
      this.e.a(false, s());
    }
    a(paramEntityService);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (this.f != null) {
      a.getServiceWrapper(1).destroy();
    }
    if (b != null) {
      b.getServiceWrapper(3).destroy();
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.S = R;
  }
  
  public void onFragmentVisibilityChanged(boolean paramBoolean)
  {
    super.onFragmentVisibilityChanged(paramBoolean);
    if ((ViberApplication.isTablet()) || (!b())) {}
    do
    {
      boolean bool;
      do
      {
        return;
        bool = gl.e(getActivity());
      } while ((paramBoolean) || (bool));
      q();
    } while (this.m.length() != 0);
    this.k.setVisibility(8);
  }
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    s locals = (s)paramView.getTag();
    boolean bool;
    if (locals == null) {
      bool = false;
    }
    do
    {
      return bool;
      if (locals.a() == null) {
        return false;
      }
      if (!TextUtils.isEmpty(this.f.c())) {
        return false;
      }
      bool = this.N.b(paramInt, locals.a());
    } while (!bool);
    getListView().setItemChecked(paramInt, true);
    return bool;
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    d(paramInt);
    Object localObject = getListAdapter().getItem(paramInt);
    if (localObject == null) {
      return;
    }
    AggregatedCallEntity localAggregatedCallEntity2;
    String str3;
    label121:
    boolean bool;
    label162:
    Intent localIntent;
    if (!this.N.c()) {
      if ((localObject instanceof AggregatedCallEntity))
      {
        localAggregatedCallEntity2 = (AggregatedCallEntity)localObject;
        com.viber.voip.contacts.b.b localb2 = localAggregatedCallEntity2.c();
        if (localb2 != null)
        {
          com.viber.voip.contacts.b.i locali = localb2.i();
          long l1 = localb2.getId();
          long l2 = localb2.c();
          String str1 = localb2.g();
          String str2 = localAggregatedCallEntity2.g();
          if (locali != null)
          {
            str3 = locali.a();
            String str4 = localb2.a();
            Uri localUri = localb2.b();
            if ((!localAggregatedCallEntity2.k()) || (!localb2.e())) {
              break label220;
            }
            bool = true;
            localIntent = gn.a(l1, l2, str1, str2, str3, str4, localUri, bool, (CallEntity[])localAggregatedCallEntity2.d().toArray(new CallEntity[0]));
          }
        }
      }
    }
    for (;;)
    {
      this.S.b(localIntent);
      return;
      str3 = null;
      break label121;
      label220:
      bool = false;
      break label162;
      localIntent = gn.a(localAggregatedCallEntity2.g(), localAggregatedCallEntity2.k(), (CallEntity[])localAggregatedCallEntity2.d().toArray(new CallEntity[0]));
      continue;
      if ((localObject instanceof com.viber.voip.contacts.b.b))
      {
        com.viber.voip.contacts.b.b localb1 = (com.viber.voip.contacts.b.b)localObject;
        localIntent = gn.a(localb1.getId(), localb1.c(), localb1.a(), localb1.g(), localb1.b(), null, com.viber.voip.a.a.s.a());
        continue;
        if ((localObject instanceof AggregatedCallEntity))
        {
          AggregatedCallEntity localAggregatedCallEntity1 = (AggregatedCallEntity)localObject;
          this.N.a(paramInt, localAggregatedCallEntity1);
          return;
        }
        if (!(localObject instanceof com.viber.voip.contacts.b.b)) {
          break;
        }
        this.N.a(paramInt, null);
        return;
      }
      localIntent = null;
    }
  }
  
  public void onNewStickerPackageCountChanged(int paramInt)
  {
    int i1 = 2130838267;
    com.actionbarsherlock.view.MenuItem localMenuItem = this.i;
    int i2;
    ImageView localImageView;
    if (paramInt > 0)
    {
      i2 = i1;
      localMenuItem.setIcon(i2);
      if (this.j != null)
      {
        localImageView = this.j;
        if (paramInt <= 0) {
          break label57;
        }
      }
    }
    for (;;)
    {
      localImageView.setImageResource(i1);
      return;
      i2 = 2130838266;
      break;
      label57:
      i1 = 2130838266;
    }
  }
  
  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    startActivity(new Intent("com.viber.voip.action.YOU"));
    return true;
  }
  
  public void onPause()
  {
    d("onPause");
    super.onPause();
    this.P.a(false);
    ViberApplication.getInstance().getPhoneController(false).removeInitializedListener(this);
    if (this.H != null) {
      this.H.stopDTMFTone();
    }
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool1 = true;
    FragmentActivity localFragmentActivity = getActivity();
    if ((localFragmentActivity == null) || (!c()) || (this.h == null) || (this.i == null) || (isDetached())) {
      return;
    }
    ViberApplication localViberApplication = ViberApplication.getInstance();
    boolean bool2;
    com.actionbarsherlock.view.MenuItem localMenuItem;
    if ((!gl.e(localViberApplication)) && (gl.c(localViberApplication)))
    {
      bool2 = bool1;
      this.h.setVisible(bool2);
      localMenuItem = this.i;
      if (bool2) {
        break label111;
      }
    }
    for (;;)
    {
      localMenuItem.setVisible(bool1);
      a(localFragmentActivity.getIntent());
      return;
      bool2 = false;
      break;
      label111:
      bool1 = false;
    }
  }
  
  public void onResume()
  {
    int i1 = 1;
    super.onResume();
    d("onResume");
    ViberApplication.getInstance().getPhoneController(false).addInitializedListener(this);
    this.m.c();
    Uri localUri = getActivity().getIntent().getData();
    d("onResume Intent data:" + localUri);
    if ((localUri != null) && (localUri.getScheme() != null) && (localUri.getScheme().equals("tel"))) {
      this.m.setPhoneFieldText(localUri.getSchemeSpecificPart());
    }
    m();
    if (Settings.System.getInt(getActivity().getContentResolver(), "dtmf_tone", i1) == i1) {}
    for (;;)
    {
      this.I = i1;
      this.J = ViberApplication.preferences().b(com.viber.voip.settings.j.w(), com.viber.voip.settings.j.x());
      this.m.b();
      if (this.c != null) {
        this.c.notifyDataSetChanged();
      }
      if (this.d != null) {
        this.d.notifyDataSetChanged();
      }
      return;
      i1 = 0;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("edit_text", this.m.getPhoneTypeText());
    if ((c()) && (this.N != null)) {
      paramBundle.putParcelable("mode_manager", this.N.a());
    }
    if (this.l.getVisibility() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramBundle.putBoolean("show_keyboard", bool);
      paramBundle.putString("number", this.m.getPhoneTypeText());
      return;
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 2)
    {
      this.P.a(true);
      return;
    }
    this.P.a(false);
  }
  
  public void onStart()
  {
    super.onStart();
    if (this.f != null) {
      a.getServiceWrapper(1).start(this);
    }
    if (b != null) {
      b.getServiceWrapper(3).start(this);
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (this.f != null) {
      a.getServiceWrapper(1).stop(this);
    }
    if (b != null) {
      b.getServiceWrapper(3).stop(this);
    }
  }
  
  public void onTabReselected()
  {
    y();
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    f(1);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.ui.PhoneFragment
 * JD-Core Version:    0.7.0.1
 */