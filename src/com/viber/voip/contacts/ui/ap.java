package com.viber.voip.contacts.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.u;
import com.viber.voip.contacts.a.m;
import com.viber.voip.contacts.g;
import com.viber.voip.d;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.gallery.animation.SwipeableHListView;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.ui.ContactsListView;
import com.viber.voip.ui.aa;
import com.viber.voip.ui.ab;
import com.viber.voip.ui.an;
import com.viber.voip.util.gl;
import com.viber.voip.util.gu;
import com.viber.voip.util.hd;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ap
  extends an
  implements View.OnClickListener, AbsListView.OnScrollListener, com.viber.provider.e, com.viber.voip.contacts.c.d.au, co, d, ab
{
  private static final String h = ap.class.getSimpleName();
  private static final int i = h.a(42.0F);
  private static bc j = new aq();
  protected cb a;
  protected com.viber.voip.contacts.b b;
  protected aa c;
  protected int d = -1;
  protected bp e;
  protected be f;
  protected MenuItem g;
  private Handler k = dc.a(dk.a);
  private com.viber.voip.contacts.c.d.b l;
  private m m;
  private SwipeableHListView n;
  private bd o;
  private String p;
  private ContactsListView q;
  private boolean r = true;
  private boolean s = false;
  private int t = 0;
  private String u = "";
  private final Runnable v = new at(this);
  private bc w = j;
  private View.OnClickListener x = new ba(this);
  
  private Pair<String, com.viber.voip.contacts.b.e> a(com.viber.voip.contacts.b.e parame)
  {
    Set localSet = this.a.g();
    Iterator localIterator = parame.h().iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.contacts.b.i locali = (com.viber.voip.contacts.b.i)localIterator.next();
      if (localSet.contains(locali.a())) {
        return new Pair(locali.a(), parame);
      }
    }
    return null;
  }
  
  private void a(Map<String, Integer> paramMap)
  {
    this.a.a(paramMap, i());
    c(true);
    p();
    r();
  }
  
  private int b(com.viber.voip.contacts.b.e parame)
  {
    int i1 = this.b.u().getCount();
    for (int i2 = 0; i2 < i1; i2++) {
      if (this.b.u().b(i2).equals(parame)) {
        return i2;
      }
    }
    return -1;
  }
  
  private void b(String paramString)
  {
    if (paramString != null)
    {
      String str = paramString.replaceFirst("[-.]*", "");
      if (PhoneNumberUtils.isGlobalPhoneNumber(str))
      {
        this.p = hd.a(ViberApplication.getInstance(), str, str);
        return;
      }
    }
    this.p = null;
  }
  
  private void c(String paramString) {}
  
  private void c(boolean paramBoolean)
  {
    boolean bool;
    int i1;
    if (this.f != null)
    {
      cb localcb = this.a;
      if (this.r) {
        break label89;
      }
      bool = true;
      i1 = localcb.b(bool);
      if (!this.r) {
        break label94;
      }
    }
    label89:
    label94:
    for (int i2 = this.a.j();; i2 = cb.b())
    {
      a(i1, i2);
      this.f.a(getActivity(), this.c.a().toLowerCase(), i1, i2);
      if (paramBoolean) {
        getSherlockActivity().supportInvalidateOptionsMenu();
      }
      return;
      bool = false;
      break;
    }
  }
  
  private void m()
  {
    this.f.a(true);
    if (getArguments() != null)
    {
      c(true);
      long l1 = b();
      if (l1 > 0L) {
        ViberApplication.getInstance().getMessagesManager().c().a(l1, new ax(this));
      }
      if (getArguments().containsKey("already_added_participants"))
      {
        ArrayList localArrayList = getArguments().getStringArrayList("already_added_participants");
        HashMap localHashMap = new HashMap();
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext()) {
          localHashMap.put((String)localIterator.next(), Integer.valueOf(0));
        }
        a(localHashMap);
      }
    }
    for (;;)
    {
      this.k.postDelayed(this.v, 120L);
      return;
      c(true);
    }
  }
  
  private void n()
  {
    com.a.a.a.a locala = (com.a.a.a.a)getListAdapter();
    if (locala != null) {
      locala.notifyDataSetChanged();
    }
  }
  
  private boolean o()
  {
    if ((getActivity() instanceof HomeActivity))
    {
      HomeActivity localHomeActivity = (HomeActivity)getActivity();
      return (localHomeActivity != null) && (localHomeActivity.b() == 1);
    }
    return true;
  }
  
  private void p()
  {
    if (this.m != null)
    {
      this.m.a(this.a.g(), this.a.h(), this.a.d());
      n();
    }
  }
  
  private void q()
  {
    if ((this.o.getCount() == 0) && (this.n.getVisibility() == 0)) {
      this.n.setVisibility(8);
    }
    while ((this.o.getCount() == 0) || (this.n.getVisibility() != 8)) {
      return;
    }
    this.n.setVisibility(0);
  }
  
  private void r()
  {
    Set localSet = this.a.g();
    if ((localSet != null) && (this.b != null) && (this.s))
    {
      int i1 = this.b.u().getCount();
      this.o.a();
      for (int i2 = 0; i2 < i1; i2++)
      {
        Pair localPair = a(this.b.u().b(i2));
        if (localPair != null)
        {
          this.o.a(localPair);
          localSet.remove(localPair.first);
          q();
        }
      }
      if (localSet.size() != 0)
      {
        Iterator localIterator = localSet.iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          this.o.a(new Pair(str, null));
        }
      }
    }
  }
  
  protected long a()
  {
    if (getArguments() != null) {
      return getArguments().getInt("participants_count", 0);
    }
    return 0L;
  }
  
  protected void a(int paramInt1, int paramInt2)
  {
    MenuItem localMenuItem;
    if (this.g != null)
    {
      localMenuItem = this.g;
      if ((paramInt1 == 0) || (paramInt1 > paramInt2)) {
        break label34;
      }
    }
    label34:
    for (boolean bool = true;; bool = false)
    {
      localMenuItem.setVisible(bool);
      return;
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    c("onSyncStateChanged = " + paramInt);
    if (this.d != paramInt)
    {
      this.d = paramInt;
      if (!paramBoolean) {
        this.b.g();
      }
      this.f.a(getActivity(), this.d);
      if ((paramInt == 3) && (!ViberApplication.preferences().b("preff_dialog_failed_shown", false)) && (!ViberApplication.getInstance().isOnForeground()))
      {
        com.viber.voip.a.bc localbc = com.viber.voip.a.bc.a();
        u localu = com.viber.voip.a.a.z;
        com.viber.voip.a.a.z.getClass();
        localbc.a(localu.b("108"));
        ViberApplication.preferences().a("preff_dialog_failed_shown", true);
        com.viber.voip.util.at.a(getActivity(), 2131493681, 2131493682, new ay(this), new az(this), 2131493684, 2131493683);
      }
    }
  }
  
  public void a(com.viber.provider.b paramb) {}
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    boolean bool1 = true;
    if ((paramb != this.b) || (this.f == null)) {}
    do
    {
      return;
      this.s = bool1;
      g();
      f();
    } while (!h());
    String str = this.p;
    boolean bool2 = TextUtils.isEmpty(str);
    int i1 = this.b.u().getCount();
    be localbe = this.f;
    RelativeLayout localRelativeLayout;
    if ((i1 == 0) && (!this.a.a(str)) && (!bool2))
    {
      localbe.a(bool1, str);
      localRelativeLayout = this.f.h;
      if (i1 != 0) {
        break label131;
      }
    }
    label131:
    for (int i2 = 2131296418;; i2 = 2130837701)
    {
      localRelativeLayout.setBackgroundResource(i2);
      return;
      bool1 = false;
      break;
    }
  }
  
  public void a(boolean paramBoolean1, com.viber.voip.contacts.b.e parame, String paramString, boolean paramBoolean2)
  {
    c("onParticipantSelected isSelected = " + paramBoolean1 + ", selectedNumber = " + paramString);
    Pair localPair = new Pair(paramString, parame);
    c(true);
    if (paramBoolean1)
    {
      this.c.b();
      if (parame != null)
      {
        if (paramBoolean2) {
          ai.a(getActivity(), parame.p(), parame.q().e());
        }
        p();
      }
      this.o.a(localPair);
    }
    for (;;)
    {
      q();
      return;
      if (parame != null) {
        p();
      }
      this.o.b(localPair);
    }
  }
  
  public boolean a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("onSearchQuery query = ").append(paramString).append(" selectedNumber=");
    if (this.u == null) {}
    for (String str = "";; str = this.u)
    {
      c(str + " isActiveFragment=" + o());
      if ((o()) && ((TextUtils.isEmpty(this.u)) || (!this.u.equals(paramString)))) {
        break;
      }
      return false;
    }
    this.u = "";
    b(paramString);
    this.b.a(paramString, hd.a(paramString));
    this.f.a(getActivity(), paramString, this.a.i());
    return true;
  }
  
  public boolean a(boolean paramBoolean)
  {
    return true;
  }
  
  protected long b()
  {
    long l1 = -1L;
    if (getArguments() != null) {
      l1 = getArguments().getLong("thread_id", l1);
    }
    return l1;
  }
  
  protected void b(boolean paramBoolean)
  {
    ListView localListView = getListView();
    if (Build.VERSION.SDK_INT >= 11) {
      gl.a(localListView, paramBoolean);
    }
    localListView.setFastScrollEnabled(paramBoolean);
  }
  
  protected long c()
  {
    long l1 = 0L;
    if (getArguments() != null) {
      l1 = getArguments().getLong("extra_group_id", l1);
    }
    return l1;
  }
  
  protected String d()
  {
    if (getArguments() != null) {
      return getArguments().getString("extra_group_name");
    }
    return "";
  }
  
  public void e()
  {
    if (getActivity() == null)
    {
      this.d = -1;
      setListAdapter(null);
      if (this.b != null)
      {
        this.b.m();
        this.b.f();
        this.b = null;
      }
    }
  }
  
  protected void f()
  {
    be localbe = this.f;
    int i1 = this.d;
    if ((!TextUtils.isEmpty(this.c.a())) && (h())) {}
    for (boolean bool = true;; bool = false)
    {
      localbe.a(3, i1, true, bool, false);
      return;
    }
  }
  
  protected void g()
  {
    if (getListAdapter() == null)
    {
      FragmentActivity localFragmentActivity = getActivity();
      if ((localFragmentActivity != null) && (!localFragmentActivity.isFinishing()))
      {
        com.a.a.a.a locala = new com.a.a.a.a();
        this.m = new m(getActivity(), this.b.u(), i());
        locala.a(this.m);
        setListAdapter(locala);
        p();
        r();
      }
      return;
    }
    n();
  }
  
  protected boolean h()
  {
    return true;
  }
  
  protected boolean i()
  {
    return false;
  }
  
  protected cb j()
  {
    return new cb(getActivity(), this);
  }
  
  protected void k()
  {
    if (!this.e.a(true))
    {
      this.c.g();
      this.k.postDelayed(new bb(this), 100L);
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (ViberApplication.isTablet()) {}
    for (Object localObject = new g(getActivity(), getLoaderManager(), this.l, this);; localObject = new com.viber.voip.contacts.b(getActivity(), getLoaderManager(), this.l, this))
    {
      this.b = ((com.viber.voip.contacts.b)localObject);
      this.b.n();
      this.b.f(0);
      getListView().setOnScrollListener(this);
      b(false);
      return;
    }
  }
  
  public boolean onActivitySearchRequested()
  {
    if (this.c != null) {
      this.c.d();
    }
    return true;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof bc)) {
      throw new ClassCastException("Activity must implement fragment's callbacks." + paramActivity);
    }
    this.w = ((bc)paramActivity);
  }
  
  public void onClick(View paramView)
  {
    if ((paramView == this.f.e) || ((paramView == this.f.c) && (this.f.c.isChecked())))
    {
      String str = this.f.a.getText().toString();
      as localas = new as(this, str);
      com.viber.voip.block.i.a(getActivity(), "", str, true, localas);
      return;
    }
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165668: 
      this.e.b();
      return;
    case 2131165675: 
      gu.a(getActivity());
      return;
    case 2131165679: 
      startActivity(new Intent("com.viber.voip.action.INVITE_TO_VIBER"));
      return;
    }
    this.e.b();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    View localView = getView();
    if (localView != null) {
      localView.invalidate();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c("onCreate");
    this.e = new bp(getActivity());
    this.a = j();
    this.l = ViberApplication.getInstance().getContactManager();
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755012, paramMenu);
    this.g = paramMenu.findItem(2131166288);
    gl.a(this.g, 2130837612, 2131494199, this.x);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView1 = paramLayoutInflater.inflate(2130903064, paramViewGroup, false);
    localView1.findViewById(2131165662).setVisibility(8);
    this.q = ((ContactsListView)localView1.findViewById(16908298));
    this.f = new be(localView1);
    this.f.a(localView1, this);
    this.c = new bw(getActivity(), this, localView1);
    this.n = ((SwipeableHListView)localView1.findViewById(2131166016));
    if ((getArguments() != null) && (((b() > 0L) && (a() > 1L)) || ((getArguments().containsKey("already_added_participants")) && (getArguments().getStringArrayList("already_added_participants").size() > 0)))) {
      if (getArguments().containsKey("already_added_participants")) {
        break label369;
      }
    }
    label369:
    for (boolean bool = true;; bool = false)
    {
      this.r = bool;
      this.n.setVisibility(0);
      m();
      this.q.setupViews(true);
      int i1 = getResources().getDimensionPixelSize(2131362065);
      View localView2 = new View(getActivity().getApplicationContext());
      localView2.setLayoutParams(new it.sephiroth.android.library.widget.i(i1, i));
      View localView3 = new View(getActivity());
      localView3.setLayoutParams(new it.sephiroth.android.library.widget.i(i1, i));
      this.n.f(localView2);
      this.n.g(localView3);
      this.n.setViewClickListener(new au(this));
      this.n.setFocusable(false);
      this.n.setFocusableInTouchMode(false);
      this.n.setViewRemoveListener(new aw(this));
      this.o = new bd(this, getActivity());
      this.n.setAdapter(this.o);
      this.n.setTranscriptMode(1);
      return localView1;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    this.b.m();
    this.b.f();
    this.a.c();
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.c.g();
    this.w = j;
    this.b.l();
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    com.viber.voip.a.bc.a().a(com.viber.voip.a.a.s.e());
    ak localak = (ak)paramView.getTag();
    if (localak == null) {}
    com.viber.voip.contacts.b.e locale;
    do
    {
      return;
      locale = localak.a();
    } while ((locale == null) || (locale.getId() == -1L) || (locale.i() == null) || (this.e.a(true)) || (!(paramView.getTag() instanceof com.viber.voip.contacts.a.l)));
    ar localar = new ar(this, paramView, locale);
    com.viber.voip.block.i.a(getActivity(), locale.a(), locale.i().a(), true, localar);
  }
  
  public void onPause()
  {
    super.onPause();
    this.k.removeCallbacks(this.v);
    this.l.d().b(this);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    c(false);
  }
  
  public void onResume()
  {
    super.onResume();
    setHasOptionsMenu(true);
    this.l.d().a(this);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (o()) {
      paramBundle.putString("cont_query", this.c.a());
    }
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((this.c.e()) && (paramInt == 1)) {
      this.c.g();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if ((!this.c.e()) && (TextUtils.isEmpty(this.b.o())) && (this.b != null) && (!this.c.e()) && (!TextUtils.isEmpty(this.b.o())) && (this.b != null)) {
      this.b.a("", "");
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ap
 * JD-Core Version:    0.7.0.1
 */