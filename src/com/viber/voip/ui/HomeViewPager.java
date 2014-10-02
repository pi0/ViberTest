package com.viber.voip.ui;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class HomeViewPager
  extends ViewPager
{
  private boolean a = true;
  
  public HomeViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.a) {
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.a) {
      return super.onTouchEvent(paramMotionEvent);
    }
    return false;
  }
  
  public void setPagingEnabled(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.HomeViewPager
 * JD-Core Version:    0.7.0.1
 */