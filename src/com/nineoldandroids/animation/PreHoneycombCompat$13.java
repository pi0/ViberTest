package com.nineoldandroids.animation;

import android.view.View;
import com.nineoldandroids.util.FloatProperty;
import com.nineoldandroids.view.animation.AnimatorProxy;

final class PreHoneycombCompat$13
  extends FloatProperty<View>
{
  PreHoneycombCompat$13(String paramString)
  {
    super(paramString);
  }
  
  public Float get(View paramView)
  {
    return Float.valueOf(AnimatorProxy.wrap(paramView).getX());
  }
  
  public void setValue(View paramView, float paramFloat)
  {
    AnimatorProxy.wrap(paramView).setX(paramFloat);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.nineoldandroids.animation.PreHoneycombCompat.13
 * JD-Core Version:    0.7.0.1
 */