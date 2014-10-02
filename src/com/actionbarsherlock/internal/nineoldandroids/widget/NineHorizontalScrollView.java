package com.actionbarsherlock.internal.nineoldandroids.widget;

import android.content.Context;
import android.widget.HorizontalScrollView;
import com.actionbarsherlock.internal.nineoldandroids.view.animation.AnimatorProxy;

public class NineHorizontalScrollView
  extends HorizontalScrollView
{
  private final AnimatorProxy mProxy;
  
  public NineHorizontalScrollView(Context paramContext)
  {
    super(paramContext);
    if (AnimatorProxy.NEEDS_PROXY) {}
    for (AnimatorProxy localAnimatorProxy = AnimatorProxy.wrap(this);; localAnimatorProxy = null)
    {
      this.mProxy = localAnimatorProxy;
      return;
    }
  }
  
  public float getAlpha()
  {
    if (AnimatorProxy.NEEDS_PROXY) {
      return this.mProxy.getAlpha();
    }
    return super.getAlpha();
  }
  
  public void setAlpha(float paramFloat)
  {
    if (AnimatorProxy.NEEDS_PROXY)
    {
      this.mProxy.setAlpha(paramFloat);
      return;
    }
    super.setAlpha(paramFloat);
  }
  
  public void setVisibility(int paramInt)
  {
    if (this.mProxy != null)
    {
      if (paramInt != 8) {
        break label23;
      }
      clearAnimation();
    }
    for (;;)
    {
      super.setVisibility(paramInt);
      return;
      label23:
      if (paramInt != 0) {}
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.widget.NineHorizontalScrollView
 * JD-Core Version:    0.7.0.1
 */