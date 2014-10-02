package pager;

import android.view.animation.Interpolator;

final class c
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return 1.0F + f * (f * (f * (f * f)));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     pager.c
 * JD-Core Version:    0.7.0.1
 */