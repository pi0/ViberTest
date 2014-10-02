package com.viber.voip.ui;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.actionbarsherlock.app.SherlockListFragment;
import com.viber.voip.d;

public abstract class an
  extends SherlockListFragment
  implements d
{
  protected static final boolean DEBUG;
  private static final String TAG = an.class.getSimpleName();
  
  private static void log(String paramString) {}
  
  public boolean onActivityBackPressed()
  {
    return false;
  }
  
  public boolean onActivityKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public boolean onActivitySearchRequested()
  {
    return false;
  }
  
  public boolean onActivityTrackballEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(false);
  }
  
  public void onFragmentVisibilityChanged(boolean paramBoolean) {}
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }
  
  public void onTabReselected() {}
  
  protected void runOnUiThread(Runnable paramRunnable)
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity != null) {
      localFragmentActivity.runOnUiThread(paramRunnable);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.an
 * JD-Core Version:    0.7.0.1
 */