package com.viber.voip.messages.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.q;
import com.viber.voip.contacts.a.l;
import com.viber.voip.contacts.b.e;
import com.viber.voip.contacts.g;
import com.viber.voip.messages.conversation.ConversationLoaderEntity;
import com.viber.voip.messages.j;
import com.viber.voip.util.gn;

public class dp
  extends MessagesFragment
{
  com.viber.voip.contacts.b f;
  BaseAdapter g;
  com.a.a.a.a h;
  View i;
  com.viber.voip.messages.ui.view.a j;
  View k;
  boolean l = true;
  private int m;
  private int n;
  private int o;
  
  private View a(Activity paramActivity)
  {
    View localView = paramActivity.getLayoutInflater().inflate(2130903166, null);
    ((TextView)localView.findViewById(2131165767)).setText(2131494507);
    return localView;
  }
  
  private String a(com.viber.voip.messages.conversation.i parami)
  {
    int i1 = parami.getCount();
    if (i1 == 0) {}
    StringBuilder localStringBuilder;
    do
    {
      return null;
      localStringBuilder = new StringBuilder();
      for (int i2 = 0; i2 < i1; i2++)
      {
        ConversationLoaderEntity localConversationLoaderEntity = parami.e(i2);
        long l1 = localConversationLoaderEntity.q();
        if (!localConversationLoaderEntity.s()) {
          localStringBuilder.append(l1).append(',');
        }
      }
    } while (localStringBuilder.length() == 0);
    localStringBuilder.setLength(-1 + localStringBuilder.length());
    return localStringBuilder.toString();
  }
  
  private void a(e parame)
  {
    com.viber.voip.contacts.b.i locali;
    if ((parame.e()) && (parame.i() != null))
    {
      locali = parame.i();
      localIntent = null;
      if (locali == null) {}
    }
    for (Intent localIntent = j.a(0L, 0L, locali.a(), 0, 0L, 0L, "");; localIntent = gn.a(false, parame.getId(), parame.c(), parame.a(), "", parame.b(), null, new q().a.a()))
    {
      if (localIntent != null) {
        getActivity().startActivity(localIntent);
      }
      return;
    }
  }
  
  private void c(String paramString)
  {
    b("search " + paramString);
    if ((this.f == null) || (this.h == null))
    {
      this.l = false;
      return;
    }
    boolean bool;
    if (!TextUtils.isEmpty(paramString))
    {
      bool = true;
      label52:
      if ((this.l) || (!bool)) {
        break label168;
      }
      t();
      this.h.b(this.i, true);
      if (com.viber.voip.j.a.a().e()) {
        this.h.b(this.j, true);
      }
      this.h.a(this.g, true);
      this.h.b(this.k, false);
    }
    for (;;)
    {
      this.l = bool;
      if (this.l) {
        this.f.a(paramString, null);
      }
      if (!com.viber.voip.j.a.a().e()) {
        break;
      }
      this.j.setSearchText(paramString);
      return;
      bool = false;
      break label52;
      label168:
      if ((this.l) && (!bool))
      {
        this.h.b(this.i, false);
        if (com.viber.voip.j.a.a().e()) {
          this.h.b(this.j, false);
        }
        this.h.a(this.g, false);
        this.h.b(this.k, false);
        this.f.d(null);
      }
    }
  }
  
  private void u()
  {
    int i1;
    com.viber.voip.messages.ui.view.a locala;
    if (this.d.getCount() > 0)
    {
      i1 = this.m;
      b("onMainAdapterChanged, paddingTop:" + i1);
      this.i.setPadding(this.i.getPaddingLeft(), i1, this.i.getPaddingRight(), this.i.getPaddingBottom());
      if (com.viber.voip.j.a.a().e())
      {
        locala = this.j;
        if (this.d.getCount() <= 0) {
          break label107;
        }
      }
    }
    label107:
    for (boolean bool = true;; bool = false)
    {
      locala.setContentTopPadding(bool);
      return;
      i1 = this.n;
      break;
    }
  }
  
  private View v()
  {
    return getActivity().getLayoutInflater().inflate(2130903323, null);
  }
  
  private com.viber.voip.messages.ui.view.a z()
  {
    return new com.viber.voip.messages.ui.view.a(getActivity());
  }
  
  protected ListAdapter a()
  {
    b("getOuterListAdapter()");
    this.m = getActivity().getResources().getDimensionPixelSize(2131362273);
    this.n = getActivity().getResources().getDimensionPixelSize(2131362274);
    this.o = getActivity().getResources().getDimensionPixelSize(2131362105);
    if (ViberApplication.isTablet()) {}
    for (Object localObject = new g(getActivity(), getLoaderManager(), this.e, this);; localObject = new com.viber.voip.contacts.b(getActivity(), getLoaderManager(), this.e, this))
    {
      this.f = ((com.viber.voip.contacts.b)localObject);
      this.i = a(getActivity());
      this.j = z();
      this.k = v();
      this.g = new dr(this, getActivity(), this.f);
      this.h = new com.a.a.a.a();
      this.h.a(this.d);
      this.h.a(this.i);
      this.h.a(this.g);
      if (com.viber.voip.j.a.a().e()) {
        this.h.a(this.j);
      }
      this.h.a(this.k);
      c(null);
      this.d.registerDataSetObserver(new dq(this));
      return this.h;
    }
  }
  
  public void a(com.viber.provider.b paramb)
  {
    super.a(paramb);
    if ((paramb instanceof com.viber.voip.contacts.a)) {
      this.d.notifyDataSetChanged();
    }
  }
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    boolean bool1 = true;
    super.a(paramb, paramBoolean);
    b("onLoadFinished " + paramb + ", mSearchActive:" + this.l + ", count:" + paramb.getCount());
    com.a.a.a.a locala2;
    View localView2;
    if ((paramb instanceof com.viber.voip.messages.conversation.i))
    {
      if (this.l) {
        this.f.d(a((com.viber.voip.messages.conversation.i)paramb));
      }
      locala2 = this.h;
      localView2 = this.k;
      if ((this.g.getCount() != 0) || (this.d.getCount() != 0) || (!this.l)) {
        break label196;
      }
    }
    for (;;)
    {
      locala2.b(localView2, bool1);
      return;
      if (!(paramb instanceof com.viber.voip.contacts.a)) {
        break;
      }
      com.a.a.a.a locala1 = this.h;
      View localView1 = this.i;
      if ((this.l) && (paramb.getCount() > 0)) {}
      for (boolean bool2 = bool1;; bool2 = false)
      {
        locala1.b(localView1, bool2);
        this.g.notifyDataSetChanged();
        break;
      }
      label196:
      bool1 = false;
    }
  }
  
  public void a(String paramString)
  {
    c(paramString);
    super.a(paramString);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (this.f.a()) {
      this.f.m();
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.f.l();
  }
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((paramView.getTag() instanceof l)) {
      return false;
    }
    return super.onItemLongClick(paramAdapterView, paramView, paramInt, paramLong);
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if ((paramView.getTag() instanceof l))
    {
      a(((l)paramView.getTag()).k);
      return;
    }
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
  }
  
  void t()
  {
    if (!this.f.a())
    {
      this.f.e();
      this.f.n();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.dp
 * JD-Core Version:    0.7.0.1
 */