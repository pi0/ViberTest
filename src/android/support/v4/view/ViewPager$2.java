package android.support.v4.view;

import android.view.animation.Interpolator;

final class ViewPager$2
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return 1.0F + f * (f * (f * (f * f)));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     android.support.v4.view.ViewPager.2
 * JD-Core Version:    0.7.0.1
 */