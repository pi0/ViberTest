package com.viber.voip.contacts.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.animation.AnimatorSet;
import com.nineoldandroids.animation.AnimatorSet.Builder;
import com.nineoldandroids.animation.ObjectAnimator;

class aa
{
  private int a;
  private int b = 0;
  private View c;
  private View d;
  private int e;
  private int f;
  private Context g;
  private ViewGroup h;
  private ViewGroup i;
  private ViewGroup j;
  private ViewGroup k;
  
  public aa(Context paramContext, ViewGroup paramViewGroup1, ViewGroup paramViewGroup2)
  {
    this.g = paramContext;
    this.h = paramViewGroup1;
    this.i = paramViewGroup2;
    this.a = paramContext.getResources().getDimensionPixelSize(2131362120);
  }
  
  private void a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, float paramFloat3, float paramFloat4, Animator.AnimatorListener paramAnimatorListener)
  {
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this.c, "alpha", new float[] { paramFloat1, paramFloat2 });
    View localView1 = this.d;
    float[] arrayOfFloat1 = new float[1];
    arrayOfFloat1[0] = paramInt1;
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(localView1, "translationX", arrayOfFloat1);
    View localView2 = this.d;
    float[] arrayOfFloat2 = new float[1];
    arrayOfFloat2[0] = paramInt2;
    ObjectAnimator localObjectAnimator3 = ObjectAnimator.ofFloat(localView2, "translationY", arrayOfFloat2);
    ObjectAnimator localObjectAnimator4 = ObjectAnimator.ofFloat(this.d, "scaleX", new float[] { paramFloat3, paramFloat4 });
    ObjectAnimator localObjectAnimator5 = ObjectAnimator.ofFloat(this.d, "scaleY", new float[] { paramFloat3, paramFloat4 });
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(localObjectAnimator1).with(localObjectAnimator2).with(localObjectAnimator3).with(localObjectAnimator4).with(localObjectAnimator5);
    localAnimatorSet.setDuration(500L);
    if (paramAnimatorListener != null) {
      localAnimatorSet.addListener(paramAnimatorListener);
    }
    localAnimatorSet.start();
  }
  
  private boolean a()
  {
    if ((this.b == 1) && (this.b != 4))
    {
      b();
      return true;
    }
    return false;
  }
  
  private void b()
  {
    this.b = 4;
    a(1.0F, 0.0F, 0, 0, 1.4F, 1.0F, new ab(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.aa
 * JD-Core Version:    0.7.0.1
 */