package com.viber.voip.messages.conversation.ui;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.provider.b;
import com.viber.provider.e;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.conversation.a.v;
import com.viber.voip.messages.conversation.ah;
import com.viber.voip.messages.conversation.r;
import com.viber.voip.messages.ui.ConversationGalleryListView;
import com.viber.voip.ui.al;
import com.viber.voip.util.at;
import com.viber.voip.util.b.ab;
import com.viber.voip.util.b.ad;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class bv
  extends al
  implements View.OnClickListener, View.OnLongClickListener, ActionMode.Callback, e
{
  private v a;
  private ConversationGalleryListView b;
  private ah c;
  private View d;
  private View e;
  private int f;
  private ActionMode g;
  private Set<Long> h;
  private ad i;
  
  private void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      for (long l : paramBundle.getLongArray("selected_ids")) {
        this.h.add(Long.valueOf(l));
      }
      if (!this.h.isEmpty())
      {
        this.g = getSherlockActivity().startActionMode(this);
        a(getActivity(), this.h.size());
      }
    }
  }
  
  private void a(Long paramLong)
  {
    if (this.h.contains(paramLong)) {
      this.h.remove(paramLong);
    }
    for (;;)
    {
      this.a.a(this.h);
      if (!this.h.isEmpty()) {
        break;
      }
      this.g.finish();
      this.g = null;
      return;
      this.h.add(paramLong);
    }
    a(getActivity(), this.h.size());
  }
  
  public void a(Context paramContext, int paramInt)
  {
    View localView = this.g.getCustomView();
    if (localView == null)
    {
      localView = View.inflate(paramContext, 2130903057, null);
      localView.findViewById(2131165358).setVisibility(8);
      this.g.setCustomView(localView);
    }
    ((TextView)localView.findViewById(2131165357)).setText(String.valueOf(paramInt));
  }
  
  public void a(b paramb) {}
  
  public void a(b paramb, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a = new v(getActivity(), this.i, this.f, (r)paramb, this.h);
      this.a.a(this);
      this.a.a(this);
      this.b.setAdapter(this.a);
      this.d.setVisibility(8);
    }
    for (;;)
    {
      if (paramb.getCount() == 0)
      {
        this.e.setVisibility(0);
        this.b.setVisibility(8);
      }
      return;
      this.a.notifyDataSetChanged();
    }
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    int j = paramMenuItem.getItemId();
    boolean bool = false;
    if (j == 2131166290) {
      if (this.h.size() <= 1) {
        break label62;
      }
    }
    label62:
    for (int k = 2131494433;; k = 2131494331)
    {
      at.a(getActivity(), 0, k, null, new bw(this), 2131493558, 2131493706);
      bool = true;
      return bool;
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (gl.e(getActivity())) {}
    for (int j = 5;; j = 3)
    {
      this.f = j;
      this.c = new r(getActivity(), getSherlockActivity().getSupportLoaderManager(), ViberApplication.getInstance().getMessagesManager(), this, this.f);
      this.c.v();
      this.c.a(getArguments().getLong("conversation_id"));
      this.c.e();
      return;
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131165439)
    {
      getActivity().setResult(-1);
      getActivity().finish();
      return;
    }
    Long localLong = (Long)paramView.getTag();
    if (this.g == null)
    {
      gn.a(getActivity(), getArguments().getLong("conversation_id"), localLong.longValue(), getArguments().getString("conversation_name"), "");
      return;
    }
    a(localLong);
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    paramActionMode.getMenuInflater().inflate(2131755013, paramMenu);
    paramMenu.findItem(2131166289).setVisible(false);
    paramMenu.findItem(2131166291).setVisible(false);
    return true;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    getSherlockActivity().getSupportActionBar().setTitle(2131494420);
    getSherlockActivity().getSupportActionBar().setSubtitle(getArguments().getString("conversation_name"));
    View localView = paramLayoutInflater.inflate(2130903230, null);
    this.i = ab.a(getActivity(), getActivity().getSupportFragmentManager(), false);
    this.b = ((ConversationGalleryListView)localView.findViewById(2131165475));
    this.d = localView.findViewById(2131165601);
    this.e = localView.findViewById(2131165880);
    localView.findViewById(2131165439).setOnClickListener(this);
    this.h = new HashSet();
    a(paramBundle);
    return localView;
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    this.g = null;
    this.h.clear();
    this.a.a(null);
  }
  
  public void onDestroyView()
  {
    if (this.c != null) {
      this.c.u();
    }
    this.i.f();
    super.onDestroyView();
  }
  
  public boolean onLongClick(View paramView)
  {
    if (this.g == null) {
      this.g = getSherlockActivity().startActionMode(this);
    }
    a((Long)paramView.getTag());
    return true;
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return false;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    long[] arrayOfLong = new long[this.h.size()];
    Iterator localIterator = this.h.iterator();
    int k;
    for (int j = 0; localIterator.hasNext(); j = k)
    {
      Long localLong = (Long)localIterator.next();
      k = j + 1;
      arrayOfLong[j] = localLong.longValue();
    }
    paramBundle.putLongArray("selected_ids", arrayOfLong);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.bv
 * JD-Core Version:    0.7.0.1
 */