package com.viber.voip;

import android.view.KeyEvent;
import android.view.MotionEvent;

public abstract interface d
{
  public abstract boolean onActivityBackPressed();
  
  public abstract boolean onActivityKeyUp(int paramInt, KeyEvent paramKeyEvent);
  
  public abstract boolean onActivitySearchRequested();
  
  public abstract boolean onActivityTrackballEvent(MotionEvent paramMotionEvent);
  
  public abstract void onFragmentVisibilityChanged(boolean paramBoolean);
  
  public abstract Object onRetainCustomNonConfigurationInstance();
  
  public abstract void onTabReselected();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.d
 * JD-Core Version:    0.7.0.1
 */