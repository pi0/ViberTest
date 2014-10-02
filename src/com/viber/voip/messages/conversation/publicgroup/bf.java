package com.viber.voip.messages.conversation.publicgroup;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.jni.PublicGroupInfo;
import com.viber.provider.e;
import com.viber.voip.ViberApplication;
import com.viber.voip.d;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.messages.adapters.p;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.messages.ui.ConversationActivity;
import com.viber.voip.messages.ui.MessagesFragmentModeManager;
import com.viber.voip.messages.ui.MessagesFragmentModeManager.MessagesFragmentModeManagerData;
import com.viber.voip.messages.ui.PublicGroupsFragmentModeManager;
import com.viber.voip.messages.ui.df;
import com.viber.voip.messages.ui.dk;
import com.viber.voip.messages.ui.dl;
import com.viber.voip.messages.ui.do;
import com.viber.voip.ui.a.c;
import com.viber.voip.user.UserData;
import com.viber.voip.util.b.w;
import com.viber.voip.util.ft;
import com.viber.voip.util.gl;
import com.viber.voip.util.hc;
import it.sephiroth.android.library.widget.u;
import it.sephiroth.android.library.widget.y;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

public class bf
  extends com.viber.voip.messages.ui.a
  implements View.OnClickListener, AbsListView.OnScrollListener, e, d, dk, y
{
  private ar c;
  private i d;
  private MenuItem e;
  private bi f;
  private p g;
  private df h;
  private ArrayList<PublicGroupInfo> i;
  private w j;
  
  public bf()
  {
    super(3);
  }
  
  private com.viber.voip.ui.a.a a(String paramString, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    com.viber.voip.ui.a.a locala = (com.viber.voip.ui.a.a)getChildFragmentManager().findFragmentByTag(paramString);
    if (locala != null)
    {
      locala.a(paramOnCancelListener);
      locala.b(paramOnClickListener2);
      locala.a(paramOnClickListener1);
      return locala;
    }
    return null;
  }
  
  private void a(com.viber.voip.ui.a.a parama, String paramString)
  {
    FragmentManager localFragmentManager = getChildFragmentManager();
    FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
    Fragment localFragment = localFragmentManager.findFragmentByTag(paramString);
    if (localFragment != null) {
      localFragmentTransaction.remove(localFragment);
    }
    parama.show(localFragmentTransaction, paramString);
  }
  
  protected MessagesFragmentModeManager a(MessagesFragmentModeManager.MessagesFragmentModeManagerData paramMessagesFragmentModeManagerData, do paramdo)
  {
    return new PublicGroupsFragmentModeManager(this, this, paramMessagesFragmentModeManagerData, paramdo);
  }
  
  public Map<Long, dl> a(Set<Long> paramSet)
  {
    return this.c.a(paramSet);
  }
  
  protected void a()
  {
    this.c.r();
    this.c.e();
  }
  
  public void a(long paramLong)
  {
    if (this.g != null) {
      this.g.a(paramLong);
    }
  }
  
  public void a(com.viber.provider.b paramb) {}
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity == null) {}
    while (!(paramb instanceof ar)) {
      return;
    }
    this.f.a(o().k());
    if (this.g == null)
    {
      this.g = new p(localFragmentActivity, o(), this.c, false);
      getListView().setAdapter(this.g);
    }
    this.g.notifyDataSetChanged();
    if ((this.g.getCount() == 0) && (ViberApplication.isTablet()))
    {
      this.b = 0L;
      gl.a(getSherlockActivity(), null);
      gl.b(getSherlockActivity(), null);
    }
    if (this.b > 0L) {
      a(this.b, true);
    }
    if ((paramb.getCount() == 0) && (this.f.d() == null)) {
      f();
    }
    o().p();
    o().w();
  }
  
  public void a(com.viber.voip.messages.adapters.a.a parama, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CONVERSATION");
    localIntent.putExtra("extra_conversation_data", new PublicGroupConversationData((com.viber.voip.messages.adapters.a.b)parama));
    if ((o().k()) && (!TextUtils.isEmpty(o().t())))
    {
      localIntent.putExtra("extra_search_message", true);
      o().s();
    }
    if (this.h != null) {
      this.h.a_(localIntent);
    }
  }
  
  public void a(u<?> paramu, View paramView, int paramInt, long paramLong)
  {
    startActivity(com.viber.voip.messages.j.a((PublicGroupInfo)paramView.getTag(), true));
  }
  
  public void a(String paramString)
  {
    if (this.c != null) {
      this.c.d(paramString);
    }
  }
  
  protected void a(ArrayList<PublicGroupInfo> paramArrayList)
  {
    if ((paramArrayList.size() == 0) && (!ft.b(getActivity())))
    {
      this.f.b();
      return;
    }
    this.f.a(paramArrayList);
  }
  
  public boolean b()
  {
    return (this.c != null) && (this.c.a());
  }
  
  public void d() {}
  
  public void e()
  {
    this.d.c().a(new bg(this));
  }
  
  protected void f()
  {
    if (ft.b(getActivity()))
    {
      e();
      return;
    }
    this.f.b();
  }
  
  protected boolean g()
  {
    return (this.c != null) && (!this.c.a());
  }
  
  public ListAdapter getListAdapter()
  {
    return this.g;
  }
  
  protected void h()
  {
    this.f.a(getView(), this, this);
    this.f.a();
    if (this.i != null) {
      a(this.i);
    }
    a();
  }
  
  public boolean j()
  {
    return (this.c != null) && (this.c.getCount() > 0);
  }
  
  public void k() {}
  
  public boolean l()
  {
    FragmentActivity localFragmentActivity = getActivity();
    return (localFragmentActivity != null) && ((localFragmentActivity instanceof ConversationActivity));
  }
  
  public Map<Long, dl> m()
  {
    return this.c.t();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    String str;
    ArrayList localArrayList;
    if (o() != null)
    {
      str = o().t();
      if (paramBundle == null) {
        break label129;
      }
      localArrayList = paramBundle.getParcelableArrayList("conversation_search_result");
      if (paramBundle.containsKey("suggestion_list")) {
        this.i = paramBundle.getParcelableArrayList("suggestion_list");
      }
    }
    for (;;)
    {
      this.f = new bi();
      this.c = new ar(getActivity(), getLoaderManager(), this.d, str, localArrayList, this);
      getListView().setOnScrollListener(this);
      super.onActivityCreated(paramBundle);
      if (paramBundle != null) {
        a("update_details", new bk(this, null), null, null);
      }
      return;
      str = "";
      break;
      label129:
      localArrayList = null;
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!(paramActivity instanceof df)) {
      throw new ClassCastException("Activity must implement fragment's callbacks.");
    }
    this.h = ((df)paramActivity);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    if (this.f.c())
    {
      f();
      return;
    }
    startActivity(MarketActivity.b());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    this.j = w.a(getActivity());
    this.d = ViberApplication.getInstance().getMessagesManager();
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if (!c()) {
      return;
    }
    paramMenuInflater.inflate(2131755017, paramMenu);
    this.e = paramMenu.findItem(2131166269);
    Context localContext = ViberApplication.getInstance().getApplicationContext();
    if ((gl.a(localContext)) && (!gl.c(localContext))) {
      this.e.setShowAsAction(0);
    }
    for (;;)
    {
      if (!com.viber.voip.j.a.a().d()) {
        paramMenu.removeItem(2131166294);
      }
      super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
      return;
      setMoreOptionMenuIcon(this.e, getNewPackagesCount());
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903070, paramViewGroup, false);
  }
  
  public void onDestroyView()
  {
    this.c.q();
    super.onDestroyView();
  }
  
  public void onFragmentVisibilityChanged(boolean paramBoolean)
  {
    super.onFragmentVisibilityChanged(paramBoolean);
    com.viber.voip.f.j localj = ViberApplication.getInstance().getPromoHandler();
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      localj.c(bool);
      return;
    }
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (!o().l())
    {
      com.viber.voip.messages.adapters.a.a locala = (com.viber.voip.messages.adapters.a.a)((com.viber.voip.messages.adapters.a.a.b)paramView.getTag()).c();
      if (locala.a() > 0L) {
        a(paramListView, paramView, paramInt, true);
      }
      ViberApplication.getInstance().getMessagesManager().b(locala.x());
    }
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
  }
  
  public void onNewStickerPackageCountChanged(int paramInt)
  {
    setMoreOptionMenuIcon(this.e, paramInt);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131166269: 
      hc.d(getActivity());
      return true;
    case 2131166294: 
      if ((TextUtils.isEmpty(UserData.getViberName())) || (TextUtils.isEmpty(UserData.getViberImage())))
      {
        a(new c(getActivity()).a(2131494009).b(2131494010).a(2131493557, new bk(this, null)).b(2131493558, null).a(), "update_details");
        return true;
      }
      startActivity(new Intent("com.viber.voip.action.CREATE_PUBLIC_GROUP"));
      return true;
    }
    startActivity(MarketActivity.b());
    return true;
  }
  
  public void onPause()
  {
    this.j.a(false);
    super.onPause();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (c())
    {
      paramBundle.putParcelableArrayList("conversation_search_result", this.c.v());
      if ((this.f.d() == null) || (this.c.getCount() != 0)) {
        break label61;
      }
      paramBundle.putParcelableArrayList("suggestion_list", this.f.d());
    }
    label61:
    while (this.c.getCount() == 0) {
      return;
    }
    paramBundle.remove("suggestion_list");
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 2)
    {
      this.j.a(true);
      return;
    }
    this.j.a(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.bf
 * JD-Core Version:    0.7.0.1
 */