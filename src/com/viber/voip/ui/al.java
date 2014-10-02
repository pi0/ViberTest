package com.viber.voip.ui;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.actionbarsherlock.app.SherlockFragment;
import com.viber.voip.ViberApplication;
import com.viber.voip.d;
import com.viber.voip.util.gl;

public class al
  extends SherlockFragment
  implements d
{
  private static final String TAG = al.class.getSimpleName();
  
  private static void log(String paramString)
  {
    ViberApplication.log(3, TAG, paramString);
  }
  
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
    log("onAttach called");
    super.onAttach(paramActivity);
  }
  
  public void onDetach()
  {
    super.onDetach();
    gl.a(getView());
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
    if (localFragmentActivity != null)
    {
      localFragmentActivity.runOnUiThread(paramRunnable);
      return;
    }
    log("fragment was not attached ignoring ui update (!!!!!)");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.al
 * JD-Core Version:    0.7.0.1
 */