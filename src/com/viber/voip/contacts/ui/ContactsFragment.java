package com.viber.voip.contacts.ui;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
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
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.widget.SearchView;
import com.viber.logger.QaLogger;
import com.viber.logger.QaLogger.QaScreenChangeEvent;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.c;
import com.viber.voip.billing.PurchaseSupportActivity;
import com.viber.voip.contacts.a.n;
import com.viber.voip.contacts.a.s;
import com.viber.voip.contacts.a.t;
import com.viber.voip.contacts.a.u;
import com.viber.voip.contacts.a.v;
import com.viber.voip.contacts.a.x;
import com.viber.voip.contacts.c.d.at;
import com.viber.voip.contacts.c.d.au;
import com.viber.voip.contacts.c.d.f;
import com.viber.voip.contacts.c.d.m;
import com.viber.voip.contacts.g;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.f.j;
import com.viber.voip.messages.extras.fb.FacebookLikeDialogActivity;
import com.viber.voip.registration.dj;
import com.viber.voip.ui.ContactsListView;
import com.viber.voip.ui.ab;
import com.viber.voip.ui.y;
import com.viber.voip.util.ap;
import com.viber.voip.util.b.w;
import com.viber.voip.util.bm;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.util.gu;
import com.viber.voip.util.hd;

public class ContactsFragment
  extends com.viber.voip.ui.h
  implements View.OnClickListener, View.OnTouchListener, AbsListView.OnScrollListener, com.viber.provider.e, s, au, f, com.viber.voip.d, com.viber.voip.f.h, ab
{
  private static final String q = ContactsFragment.class.getSimpleName();
  private boolean A;
  private View B;
  private w C;
  private final Runnable D = new bf(this);
  private BroadcastReceiver E = new bk(this);
  protected com.viber.voip.contacts.b a;
  protected bp b;
  protected com.viber.voip.contacts.c.d.b c;
  protected com.viber.voip.ui.k d;
  protected bu e;
  protected Handler f = dc.a(dk.a);
  protected int g = -1;
  protected com.viber.voip.messages.i h;
  protected com.viber.voip.ui.d i;
  protected ContactsListView j;
  protected com.a.a.a.a k;
  protected x l;
  protected t m;
  protected v n;
  protected n o;
  protected u p;
  private int t = -1;
  private int u;
  private long v = -1L;
  private bl w;
  private com.actionbarsherlock.view.MenuItem x;
  private com.actionbarsherlock.view.MenuItem y;
  private com.actionbarsherlock.view.MenuItem z;
  
  public ContactsFragment()
  {
    super(1);
  }
  
  private View a(View paramView, int paramInt1, int paramInt2, int paramInt3, View.OnClickListener paramOnClickListener)
  {
    int i1 = 1;
    View localView = paramView.findViewById(paramInt1);
    localView.setOnClickListener(paramOnClickListener);
    TextView localTextView;
    if (paramInt2 == paramInt3)
    {
      int i2 = i1;
      localView.setSelected(i2);
      localTextView = (TextView)localView;
      if (paramInt2 != paramInt3) {
        break label64;
      }
    }
    for (;;)
    {
      localTextView.setTypeface(null, i1);
      return localView;
      int i3 = 0;
      break;
      label64:
      i1 = 0;
    }
  }
  
  private View a(View paramView, int paramInt, boolean paramBoolean)
  {
    if ((!o()) || (paramView == null))
    {
      paramView = null;
      return paramView;
    }
    TextView localTextView = (TextView)paramView.findViewById(2131165684);
    int i1;
    label34:
    View localView;
    int i2;
    if (paramBoolean)
    {
      i1 = 2131494410;
      localTextView.setText(i1);
      a(paramView, 2131165684, paramInt, 0, this);
      a(paramView, 2131165685, paramInt, 1, this);
      localView = paramView.findViewById(2131165686);
      i2 = 0;
      if (!paramBoolean) {
        break label109;
      }
    }
    for (;;)
    {
      localView.setVisibility(i2);
      if (!paramBoolean) {
        break;
      }
      a(paramView, 2131165686, paramInt, 2, this);
      return paramView;
      i1 = 2131494411;
      break label34;
      label109:
      i2 = 8;
    }
  }
  
  private void a(boolean paramBoolean, com.viber.voip.contacts.b.e parame)
  {
    this.v = parame.getId();
    com.viber.voip.contacts.b.i locali = parame.i();
    long l1 = parame.getId();
    long l2 = parame.c();
    String str1 = parame.a();
    String str2 = parame.g();
    Uri localUri = parame.b();
    String str3;
    if (locali != null)
    {
      str3 = locali.a();
      if (!parame.e()) {
        break label142;
      }
    }
    label142:
    for (String str4 = com.viber.voip.a.a.s.a.a();; str4 = com.viber.voip.a.a.s.b.a())
    {
      Intent localIntent = gn.a(false, l1, l2, str1, str2, localUri, null, str3, str4);
      this.w.a(paramBoolean, localIntent);
      this.o.a(parame.getId());
      return;
      str3 = null;
      break;
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    this.c.b(this);
    if (paramInt >= this.u) {
      this.f.post(new bj(this, paramBoolean1));
    }
  }
  
  private void b(String paramString) {}
  
  private void f(boolean paramBoolean)
  {
    bc.a().a(com.viber.voip.a.a.s.d());
    this.v = x.i;
    this.o.a(-1L);
    this.w.a(paramBoolean, new Intent("com.viber.voip.action.YOU"));
  }
  
  private void g(boolean paramBoolean)
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity == null) {
      return;
    }
    if (((!gl.e(localFragmentActivity)) && (gl.c(ViberApplication.getInstance()))) || (!paramBoolean))
    {
      if (!paramBoolean) {}
      for (boolean bool = true;; bool = false)
      {
        c(bool);
        return;
      }
    }
    c(paramBoolean);
  }
  
  private com.viber.voip.contacts.b.e v()
  {
    int i1 = e(0);
    if (this.v != -1L)
    {
      if (this.g != 2) {
        break label172;
      }
      i1 = this.a.b(this.v);
    }
    for (com.viber.voip.contacts.b.e locale = this.m.a(i1);; locale = null)
    {
      if (-1 == i1)
      {
        int i2 = this.a.a(this.v);
        locale = this.n.a(i2);
        i1 = i2 + this.m.getCount() + this.l.getCount();
      }
      if (locale == null)
      {
        locale = this.n.a(0);
        i1 = 0 + this.l.getCount();
      }
      for (;;)
      {
        d(i1);
        return locale;
        if ((this.g == 2) && (!this.m.isEmpty()))
        {
          locale = this.m.a(i1);
        }
        else
        {
          locale = this.n.a(i1);
          i1 += this.l.getCount();
        }
      }
      label172:
      i1 = -1;
    }
  }
  
  protected void a()
  {
    this.j.setupViews(false);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (this.t != paramInt)
    {
      this.t = paramInt;
      if (!paramBoolean) {
        this.a.g();
      }
      this.e.a(getActivity(), this.t);
      if ((paramInt == 3) && (!ViberApplication.preferences().b("preff_dialog_failed_shown", false)) && (!ViberApplication.getInstance().isOnForeground())) {
        ap.a(getActivity(), new bi(this));
      }
    }
  }
  
  public void a(Intent paramIntent)
  {
    if (bm.b(paramIntent)) {
      if (this.a != null) {}
    }
    while ((!bm.a(paramIntent)) && (!bm.d(paramIntent)))
    {
      String str;
      do
      {
        return;
        this.v = paramIntent.getLongExtra("contact_id", -1L);
        str = paramIntent.getStringExtra("con_number");
        if (this.v != -1L)
        {
          d(this.a.a(this.v));
          w();
          return;
        }
      } while (TextUtils.isEmpty(str));
      getListView().clearChoices();
      Intent localIntent = gn.a(str, com.viber.voip.a.a.s.a.a());
      this.w.a(false, localIntent);
      this.o.a(-1L);
      return;
    }
    this.v = x.i;
    FragmentActivity localFragmentActivity = getActivity();
    if (((localFragmentActivity instanceof HomeActivity)) && (((HomeActivity)localFragmentActivity).k())) {
      ((HomeActivity)localFragmentActivity).j();
    }
    w();
  }
  
  public void a(com.viber.provider.b paramb) {}
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    this.k.notifyDataSetChanged();
    this.n.notifyDataSetChanged();
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity == null) {
      return;
    }
    bu localbu = this.e;
    int i1 = f();
    int i2 = this.t;
    boolean bool1 = j();
    if ((this.a.d_()) || (!TextUtils.isEmpty(this.s))) {}
    for (boolean bool2 = true;; bool2 = false)
    {
      boolean bool3 = o();
      boolean bool4 = false;
      if (bool3)
      {
        boolean bool5 = this.A;
        bool4 = false;
        if (bool5) {
          bool4 = true;
        }
      }
      localbu.a(i1, i2, bool1, bool2, bool4);
      if (ViberApplication.isTablet())
      {
        if (((localFragmentActivity instanceof HomeActivity)) && (!s())) {
          ((HomeActivity)localFragmentActivity).j();
        }
        if ((!(localFragmentActivity instanceof HomeActivity)) || (!((HomeActivity)localFragmentActivity).k())) {
          w();
        }
      }
      i();
      return;
    }
  }
  
  public void a(com.viber.voip.contacts.b.e parame)
  {
    if ((parame == null) || (getActivity() == null)) {
      return;
    }
    bc.a().a(com.viber.voip.a.a.s.c());
    Uri localUri = parame.b();
    if (parame.e()) {}
    for (String str = com.viber.voip.a.a.s.a.a();; str = com.viber.voip.a.a.s.b.a())
    {
      gn.a(getActivity(), parame.getId(), parame.c(), parame.a(), parame.g(), localUri, str);
      return;
    }
  }
  
  protected void a(boolean paramBoolean, com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    if (c())
    {
      this.d.a(paramMenuItem, this.r, paramBoolean, this.s);
      a(this.r);
    }
  }
  
  public boolean a(String paramString)
  {
    this.s = paramString;
    if (this.a != null) {
      this.a.a(paramString, hd.a(paramString));
    }
    for (;;)
    {
      return true;
      b("onQueryTextChange: mContactsLoader is null");
    }
  }
  
  public boolean a(boolean paramBoolean)
  {
    this.r = paramBoolean;
    b(paramBoolean);
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      d(bool);
      return true;
    }
  }
  
  public void b(int paramInt)
  {
    a(true, false, paramInt);
  }
  
  public void b(int paramInt, boolean paramBoolean)
  {
    a(paramBoolean, true, paramInt);
  }
  
  public void b(boolean paramBoolean)
  {
    boolean bool1 = true;
    FragmentActivity localFragmentActivity = getActivity();
    boolean bool2;
    ContactsListView localContactsListView;
    if ((localFragmentActivity instanceof HomeActivity))
    {
      ((HomeActivity)localFragmentActivity).a(paramBoolean);
      j localj = ViberApplication.getInstance().getPromoHandler();
      if (!paramBoolean)
      {
        bool2 = bool1;
        localj.c(bool2);
        i();
      }
    }
    else
    {
      g(paramBoolean);
      if (this.j != null)
      {
        localContactsListView = this.j;
        if ((paramBoolean) || (!k())) {
          break label90;
        }
      }
    }
    for (;;)
    {
      localContactsListView.setEnablePull(bool1);
      return;
      bool2 = false;
      break;
      label90:
      bool1 = false;
    }
  }
  
  public boolean b()
  {
    return (this.a != null) && (this.a.a());
  }
  
  protected void b_()
  {
    if (this.o == null) {
      return;
    }
    if (t())
    {
      int i2 = getListView().getHeaderViewsCount() + this.o.getCount() + this.m.getCount();
      getListView().setItemChecked(i2, true);
      f(false);
      return;
    }
    this.o.a(this.v);
    com.viber.voip.contacts.b.e locale = v();
    int i1 = e(0) + getListView().getHeaderViewsCount() + this.o.getCount() + this.p.getCount();
    if (locale != null)
    {
      getListView().setItemChecked(i1, true);
      a(false, locale);
      return;
    }
    this.w.a(0, this);
  }
  
  public void b_(int paramInt)
  {
    a(false, false, paramInt);
  }
  
  @TargetApi(8)
  public void c(int paramInt)
  {
    int i1 = 1;
    if (Build.VERSION.SDK_INT >= 8) {
      getListView().smoothScrollBy(0, 0);
    }
    int i2;
    label99:
    n localn;
    if (this.g != paramInt)
    {
      if (((paramInt != 2) || ((this.g != i1) && (this.g != 0))) && ((this.g != 2) || ((paramInt != i1) && (paramInt != 0)))) {
        break label245;
      }
      i2 = i1;
      this.g = paramInt;
      this.a.e(this.g);
      t localt = this.m;
      if (this.g != 2) {
        break label250;
      }
      int i3 = i1;
      localt.a(i3);
      if (i2 != 0)
      {
        x localx = this.l;
        if ((this.g != i1) && (this.g != 0)) {
          break label256;
        }
        int i5 = i1;
        label134:
        localx.a(i5);
        localn = this.o;
        if ((this.g != i1) && (this.g != 0)) {
          break label262;
        }
      }
    }
    for (;;)
    {
      localn.a(i1);
      this.o.notifyDataSetChanged();
      q();
      a(this.e.s, this.g, this.A);
      a(this.B, this.g, this.A);
      ViberApplication.preferences().a("contacts_filter", this.g);
      d(0);
      this.v = -1L;
      return;
      label245:
      i2 = 0;
      break;
      label250:
      int i4 = 0;
      break label99;
      label256:
      int i6 = 0;
      break label134;
      label262:
      i1 = 0;
    }
  }
  
  protected void c(boolean paramBoolean)
  {
    if (this.x != null) {
      this.x.setVisible(paramBoolean);
    }
    if (this.x != null) {
      this.y.setVisible(paramBoolean);
    }
    if (this.z != null) {
      this.z.setVisible(paramBoolean);
    }
  }
  
  public com.viber.voip.contacts.b d()
  {
    if (ViberApplication.isTablet()) {
      return new g(getActivity(), getLoaderManager(), this.c, this);
    }
    return new com.viber.voip.contacts.b(getActivity(), getLoaderManager(), this.c, this);
  }
  
  protected void d(boolean paramBoolean)
  {
    if ((getView() == null) || (this.j == null)) {
      return;
    }
    if (Build.VERSION.SDK_INT >= 11) {
      gl.a(this.j, paramBoolean);
    }
    this.j.setFastScrollEnabled(paramBoolean);
  }
  
  public int e()
  {
    return getActivity().getResources().getInteger(2131427338);
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
  
  public int f()
  {
    return this.g;
  }
  
  protected boolean g()
  {
    return (this.a != null) && (!this.a.a());
  }
  
  protected void h()
  {
    View localView = getView().findViewById(2131165662);
    if (o()) {}
    for (int i1 = 0;; i1 = 8)
    {
      localView.setVisibility(i1);
      this.e.a(getView(), this);
      if (o())
      {
        a(this.e.s, this.g, this.A);
        a(this.B, this.g, this.A);
      }
      a();
      this.j.setOnCreateContextMenuListener(this);
      ContactsListView localContactsListView = this.j;
      boolean bool = ViberApplication.isTablet();
      int i2 = 0;
      if (bool) {
        i2 = 1;
      }
      localContactsListView.setChoiceMode(i2);
      this.e.s.setOnTouchListener(this);
      this.a.n();
      if (TextUtils.isEmpty(this.s)) {
        break;
      }
      this.a.a(this.s, hd.a(this.s), f());
      return;
    }
    this.a.f(f());
  }
  
  protected void i()
  {
    if (ViberApplication.getInstance().getPromoHandler().d())
    {
      FragmentActivity localFragmentActivity = getActivity();
      if ((!ViberApplication.isTablet()) && ((localFragmentActivity instanceof HomeActivity)) && (isVisible()) && (1 == ((HomeActivity)localFragmentActivity).b())) {
        if (((HomeActivity)localFragmentActivity).getSupportActionBar().getNavigationMode() != 2) {
          break label75;
        }
      }
    }
    label75:
    for (boolean bool = true;; bool = false)
    {
      ViberApplication.getInstance().getPromoHandler().a(bool);
      return;
    }
  }
  
  public boolean j()
  {
    return false;
  }
  
  protected boolean k()
  {
    return !dj.d();
  }
  
  protected boolean l()
  {
    return true;
  }
  
  protected boolean m()
  {
    return true;
  }
  
  protected boolean n()
  {
    return true;
  }
  
  protected boolean o()
  {
    return true;
  }
  
  public boolean onActivityBackPressed()
  {
    return false;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    int i1 = 1;
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      this.g = paramBundle.getInt("last_mode", -1);
      this.v = paramBundle.getLong("selected_contact_id", x.i);
    }
    if (this.g == -1)
    {
      this.g = ViberApplication.preferences().b("contacts_filter", i1);
      if ((this.g == 2) && (!this.A)) {
        this.g = i1;
      }
    }
    this.a = d();
    this.l = new x(getActivity(), this.h, this.a.u());
    x localx = this.l;
    label217:
    t localt;
    if ((this.g == i1) || (this.g == 0))
    {
      int i3 = i1;
      localx.a(i3);
      this.n = new v(getActivity(), this.a.u());
      this.o = new n(getActivity(), this.a.r(), e(), this);
      n localn = this.o;
      if ((this.g != i1) && (this.g != 0)) {
        break label436;
      }
      int i5 = i1;
      localn.a(i5);
      this.p = new u(getActivity(), this.a.s());
      this.m = new t(getActivity(), this.a.t());
      localt = this.m;
      if (this.g != 2) {
        break label442;
      }
    }
    for (;;)
    {
      localt.a(i1);
      this.k = new com.a.a.a.a();
      this.j.setEnablSmoothOverscroll(false);
      ContactsListView localContactsListView = this.j;
      localContactsListView.getClass();
      this.i = new com.viber.voip.ui.d(localContactsListView);
      this.j.a(new y(this.j.getContext(), 2130903312, 2131166093, 2131166095, 2131494166, 2131494167), this.i);
      this.j.setEnablePull(k());
      this.j.setOnRefreshListener(new bg(this));
      p();
      this.j.setAdapter(this.k);
      this.j.setOnScrollListener(this);
      this.j.setOnTouchListener(this);
      return;
      int i4 = 0;
      break;
      label436:
      int i6 = 0;
      break label217;
      label442:
      int i2 = 0;
    }
  }
  
  public boolean onActivityKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof bl)) {
      throw new ClassCastException("Activity must implement fragment's callbacks.");
    }
    this.w = ((bl)paramActivity);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165684: 
      c(0);
      return;
    case 2131165686: 
      c(2);
      return;
    case 2131165685: 
      c(1);
      return;
    case 2131165675: 
      gu.a(getActivity());
      return;
    case 2131165668: 
      this.b.b();
      return;
    case 2131165679: 
      startActivity(new Intent("com.viber.voip.action.INVITE_TO_VIBER"));
      return;
    }
    this.b.b();
  }
  
  public boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    if (!getUserVisibleHint()) {}
    ak localak;
    do
    {
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo;
      do
      {
        return false;
        localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
      } while ((localAdapterContextMenuInfo == null) || (localAdapterContextMenuInfo.targetView == null));
      localak = (ak)localAdapterContextMenuInfo.targetView.getTag();
    } while ((localak == null) || (localak.a() == null));
    com.viber.voip.contacts.b.e locale = localak.a();
    com.viber.voip.contacts.b.i locali = locale.i();
    boolean bool;
    long l2;
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onContextItemSelected(paramMenuItem);
    case 2131493701: 
    case 2131493702: 
      if (!locale.d())
      {
        bool = true;
        long l1 = locale.getId();
        if (!dj.d()) {
          break label207;
        }
        l2 = locale.c();
        label183:
        bp.a(bool, l1, l2, locale.g());
      }
      break;
    }
    for (;;)
    {
      return true;
      bool = false;
      break;
      label207:
      l2 = -1L;
      break label183;
      if (locali != null)
      {
        this.b.a(locali.a());
        continue;
        if (locali != null)
        {
          this.b.a(locale.getId(), locale.c(), locali.a(), locale.a(), locale.b());
          continue;
          bp.a(getActivity(), locale.g());
          continue;
          bp.a(getActivity(), locale.getId(), locale.g(), locale.a(), null);
          continue;
          this.b.a(getActivity(), locale);
        }
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    FragmentActivity localFragmentActivity = getActivity();
    this.d = new com.viber.voip.ui.k(localFragmentActivity, this);
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    this.C = w.a(localFragmentActivity);
    this.b = new bp(localFragmentActivity);
    this.c = ViberApplication.getInstance().getContactManager();
    this.h = ViberApplication.getInstance().getMessagesManager();
    this.A = com.viber.voip.viberout.e.c().b();
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    ak localak = (ak)((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).targetView.getTag();
    if ((localak == null) || (localak.a() == null) || (localak.a().getId() == -1L)) {
      return;
    }
    com.viber.voip.contacts.b.e locale = localak.a();
    View localView = LayoutInflater.from(getActivity()).inflate(2130903151, null);
    ((TextView)localView.findViewById(2131165356)).setText(locale.a());
    paramContextMenu.setHeaderView(localView);
    if (locale.d()) {
      paramContextMenu.add(0, 2131493702, 0, 2131493702);
    }
    for (;;)
    {
      if (locale.e())
      {
        paramContextMenu.add(0, 2131165256, 0, 2131494067);
        paramContextMenu.add(0, 2131165257, 0, 2131494069);
      }
      if (!dj.d()) {
        getActivity().getMenuInflater().inflate(2131755021, paramContextMenu);
      }
      super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
      return;
      paramContextMenu.add(0, 2131493701, 0, 2131493701);
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, com.actionbarsherlock.view.MenuInflater paramMenuInflater)
  {
    if ((!c()) || (isDetached()) || (getActivity() == null)) {
      return;
    }
    Context localContext = ViberApplication.getInstance().getApplicationContext();
    Log.d("onCreateOptionsMenu", "Contacts fragment");
    paramMenuInflater.inflate(2131755009, paramMenu);
    com.actionbarsherlock.view.MenuItem localMenuItem = paramMenu.findItem(2131166267);
    this.x = paramMenu.findItem(2131166268);
    this.y = paramMenu.findItem(2131166269);
    paramMenu.removeItem(2131166270);
    if ((gl.a(localContext)) && (!gl.c(localContext))) {
      this.y.setShowAsAction(0);
    }
    for (;;)
    {
      if (dj.d()) {
        paramMenu.removeItem(2131166268);
      }
      SearchView localSearchView = (SearchView)localMenuItem.getActionView();
      localSearchView.setQueryHint(ViberApplication.getInstance().getString(2131493621));
      localSearchView.setQueryHintColor(ViberApplication.getInstance().getResources().getColor(2131296415));
      a(true, localMenuItem);
      return;
      setMoreOptionMenuIcon(this.y, getNewPackagesCount());
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903065, paramViewGroup, false);
    this.e = new bu(localView);
    this.j = ((ContactsListView)localView.findViewById(16908298));
    this.j.setEnablSmoothOverscroll(false);
    ContactsListView localContactsListView = this.j;
    localContactsListView.getClass();
    this.i = new com.viber.voip.ui.d(localContactsListView);
    this.j.a(new y(this.j.getContext(), 2130903312, 2131166093, 2131166095, 2131494166, 2131494167), this.i);
    this.j.setEnablePull(k());
    this.j.setOnRefreshListener(new bh(this));
    if (o())
    {
      this.B = paramLayoutInflater.inflate(2130903165, null);
      this.j.addHeaderView(this.B);
    }
    return localView;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    this.a.m();
    this.a.f();
    if (o()) {
      getActivity().unregisterReceiver(this.E);
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.a.l();
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    bc.a().a(com.viber.voip.a.a.s.e());
    ak localak = (ak)paramView.getTag();
    if (localak == null) {}
    com.viber.voip.contacts.b.e locale;
    do
    {
      return;
      locale = localak.a();
    } while (locale == null);
    if (localak.q) {
      f(true);
    }
    for (;;)
    {
      FragmentActivity localFragmentActivity = getActivity();
      if (!(localFragmentActivity instanceof HomeActivity)) {
        break;
      }
      ((HomeActivity)localFragmentActivity).j();
      return;
      a(true, locale);
      if (localak.r) {
        d(this.a.a(locale.getId()));
      } else {
        d(paramInt - this.o.getCount() - this.l.getCount() - this.p.getCount());
      }
    }
  }
  
  public void onNewStickerPackageCountChanged(int paramInt)
  {
    setMoreOptionMenuIcon(this.y, paramInt);
  }
  
  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    int i1 = 1;
    if (getActivity() == null) {
      i1 = 0;
    }
    do
    {
      return i1;
      switch (paramMenuItem.getItemId())
      {
      case 2131166267: 
      case 2131166270: 
      default: 
        return super.onOptionsItemSelected(paramMenuItem);
      case 2131166268: 
        gu.a(getActivity());
        bc.a().a(com.viber.voip.a.a.s.f());
        return i1;
      case 2131166274: 
        ViberApplication.preferences().a("preff_dialog_failed_shown", false);
        this.b.d();
      case 2131166272: 
        this.b.e();
      case 2131166273: 
        this.b.f();
      }
    } while (!(this.c instanceof m));
    ((m)this.c).l();
    return i1;
    com.viber.service.contacts.sync.a.a().c();
    return i1;
    bp localbp6 = this.b;
    int i10 = this.a.getCount();
    bu localbu7 = this.e;
    boolean bool13 = o();
    boolean bool14 = false;
    if (bool13)
    {
      boolean bool15 = this.A;
      bool14 = false;
      if (bool15) {
        bool14 = i1;
      }
    }
    localbp6.a(i10, localbu7, i1, bool14);
    return i1;
    bp localbp5 = this.b;
    int i9 = this.a.getCount();
    bu localbu6 = this.e;
    boolean bool10 = o();
    boolean bool11 = false;
    if (bool10)
    {
      boolean bool12 = this.A;
      bool11 = false;
      if (bool12) {
        bool11 = i1;
      }
    }
    localbp5.a(i9, localbu6, 5, bool11);
    return i1;
    bp localbp4 = this.b;
    int i8 = this.a.getCount();
    bu localbu5 = this.e;
    boolean bool7 = o();
    boolean bool8 = false;
    if (bool7)
    {
      boolean bool9 = this.A;
      bool8 = false;
      if (bool9) {
        bool8 = i1;
      }
    }
    localbp4.a(i8, localbu5, 2, bool8);
    return i1;
    bp localbp3 = this.b;
    int i7 = this.a.getCount();
    bu localbu4 = this.e;
    boolean bool4 = o();
    boolean bool5 = false;
    if (bool4)
    {
      boolean bool6 = this.A;
      bool5 = false;
      if (bool6) {
        bool5 = i1;
      }
    }
    localbp3.a(i7, localbu4, 3, bool5);
    return i1;
    bp localbp2 = this.b;
    int i6 = this.a.getCount();
    bu localbu3 = this.e;
    boolean bool1 = o();
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = this.A;
      bool2 = false;
      if (bool3) {
        bool2 = i1;
      }
    }
    localbp2.a(i6, localbu3, 4, bool2);
    return i1;
    bp localbp1 = this.b;
    int i3 = this.a.getCount();
    bu localbu2 = this.e;
    if ((o()) && (this.A)) {}
    int i5;
    for (int i4 = i1;; i5 = 0)
    {
      localbp1.a(i3, localbu2, 0, i4);
      return i1;
    }
    bu localbu1 = this.e;
    FragmentActivity localFragmentActivity = getActivity();
    if (this.e.a()) {}
    for (int i2 = 4;; i2 = i1)
    {
      localbu1.a(localFragmentActivity, i2);
      return i1;
    }
    startActivity(new Intent("com.viber.voip.action.YOU"));
    return i1;
    startActivity(new Intent("com.viber.voip.action.BLOCK_LIST"));
    return i1;
    w.a(ViberApplication.getInstance()).f();
    c(this.g);
    return i1;
    PurchaseSupportActivity.a(getActivity());
    return i1;
    FacebookLikeDialogActivity.a(getActivity());
    return i1;
    ViberApplication.preferences().a("PREF_SHOW_COMPOSE_GROUP_PROMO", i1);
    return i1;
    ViberApplication.preferences().a("PREF_SHOW_DESKTOP_PROMO_COUNT");
    ViberApplication.preferences().a("PREF_SHOW_DESKTOP_PROMO_LAST_DISMISS");
    return i1;
  }
  
  public void onPause()
  {
    super.onPause();
    this.C.a(false);
    b("onPause, mFilterBeforePause: " + this.g);
  }
  
  public void onResume()
  {
    super.onResume();
    int i1 = ViberApplication.preferences().b("contacts_filter", -1);
    if ((i1 != -1) && (i1 != this.g) && ((getActivity() instanceof HomeActivity)))
    {
      b("onResume, filter changed to: " + i1);
      c(i1);
      return;
    }
    b("onResume");
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("last_mode", this.g);
    paramBundle.putLong("selected_contact_id", this.v);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((this.d.e()) && (paramInt == 1)) {
      this.d.g();
    }
    if (paramInt == 2)
    {
      this.C.a(true);
      return;
    }
    this.C.a(false);
  }
  
  public void onStart()
  {
    super.onStart();
    this.c.d().a(this);
    setHasOptionsMenu(true);
    if ((!this.d.e()) && (!this.r) && (!TextUtils.isEmpty(this.a.o())) && (this.a != null)) {
      this.a.a("", "");
    }
    if (this.l != null) {
      this.l.b();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    this.f.removeCallbacks(this.D);
    this.c.d().b(this);
    this.c.b(this);
    if (this.l != null) {
      this.l.c();
    }
  }
  
  public void onTabReselected()
  {
    y();
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((this.d.e()) && ((paramView == getListView()) || (paramView.getId() == 16908292)) && (paramMotionEvent.getAction() == 0)) {
      this.d.g();
    }
    return false;
  }
  
  protected void p()
  {
    if (l()) {
      this.k.a(this.o);
    }
    if (m()) {
      this.k.a(this.m);
    }
    if (n()) {
      this.k.a(this.l);
    }
    if (o()) {
      getActivity().registerReceiver(this.E, new IntentFilter("com.viber.voip.viberout.STATE_CHANGED_ACTION"));
    }
    this.k.a(this.p);
    this.k.a(this.n);
  }
  
  public void q()
  {
    switch (this.g)
    {
    default: 
      return;
    case 0: 
      QaLogger.a(new QaLogger.QaScreenChangeEvent(com.viber.voip.a.a.s.d.a()));
      bc.a().a(com.viber.voip.a.a.s.d.a());
      return;
    }
    QaLogger.a(new QaLogger.QaScreenChangeEvent(com.viber.voip.a.a.s.e.a()));
    bc.a().a(com.viber.voip.a.a.s.e.a());
  }
  
  public int r()
  {
    return this.g;
  }
  
  public boolean s()
  {
    com.viber.voip.contacts.b localb = this.a;
    boolean bool = false;
    if (localb != null)
    {
      int i1 = this.a.getCount();
      bool = false;
      if (i1 > 0) {
        bool = true;
      }
    }
    return bool;
  }
  
  public boolean t()
  {
    return this.v == x.i;
  }
  
  public boolean u()
  {
    if ((this.d != null) && (this.d.e()))
    {
      this.d.f();
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ContactsFragment
 * JD-Core Version:    0.7.0.1
 */