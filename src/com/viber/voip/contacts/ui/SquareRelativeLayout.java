package com.viber.voip.contacts.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class SquareRelativeLayout
  extends RelativeLayout
{
  public SquareRelativeLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public SquareRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SquareRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2) {}
    for (;;)
    {
      super.onMeasure(paramInt2, paramInt2);
      return;
      paramInt2 = paramInt1;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.SquareRelativeLayout
 * JD-Core Version:    0.7.0.1
 */