package com.viber.voip.ui;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;

public class ap
  extends ViewPager
{
  public ap(Context paramContext)
  {
    super(paramContext);
  }
  
  public ap(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    try
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      getAdapter().notifyDataSetChanged();
      super.onMeasure(paramInt1, paramInt2);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.ap
 * JD-Core Version:    0.7.0.1
 */