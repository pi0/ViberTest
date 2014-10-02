package com.viber.voip.ui;

import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.app.FragmentActivity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;

public abstract class h
  extends q
{
  private int a = -1;
  private int b = -1;
  private int c = -1;
  private final int d;
  private Runnable e = new j(this, null);
  protected boolean r;
  protected String s = "";
  
  protected h(int paramInt)
  {
    this.d = paramInt;
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "HomeBaseFragment", paramString);
  }
  
  protected void a(int paramInt) {}
  
  protected boolean b()
  {
    return false;
  }
  
  protected void b_()
  {
    if ((b()) && (this.c != getListAdapter().getCount()))
    {
      this.c = getListView().getAdapter().getCount();
      if (this.a >= this.c) {
        this.a = -1;
      }
      if ((this.c <= 0) || ((this.a != -1) && (this.c != 1))) {
        break label165;
      }
      a("Tablet Fragment Navigation: click on list item position : " + this.a);
      if (this.b != -1) {
        break label157;
      }
    }
    label157:
    for (int i = 0;; i = this.b)
    {
      this.a = i;
      View localView = getListView().getAdapter().getView(this.a, null, null);
      onListItemClick(getListView(), localView, this.a, this.a);
      return;
    }
    label165:
    a("Tablet Fragment Navigation: HomeBaseFragment onItemCountChanged");
    a(this.c);
  }
  
  public boolean c()
  {
    if ((!ViberApplication.isTablet()) && ((getActivity() instanceof HomeActivity)))
    {
      HomeActivity localHomeActivity = (HomeActivity)getActivity();
      return (localHomeActivity != null) && (localHomeActivity.b() == this.d);
    }
    return true;
  }
  
  protected void d(int paramInt)
  {
    this.a = paramInt;
  }
  
  protected int e(int paramInt)
  {
    if (this.a == -1) {
      return paramInt;
    }
    return this.a;
  }
  
  protected abstract boolean g();
  
  protected abstract void h();
  
  protected void i() {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      this.r = paramBundle.getBoolean("cont_mode", false);
      if (!paramBundle.containsKey("search_query")) {
        break label52;
      }
    }
    label52:
    for (String str = paramBundle.getString("search_query");; str = "")
    {
      this.s = str;
      this.b = paramBundle.getInt("position");
      return;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    dc.a(dk.a).removeCallbacks(this.e);
  }
  
  public void onFragmentVisibilityChanged(boolean paramBoolean)
  {
    super.onFragmentVisibilityChanged(paramBoolean);
    i();
    if ((paramBoolean) && (g()))
    {
      dc.a(dk.a).removeCallbacks(this.e);
      dc.a(dk.a).postDelayed(this.e, 500L);
    }
  }
  
  public void onNewStickerPackageCountChanged(int paramInt) {}
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("position", this.a);
    if (c())
    {
      paramBundle.putBoolean("cont_mode", this.r);
      paramBundle.putString("search_query", this.s);
    }
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    if (c()) {
      onFragmentVisibilityChanged(true);
    }
  }
  
  public void w()
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (getView() != null) {
      getListView().setItemChecked(this.a, true);
    }
    if ((localFragmentActivity != null) && (getView() != null) && (ViberApplication.isTablet())) {
      b_();
    }
  }
  
  protected int x()
  {
    return this.a;
  }
  
  protected void y()
  {
    if (getView() != null)
    {
      getListView().dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 3, 0.0F, 0.0F, 0));
      getListView().setSelectionFromTop(0, 0);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.h
 * JD-Core Version:    0.7.0.1
 */