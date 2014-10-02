package com.viber.voip.messages.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class TextMessageLayout
  extends LinearLayout
{
  public TextMessageLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public TextMessageLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  @TargetApi(11)
  public TextMessageLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getChildCount();
    int j = getPaddingLeft() + getPaddingRight();
    int k = 0;
    View localView;
    LinearLayout.LayoutParams localLayoutParams;
    if (k < i)
    {
      localView = getChildAt(k);
      if (localView.getVisibility() == 8) {
        break label127;
      }
      measureChildWithMargins(localView, paramInt1, 0, paramInt2, 0);
      localLayoutParams = (LinearLayout.LayoutParams)localView.getLayoutParams();
    }
    label127:
    for (int i1 = j + (localLayoutParams.leftMargin + localView.getMeasuredWidth() + localLayoutParams.rightMargin);; i1 = j)
    {
      k++;
      j = i1;
      break;
      int m = View.MeasureSpec.getSize(paramInt1);
      int n = 0;
      if (j > m) {
        n = 1;
      }
      setOrientation(n);
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.TextMessageLayout
 * JD-Core Version:    0.7.0.1
 */