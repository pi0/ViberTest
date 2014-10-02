package com.viber.voip.gallery.animation;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import com.nineoldandroids.animation.AnimatorSet;
import com.nineoldandroids.animation.ObjectAnimator;

class m
  implements ViewTreeObserver.OnPreDrawListener
{
  m(SwipeableHorizontalScrollView paramSwipeableHorizontalScrollView, boolean paramBoolean1, int paramInt1, View paramView, int paramInt2, boolean paramBoolean2, x paramx, int paramInt3, int paramInt4) {}
  
  public boolean onPreDraw()
  {
    SwipeableHorizontalScrollView.a(this.i).getViewTreeObserver().removeOnPreDrawListener(this);
    int j;
    if (this.a) {
      j = this.b;
    }
    while (j > 0)
    {
      ObjectAnimator[] arrayOfObjectAnimator = new ObjectAnimator[j];
      View[] arrayOfView = new View[j];
      if (this.a)
      {
        int i1 = 0;
        int i3;
        for (int i2 = 0; i1 < j; i2 = i3)
        {
          View localView2 = SwipeableHorizontalScrollView.a(this.i).getChildAt(i1);
          arrayOfView[i2] = localView2;
          i3 = i2 + 1;
          float[] arrayOfFloat2 = new float[1];
          arrayOfFloat2[0] = this.c.getWidth();
          arrayOfObjectAnimator[i2] = ObjectAnimator.ofFloat(localView2, "translationX", arrayOfFloat2).setDuration(150L);
          i1++;
        }
        j = SwipeableHorizontalScrollView.a(this.i).getChildCount() - (1 + this.b);
      }
      else
      {
        int k = 1 + this.b;
        int m = 0;
        if (k < SwipeableHorizontalScrollView.a(this.i).getChildCount())
        {
          View localView1 = SwipeableHorizontalScrollView.a(this.i).getChildAt(k);
          arrayOfView[m] = localView1;
          int n = m + 1;
          float[] arrayOfFloat1 = new float[1];
          if (this.d == -1) {}
          for (float f1 = -this.c.getWidth();; f1 = -this.d)
          {
            arrayOfFloat1[0] = f1;
            arrayOfObjectAnimator[m] = ObjectAnimator.ofFloat(localView1, "translationX", arrayOfFloat1).setDuration(150L);
            k++;
            m = n;
            break;
          }
        }
        AnimatorSet localAnimatorSet = new AnimatorSet();
        localAnimatorSet.playTogether(arrayOfObjectAnimator);
        localAnimatorSet.start();
        localAnimatorSet.addListener(new n(this, arrayOfView));
        return false;
      }
    }
    if (this.b == -1 + SwipeableHorizontalScrollView.a(this.i).getChildCount())
    {
      this.i.smoothScrollBy(-this.h, 0);
      this.i.postDelayed(new p(this), 500L);
      return false;
    }
    SwipeableHorizontalScrollView.a(this.i, this.f, this.g, this.c, this.b, new View[0]);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.animation.m
 * JD-Core Version:    0.7.0.1
 */