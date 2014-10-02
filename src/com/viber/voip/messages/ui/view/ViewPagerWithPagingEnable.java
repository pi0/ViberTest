package com.viber.voip.messages.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import com.viber.voip.ViberApplication;

public class ViewPagerWithPagingEnable
  extends ViewPager
{
  private boolean a = true;
  private i b;
  
  public ViewPagerWithPagingEnable(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.a) {
      try
      {
        boolean bool = super.onInterceptTouchEvent(paramMotionEvent);
        return bool;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        ViberApplication.log(Log.getStackTraceString(localIllegalArgumentException));
      }
    }
    return false;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((this.b != null) && ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)))
    {
      Log.d("ViewPagerWithPagingEnable", "w: " + paramInt1 + ", h: " + paramInt2);
      this.b.a(paramInt1, paramInt2);
    }
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.a) {
      try
      {
        boolean bool = super.onTouchEvent(paramMotionEvent);
        return bool;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        ViberApplication.log(Log.getStackTraceString(localIllegalArgumentException));
      }
    }
    return false;
  }
  
  public void setOnSizeChangeListener(i parami)
  {
    this.b = parami;
  }
  
  public void setPagingEnabled(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.view.ViewPagerWithPagingEnable
 * JD-Core Version:    0.7.0.1
 */