package com.viber.voip.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import com.viber.voip.bb;

public class MaxWidthLinearLayout
  extends LinearLayout
{
  private final int a;
  
  public MaxWidthLinearLayout(Context paramContext)
  {
    super(paramContext);
    this.a = 0;
  }
  
  public MaxWidthLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = getContext().obtainStyledAttributes(paramAttributeSet, bb.MaxWidthLinearLayout).getDimensionPixelSize(0, 2147483647);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    if ((this.a > 0) && (this.a < i))
    {
      int j = View.MeasureSpec.getMode(paramInt1);
      paramInt1 = View.MeasureSpec.makeMeasureSpec(this.a, j);
    }
    super.onMeasure(paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.MaxWidthLinearLayout
 * JD-Core Version:    0.7.0.1
 */