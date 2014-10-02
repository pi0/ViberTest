package com.viber.voip.messages.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ad;
import com.viber.voip.a.bc;
import com.viber.voip.f.j;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.util.gl;
import java.util.Map;

public abstract class a
  extends com.viber.voip.ui.h
  implements View.OnTouchListener, AdapterView.OnItemLongClickListener, dk, dn
{
  public static final String a = a.class.getSimpleName();
  protected long b;
  private MessagesFragmentModeManager c;
  
  public a(int paramInt)
  {
    super(paramInt);
  }
  
  private void a(MessagesFragmentModeManager.MessagesFragmentModeManagerData paramMessagesFragmentModeManagerData, boolean paramBoolean)
  {
    this.c = a(paramMessagesFragmentModeManagerData, new c(this, paramBoolean));
    this.c.b(x());
    getActivity().supportInvalidateOptionsMenu();
  }
  
  private boolean a(MessagesFragmentModeManager.MessagesFragmentModeManagerData paramMessagesFragmentModeManagerData, Bundle paramBundle)
  {
    boolean bool = gl.e(getActivity());
    if ((paramMessagesFragmentModeManagerData != null) && (ViberApplication.isTablet()))
    {
      if ((!bool) && (paramMessagesFragmentModeManagerData.a == 1)) {
        return true;
      }
      if ((paramMessagesFragmentModeManagerData.a == 2) && (TextUtils.isEmpty(paramMessagesFragmentModeManagerData.a())))
      {
        paramMessagesFragmentModeManagerData.a = 0;
        paramMessagesFragmentModeManagerData.b();
        paramBundle.remove("conversation_search_result");
      }
    }
    return false;
  }
  
  protected MessagesFragmentModeManager a(MessagesFragmentModeManager.MessagesFragmentModeManagerData paramMessagesFragmentModeManagerData, do paramdo)
  {
    return new MessagesFragmentModeManager(this, this, paramMessagesFragmentModeManagerData, paramdo);
  }
  
  public abstract void a(long paramLong);
  
  public void a(long paramLong, boolean paramBoolean)
  {
    if (getActivity() == null) {}
    ListAdapter localListAdapter;
    label132:
    do
    {
      do
      {
        return;
        localListAdapter = getListAdapter();
      } while ((localListAdapter == null) || (getListView().getSelectedItemId() == paramLong) || (o().k()));
      int i = localListAdapter.getCount();
      for (int j = 0;; j++)
      {
        if (j >= i) {
          break label132;
        }
        if (paramLong == localListAdapter.getItemId(j))
        {
          if (ViberApplication.isTablet()) {
            a((com.viber.voip.messages.adapters.a.a)localListAdapter.getItem(j), false);
          }
          while (!o().l())
          {
            d(j);
            w();
            return;
            a(paramLong);
          }
          break;
        }
      }
    } while ((!paramBoolean) || (localListAdapter.getCount() <= 0) || (!ViberApplication.isTablet()));
    a((com.viber.voip.messages.adapters.a.a)localListAdapter.getItem(0), false);
    d(0);
    w();
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, boolean paramBoolean)
  {
    d(paramInt);
    com.viber.voip.messages.adapters.a.a locala = (com.viber.voip.messages.adapters.a.a)((com.viber.voip.messages.adapters.a.a.b)paramView.getTag()).c();
    if (locala == null) {}
    label103:
    do
    {
      boolean bool;
      HomeActivity localHomeActivity;
      do
      {
        return;
        bool = o().l();
        FragmentActivity localFragmentActivity = getActivity();
        if ((!ViberApplication.isTablet()) || (!(localFragmentActivity instanceof HomeActivity)) || (bool)) {
          break label103;
        }
        localHomeActivity = (HomeActivity)localFragmentActivity;
        if (this.b != locala.a()) {
          break;
        }
      } while (!paramBoolean);
      localHomeActivity.h();
      return;
      if (paramBoolean) {
        localHomeActivity.g();
      }
      if (bool) {
        break;
      }
      a(locala, paramBoolean);
    } while ((!l()) && (!n()));
    paramListView.setEnabled(false);
    paramListView.postDelayed(new b(this, paramListView), 1000L);
    return;
    super.onListItemClick(paramListView, paramView, paramInt, 0L);
  }
  
  public abstract void a(com.viber.voip.messages.adapters.a.a parama, boolean paramBoolean);
  
  public void a(com.viber.voip.messages.conversation.h paramh, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramh != null))
    {
      this.b = paramh.a();
      a(paramh.a(), false);
    }
  }
  
  public void a(Map<Long, dl> paramMap)
  {
    this.c.n();
    ViberApplication.getInstance().getMessagesManager().c().a(paramMap.keySet(), true, null);
  }
  
  public void b(int paramInt)
  {
    if (ViberApplication.isTablet())
    {
      if (1 != paramInt) {
        a(this.b, true);
      }
    }
    else {
      return;
    }
    getListView().setItemChecked(0, false);
  }
  
  public void b(Map<Long, dl> paramMap)
  {
    this.c.n();
    bc.a().a(com.viber.voip.a.a.q.a(paramMap.size()));
    ViberApplication.getInstance().getMessagesManager().c().a(paramMap.keySet(), null);
  }
  
  public void k() {}
  
  public abstract boolean l();
  
  public boolean n()
  {
    FragmentActivity localFragmentActivity = getActivity();
    return (localFragmentActivity != null) && ((localFragmentActivity instanceof HomeActivity)) && (!gl.e(localFragmentActivity));
  }
  
  public MessagesFragmentModeManager o()
  {
    return this.c;
  }
  
  public boolean onActivityBackPressed()
  {
    if (getActivity() == null) {}
    do
    {
      return false;
      if (ViberApplication.getInstance().getPromoHandler().e()) {
        return true;
      }
    } while (this.c == null);
    return this.c.r();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    MessagesFragmentModeManager.MessagesFragmentModeManagerData localMessagesFragmentModeManagerData;
    boolean bool2;
    if (paramBundle != null)
    {
      localMessagesFragmentModeManagerData = (MessagesFragmentModeManager.MessagesFragmentModeManagerData)paramBundle.getParcelable("mode_manager");
      bool2 = a(localMessagesFragmentModeManagerData, paramBundle);
      this.b = paramBundle.getLong("last_selected_conversation", 0L);
    }
    for (;;)
    {
      getListView().setOnTouchListener(this);
      getListView().setOnItemLongClickListener(this);
      if (getActivity() != null)
      {
        a(localMessagesFragmentModeManagerData, bool2);
        if (this.c.k()) {
          getActivity().getWindow().setSoftInputMode(4);
        }
      }
      return;
      boolean bool1 = ViberApplication.isTablet();
      localMessagesFragmentModeManagerData = null;
      bool2 = false;
      if (bool1)
      {
        FragmentActivity localFragmentActivity = getActivity();
        localMessagesFragmentModeManagerData = null;
        bool2 = false;
        if (localFragmentActivity != null)
        {
          this.b = getActivity().getIntent().getLongExtra("open_conversation_id", 0L);
          localMessagesFragmentModeManagerData = null;
          bool2 = false;
        }
      }
    }
  }
  
  public boolean onActivitySearchRequested()
  {
    if (this.c != null) {
      return this.c.q();
    }
    return false;
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if (this.c != null)
    {
      this.c.a(paramMenu, c());
      this.c.c(getNewPackagesCount());
    }
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
  }
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((this.c != null) && (!l()))
    {
      com.viber.voip.messages.adapters.a.a.b localb = (com.viber.voip.messages.adapters.a.a.b)paramView.getTag();
      dl localdl = this.c.a((com.viber.voip.messages.adapters.a.a)localb.c());
      boolean bool = this.c.a(((com.viber.voip.messages.adapters.a.a)localb.c()).a(), localdl);
      if (bool) {
        getListView().setItemChecked(paramInt, true);
      }
      return bool;
    }
    return false;
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (this.c.l())
    {
      com.viber.voip.messages.adapters.a.a locala = (com.viber.voip.messages.adapters.a.a)((com.viber.voip.messages.adapters.a.a.b)paramView.getTag()).c();
      dl localdl = this.c.a(locala);
      this.c.b(locala.a(), localdl);
    }
  }
  
  public void onNewStickerPackageCountChanged(int paramInt)
  {
    if (this.c != null) {
      this.c.c(paramInt);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    this.c.b(false);
    return true;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (c())
    {
      paramBundle.putParcelable("mode_manager", this.c.g());
      paramBundle.putLong("last_selected_conversation", this.b);
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((this.c != null) && (getView() != null) && ((paramView == getListView()) || (paramView.getId() == 16908292)) && (paramMotionEvent.getAction() == 0)) {
      this.c.s();
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.a
 * JD-Core Version:    0.7.0.1
 */