package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;

public class ParticipantControlsContainer
  extends LinearLayout
{
  private int a;
  
  public ParticipantControlsContainer(Context paramContext)
  {
    super(paramContext);
  }
  
  public ParticipantControlsContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    int j = View.MeasureSpec.makeMeasureSpec(0, 0);
    int k = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      localView.measure(j, paramInt2);
      k += localView.getMeasuredWidth() + localView.getPaddingLeft() + localView.getPaddingRight();
      i++;
    }
    int m = View.MeasureSpec.getMode(paramInt1);
    int n = View.MeasureSpec.getSize(paramInt1);
    if (m == 0) {
      n = Math.max(k, this.a);
    }
    for (;;)
    {
      super.onMeasure(paramInt1, paramInt2);
      setMeasuredDimension(n, getMeasuredHeight());
      return;
      if (m == -2147483648) {
        n = Math.min(Math.max(k, this.a), n);
      }
    }
  }
  
  public void setMinimumWidth(int paramInt)
  {
    super.setMinimumWidth(paramInt);
    this.a = paramInt;
    requestLayout();
    invalidate();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.ParticipantControlsContainer
 * JD-Core Version:    0.7.0.1
 */