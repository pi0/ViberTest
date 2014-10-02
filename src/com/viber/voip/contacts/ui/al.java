package com.viber.voip.contacts.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ListView;
import android.widget.TextView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.widget.SearchView;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.a.n;
import com.viber.voip.contacts.a.v;
import com.viber.voip.contacts.b.b.m;
import com.viber.voip.contacts.b.e;
import com.viber.voip.contacts.h;
import com.viber.voip.ui.ContactsListView;
import com.viber.voip.ui.k;
import com.viber.voip.util.ai;
import com.viber.voip.util.hd;
import com.viber.voip.util.w;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class al
  extends ContactsFragment
  implements co
{
  private cb q;
  private TextView t;
  private View u;
  private View v;
  
  private void a(Collection<com.viber.voip.contacts.b.i> paramCollection, ai paramai)
  {
    if (getActivity() == null) {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(new ao(this, (com.viber.voip.contacts.b.i)localIterator.next()));
    }
    w.a(getActivity(), localArrayList, null, false, false, paramai);
  }
  
  private void b(e parame)
  {
    this.d.g();
    an localan = new an(this, parame, new am(this, parame));
    a(parame.h(), localan);
  }
  
  private boolean b(String paramString)
  {
    String str = hd.a(paramString);
    if (TextUtils.isEmpty(str))
    {
      this.u.setVisibility(8);
      return false;
    }
    this.u.setVisibility(0);
    this.t.setText(str);
    return true;
  }
  
  protected void a()
  {
    this.j.setupViews(true);
  }
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    super.a(paramb, paramBoolean);
    if (paramb.getCount() == 0) {}
    for (String str = this.a.o();; str = null)
    {
      if (b(str)) {
        this.e.a(0, false);
      }
      return;
    }
  }
  
  public void a(e parame)
  {
    if (parame == null) {
      return;
    }
    b(parame);
  }
  
  public void a(boolean paramBoolean1, e parame, String paramString, boolean paramBoolean2)
  {
    b(new m(paramString));
  }
  
  public boolean a(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      if (getActivity() != null)
      {
        this.d.g();
        getActivity().finish();
      }
      return false;
    }
    return true;
  }
  
  public void b_() {}
  
  public com.viber.voip.contacts.b d()
  {
    if (ViberApplication.isTablet()) {
      return new com.viber.voip.contacts.i(getActivity(), getLoaderManager(), this.c, this);
    }
    return new h(getActivity(), getLoaderManager(), this.c, this);
  }
  
  public int e()
  {
    return getActivity().getResources().getInteger(2131427339);
  }
  
  public int f()
  {
    return 0;
  }
  
  public boolean j()
  {
    return true;
  }
  
  protected boolean k()
  {
    return false;
  }
  
  protected boolean l()
  {
    return true;
  }
  
  protected boolean m()
  {
    return false;
  }
  
  protected boolean n()
  {
    return false;
  }
  
  protected boolean o()
  {
    return false;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.n.b(true);
    this.o.b(true);
    d(false);
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.v)
    {
      this.q.a(this.t.getText().toString(), paramView);
      return;
    }
    super.onClick(paramView);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.q = new cb(getActivity(), this);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo) {}
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755008, paramMenu);
    MenuItem localMenuItem = paramMenu.findItem(2131166267);
    SearchView localSearchView = (SearchView)localMenuItem.getActionView();
    localSearchView.setQueryHint(getResources().getString(2131493832));
    localSearchView.setQueryHintColor(getResources().getColor(2131296415));
    localSearchView.setOpenKeyboardOnExpand(false);
    localMenuItem.expandActionView();
    this.r = true;
    a(false, localMenuItem);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ViewStub localViewStub = (ViewStub)localView.findViewById(2131165395);
    if (localViewStub != null) {
      localViewStub.inflate();
    }
    this.u = localView.findViewById(2131165657);
    this.v = localView.findViewById(2131165659);
    this.t = ((TextView)localView.findViewById(2131165661));
    this.v.setOnClickListener(this);
    return localView;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    this.q.c();
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    ak localak = (ak)paramView.getTag();
    if (localak == null) {}
    e locale;
    do
    {
      return;
      locale = localak.a();
    } while (locale == null);
    b(locale);
  }
  
  public void onStart()
  {
    super.onStart();
    if (getActivity() != null) {
      com.viber.voip.ui.am.J();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.al
 * JD-Core Version:    0.7.0.1
 */