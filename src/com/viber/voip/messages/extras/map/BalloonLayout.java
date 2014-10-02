package com.viber.voip.messages.extras.map;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;

public class BalloonLayout
  extends LinearLayout
{
  private float a;
  
  public BalloonLayout(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext.getResources().getDimension(2131361984);
  }
  
  public BalloonLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext.getResources().getDimension(2131361984);
    setDescendantFocusability(262144);
  }
  
  protected void dispatchSetPressed(boolean paramBoolean) {}
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(paramInt1), (int)this.a), i), paramInt2);
  }
  
  public void setMaxWidth(float paramFloat)
  {
    if (paramFloat != this.a)
    {
      this.a = paramFloat;
      requestLayout();
    }
  }
  
  public void setPressed(boolean paramBoolean)
  {
    if ((paramBoolean) && (((View)getParent()).isPressed())) {
      return;
    }
    super.setPressed(paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.BalloonLayout
 * JD-Core Version:    0.7.0.1
 */