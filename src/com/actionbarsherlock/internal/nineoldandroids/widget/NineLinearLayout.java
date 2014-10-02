package com.actionbarsherlock.internal.nineoldandroids.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.actionbarsherlock.internal.nineoldandroids.view.animation.AnimatorProxy;

public class NineLinearLayout
  extends LinearLayout
{
  private final AnimatorProxy mProxy;
  
  public NineLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
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
  
  public float getTranslationX()
  {
    if (AnimatorProxy.NEEDS_PROXY) {
      return this.mProxy.getTranslationX();
    }
    return super.getTranslationX();
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
  
  public void setTranslationX(float paramFloat)
  {
    if (AnimatorProxy.NEEDS_PROXY)
    {
      this.mProxy.setTranslationX(paramFloat);
      return;
    }
    super.setTranslationX(paramFloat);
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
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.widget.NineLinearLayout
 * JD-Core Version:    0.7.0.1
 */