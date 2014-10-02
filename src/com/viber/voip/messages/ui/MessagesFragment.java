package com.viber.voip.messages.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ad;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;
import com.viber.voip.d;
import com.viber.voip.dk;
import com.viber.voip.f.h;
import com.viber.voip.messages.adapters.k;
import com.viber.voip.messages.conversation.aw;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.ui.n;
import com.viber.voip.ui.p;
import com.viber.voip.util.b.w;
import com.viber.voip.util.gl;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

@SuppressLint({"ValidFragment"})
public class MessagesFragment
  extends a
  implements View.OnClickListener, AbsListView.OnScrollListener, AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, com.viber.provider.e, d, h, dn, p
{
  public static final String c = MessagesFragment.class.getSimpleName();
  private static df m = new db();
  protected k d;
  protected com.viber.voip.contacts.c.d.b e;
  private com.viber.voip.messages.conversation.i f;
  private com.viber.voip.messages.conversation.a g;
  private com.viber.voip.messages.i h;
  private n i;
  private boolean j = false;
  private ListView k;
  private w l;
  private df n = m;
  
  public MessagesFragment()
  {
    super(0);
  }
  
  public MessagesFragment(boolean paramBoolean)
  {
    this();
    this.j = paramBoolean;
  }
  
  protected ListAdapter a()
  {
    return this.d;
  }
  
  public Map<Long, dl> a(Set<Long> paramSet)
  {
    return this.f.a(paramSet);
  }
  
  public void a(long paramLong)
  {
    if (this.d != null) {
      this.d.a(paramLong);
    }
  }
  
  public void a(Context paramContext, boolean paramBoolean)
  {
    String str;
    Intent localIntent;
    if (paramBoolean)
    {
      str = "com.viber.voip.action.ACTION_CONTACT_LIST_SELECTABLE2";
      localIntent = new Intent(str);
      if (!paramBoolean) {
        break label60;
      }
    }
    label60:
    for (int i1 = 2131493831;; i1 = 2131494471)
    {
      localIntent.putExtra("title", paramContext.getString(i1));
      localIntent.addFlags(268435456);
      paramContext.startActivity(localIntent);
      return;
      str = "com.viber.voip.action.ACTION_CONTACT_LIST_SELECTABLE2_1TO1";
      break;
    }
  }
  
  public void a(View paramView, int paramInt)
  {
    com.viber.voip.contacts.b.e locale = this.g.e(paramInt);
    if ((locale != null) && (locale.i() != null))
    {
      com.viber.voip.contacts.b.i locali = locale.i();
      bc.a().a(com.viber.voip.a.a.r.d());
      Intent localIntent = com.viber.voip.messages.j.a(locali.a(), locale.getId(), locale.c(), locale.a(), locale.b());
      getActivity().startActivity(localIntent);
    }
  }
  
  public void a(com.viber.provider.b paramb)
  {
    if ((paramb instanceof com.viber.voip.messages.conversation.i))
    {
      this.d.notifyDataSetChanged();
      this.n.a(this.d.getCount());
    }
    while (!(paramb instanceof com.viber.voip.messages.conversation.a)) {
      return;
    }
    this.i.a(o().j(), this.f, this.g);
  }
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    boolean bool = true;
    if ((paramb instanceof com.viber.voip.messages.conversation.i))
    {
      this.d.notifyDataSetChanged();
      this.i.a(bool);
      if ((paramBoolean) && (!l()))
      {
        if (q()) {
          bc.a().a(com.viber.voip.a.a.q.a());
        }
      }
      else
      {
        if ((this.d.getCount() == 0) && (ViberApplication.isTablet()))
        {
          this.b = 0L;
          gl.a(getSherlockActivity(), null);
          gl.b(getSherlockActivity(), null);
        }
        this.n.a(this.d.getCount());
        if (this.b > 0L) {
          a(this.b, bool);
        }
        if (o() != null) {
          o().p();
        }
        com.viber.voip.f.j localj = ViberApplication.getInstance().getPromoHandler();
        if (this.d.getCount() <= 0) {
          break label240;
        }
        label157:
        localj.c(bool);
        i();
      }
    }
    for (;;)
    {
      if (o() != null) {
        this.i.a(o().j(), this.f, this.g);
      }
      if ((!this.j) && (o() != null) && (!o().l())) {
        w();
      }
      return;
      bc.a().a(com.viber.voip.a.a.r.a());
      break;
      label240:
      bool = false;
      break label157;
      if ((paramb instanceof com.viber.voip.messages.conversation.a)) {
        this.i.c(bool);
      }
    }
  }
  
  public void a(com.viber.voip.messages.adapters.a.a parama, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CONVERSATION");
    localIntent.putExtra("extra_conversation_data", new ConversationData(parama));
    localIntent.putExtra("clicked", paramBoolean);
    if ((o().k()) && (!TextUtils.isEmpty(o().t())))
    {
      localIntent.putExtra("extra_search_message", true);
      o().s();
    }
    this.b = parama.a();
    this.d.a(this.b);
    if (this.n != null)
    {
      this.n.a_(localIntent);
      if (ViberApplication.isTablet()) {
        bc.a().a(com.viber.voip.a.a.n.g());
      }
    }
  }
  
  public void a(String paramString)
  {
    if (this.f != null) {
      this.f.d(paramString);
    }
  }
  
  public void b(int paramInt)
  {
    super.b(paramInt);
    com.viber.voip.f.j localj = ViberApplication.getInstance().getPromoHandler();
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      localj.c(bool);
      i();
      return;
    }
  }
  
  protected void b(String paramString) {}
  
  public boolean b()
  {
    return (this.f != null) && (this.f.a());
  }
  
  public void d()
  {
    if (this.d != null) {
      this.d.notifyDataSetChanged();
    }
  }
  
  protected void e()
  {
    if (!this.f.a())
    {
      this.f.e();
      this.f.r();
    }
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
  
  protected void f()
  {
    if (!this.g.a())
    {
      this.g.e();
      this.g.n();
    }
  }
  
  protected boolean g()
  {
    return (this.f != null) && (!this.f.a());
  }
  
  public ListAdapter getListAdapter()
  {
    return this.d;
  }
  
  public ListView getListView()
  {
    return this.k;
  }
  
  protected void h()
  {
    s();
    f();
    e();
  }
  
  protected void i()
  {
    com.viber.voip.f.j localj = ViberApplication.getInstance().getPromoHandler();
    int i1;
    if ((localj.c()) || (localj.d()))
    {
      FragmentActivity localFragmentActivity = getActivity();
      if ((!ViberApplication.isTablet()) && ((localFragmentActivity instanceof HomeActivity)) && (isVisible()) && (((HomeActivity)localFragmentActivity).b() == 0))
      {
        boolean bool1 = localj.a(localFragmentActivity, new de(this));
        if ((!b()) || (this.f.getCount() <= 0) || (o() == null) || (o().j() != 0) || (((HomeActivity)localFragmentActivity).getSupportActionBar().getNavigationMode() != 2)) {
          break label140;
        }
        i1 = 1;
        if ((bool1) || (i1 == 0)) {
          break label146;
        }
      }
    }
    label140:
    label146:
    for (boolean bool2 = true;; bool2 = false)
    {
      localj.a(bool2);
      return;
      i1 = 0;
      break;
    }
  }
  
  public boolean j()
  {
    return (this.d != null) && (this.d.getCount() > 0);
  }
  
  public void k()
  {
    if (this.j) {
      com.viber.voip.dc.a(dk.a).post(new dd(this));
    }
  }
  
  public boolean l()
  {
    FragmentActivity localFragmentActivity = getActivity();
    return (localFragmentActivity != null) && ((localFragmentActivity instanceof ConversationActivity));
  }
  
  public Map<Long, dl> m()
  {
    return this.f.t();
  }
  
  public boolean n()
  {
    FragmentActivity localFragmentActivity = getActivity();
    return (localFragmentActivity != null) && ((localFragmentActivity instanceof HomeActivity)) && (!gl.e(localFragmentActivity));
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if ((l()) && (Build.VERSION.SDK_INT >= 11)) {
      gl.a(getListView(), 1);
    }
    ArrayList localArrayList;
    String str2;
    if (paramBundle != null)
    {
      MessagesFragmentModeManager.MessagesFragmentModeManagerData localMessagesFragmentModeManagerData = (MessagesFragmentModeManager.MessagesFragmentModeManagerData)paramBundle.getParcelable("mode_manager");
      localArrayList = paramBundle.getParcelableArrayList("conversation_search_result");
      if (localMessagesFragmentModeManagerData != null)
      {
        str2 = localMessagesFragmentModeManagerData.a();
        this.j = paramBundle.getBoolean("open_for_forward", this.j);
      }
    }
    for (String str1 = str2;; str1 = null)
    {
      if (getActivity() == null)
      {
        this.f = new aw(ViberApplication.getInstance(), this.h, this);
        this.d = new k(ViberApplication.getInstance(), this.f, o(), this.j);
        this.k.setAdapter(a());
        setHasOptionsMenu(true);
        return;
        str2 = null;
        break;
      }
      FragmentActivity localFragmentActivity = getActivity();
      LoaderManager localLoaderManager = getLoaderManager();
      com.viber.voip.messages.i locali = this.h;
      if (!this.j) {}
      for (boolean bool = true;; bool = false)
      {
        this.f = new aw(localFragmentActivity, localLoaderManager, locali, true, bool, localArrayList, str1, this);
        this.g = new com.viber.voip.messages.conversation.a(getActivity(), getLoaderManager(), this.e, this);
        break;
      }
      localArrayList = null;
    }
  }
  
  public boolean onActivityKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((!gl.b()) && (paramInt == 82) && (o().k())) {
      o().y();
    }
    return false;
  }
  
  public boolean onActivityTrackballEvent(MotionEvent paramMotionEvent)
  {
    return ViberApplication.getInstance().getPromoHandler().e();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof df)) {
      throw new ClassCastException("Activity must implement fragment's callbacks.");
    }
    this.n = ((df)paramActivity);
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131165439) {
      a(getActivity(), true);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    this.l = w.a(getActivity());
    this.h = ViberApplication.getInstance().getMessagesManager();
    this.e = ViberApplication.getInstance().getContactManager();
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    Log.d("onCreateContextMenu", "Messages fragment");
    if (!c()) {
      return;
    }
    paramMenuInflater.inflate(2131755015, paramMenu);
    Context localContext = ViberApplication.getInstance().getApplicationContext();
    if ((gl.a(localContext)) && (!gl.c(localContext))) {
      paramMenu.findItem(2131166294).setShowAsAction(0);
    }
    if (this.j)
    {
      paramMenu.findItem(2131166267).setVisible(true);
      paramMenu.removeItem(2131166294);
      paramMenu.removeItem(2131166293);
      paramMenu.removeItem(2131166269);
    }
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903071, paramViewGroup, false);
    this.k = ((ListView)localView.findViewById(16908298));
    this.k.setOnTouchListener(this);
    this.k.setOnItemLongClickListener(this);
    this.k.setOnItemClickListener(this);
    this.k.setOnScrollListener(this);
    getListView().setScrollingCacheEnabled(false);
    this.i = new n();
    return localView;
  }
  
  public void onDestroyView()
  {
    this.f.q();
    this.f.f();
    if (this.g != null) {
      this.g.m();
    }
    super.onDestroyView();
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.f.l();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    onListItemClick((ListView)paramAdapterView, paramView, paramInt, paramLong);
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (!o().l())
    {
      if (!this.j) {
        break label96;
      }
      com.viber.voip.messages.adapters.a.a locala = (com.viber.voip.messages.adapters.a.a)((com.viber.voip.messages.adapters.a.a.b)paramView.getTag()).c();
      if (locala.e()) {
        break label85;
      }
      com.viber.voip.block.i.a(getActivity(), locala.j(), locala.u(), true, new dc(this, paramListView, paramView, paramInt));
    }
    for (;;)
    {
      super.onListItemClick(paramListView, paramView, paramInt, paramLong);
      return;
      label85:
      a(paramListView, paramView, paramInt, true);
      continue;
      label96:
      a(paramListView, paramView, paramInt, true);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool = true;
    switch (paramMenuItem.getItemId())
    {
    default: 
      bool = super.onOptionsItemSelected(paramMenuItem);
    }
    do
    {
      return bool;
      a(getActivity(), bool);
      return bool;
      a(getActivity(), false);
      return bool;
    } while (isDetached());
    try
    {
      startActivity(new Intent("com.viber.voip.action.YOU"));
      return bool;
    }
    catch (IllegalStateException localIllegalStateException) {}
    return bool;
  }
  
  public void onPause()
  {
    this.l.a(false);
    super.onPause();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (c())
    {
      paramBundle.putParcelableArrayList("conversation_search_result", this.f.v());
      paramBundle.putBoolean("open_for_forward", this.j);
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 2)
    {
      this.l.a(true);
      return;
    }
    this.l.a(false);
  }
  
  public void onTabReselected()
  {
    y();
  }
  
  public boolean q()
  {
    return (this.f != null) && (this.f.getCount() > 0);
  }
  
  public boolean r()
  {
    if ((o() != null) && (o().k()))
    {
      o().b(true);
      return true;
    }
    return false;
  }
  
  protected void s()
  {
    this.i.a(getView(), this, this);
    this.i.a(this);
    this.i.a(o().j(), this.f, this.g);
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    super.setUserVisibleHint(paramBoolean);
    if (paramBoolean) {
      i();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.MessagesFragment
 * JD-Core Version:    0.7.0.1
 */