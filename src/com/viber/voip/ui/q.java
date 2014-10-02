package com.viber.voip.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.support.v4.app.FragmentActivity;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.stickers.e.c;

public abstract class q
  extends an
{
  private BroadcastReceiver mNewPackageCountListener;
  
  protected int getNewPackagesCount()
  {
    FragmentActivity localFragmentActivity = getActivity();
    if ((this.mNewPackageCountListener == null) && (localFragmentActivity != null))
    {
      this.mNewPackageCountListener = new r(this);
      localFragmentActivity.registerReceiver(this.mNewPackageCountListener, new IntentFilter("com.viber.voip.stickers.notification.UPDATE_STICKER_PACKAGES_COUNT_ACTION"));
    }
    return c.a();
  }
  
  public void onDestroyView()
  {
    if (this.mNewPackageCountListener != null)
    {
      FragmentActivity localFragmentActivity = getActivity();
      if (localFragmentActivity != null) {
        localFragmentActivity.unregisterReceiver(this.mNewPackageCountListener);
      }
      this.mNewPackageCountListener = null;
    }
    super.onDestroyView();
  }
  
  public abstract void onNewStickerPackageCountChanged(int paramInt);
  
  protected void setMoreOptionMenuIcon(MenuItem paramMenuItem, int paramInt)
  {
    if (paramMenuItem != null) {
      if (paramInt <= 0) {
        break label20;
      }
    }
    label20:
    for (int i = 2130838267;; i = 2130838266)
    {
      paramMenuItem.setIcon(i);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.q
 * JD-Core Version:    0.7.0.1
 */