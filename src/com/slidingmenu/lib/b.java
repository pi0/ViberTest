package com.slidingmenu.lib;

import android.view.animation.Interpolator;

final class b
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return 1.0F + f * (f * (f * (f * f)));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.slidingmenu.lib.b
 * JD-Core Version:    0.7.0.1
 */