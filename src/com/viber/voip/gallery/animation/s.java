package com.viber.voip.gallery.animation;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorSet;
import com.nineoldandroids.animation.ObjectAnimator;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.ViberApplication;

public class s
  implements View.OnTouchListener
{
  public static final String a = s.class.getSimpleName();
  private Context b;
  private y c;
  private VelocityTracker d;
  private w e = w.a;
  private w f;
  private boolean g = false;
  private float h;
  private int i = -1;
  private int j = -1;
  private long k = 0L;
  private boolean l;
  private Rect m;
  
  public s(Context paramContext, y paramy, w paramw, int paramInt)
  {
    this.b = paramContext;
    this.c = paramy;
    if (paramw != null) {
      this.e = paramw;
    }
    this.j = paramInt;
    if ((this.j > 100) || (this.j < 0)) {
      this.j = 50;
    }
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    if (this.l) {
      paramView.setPressed(paramBoolean);
    }
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  public void a(View paramView)
  {
    this.g = true;
    ViewHelper.setAlpha(paramView, 0.0F);
    if ((this.e == w.a) || ((this.f != null) && (this.f == w.a))) {}
    for (float f1 = -paramView.getHeight();; f1 = paramView.getHeight())
    {
      ViewHelper.setTranslationY(paramView, f1);
      paramView.setVisibility(0);
      ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(paramView, "translationY", new float[] { 0.0F }).setDuration(250L);
      ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(paramView, "alpha", new float[] { 1.0F }).setDuration(250L);
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator2 });
      localAnimatorSet.addListener(new t(this, paramView));
      localAnimatorSet.start();
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.l = paramBoolean;
    if ((paramBoolean) && (this.m == null)) {
      this.m = new Rect();
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getPointerCount() > 1) {
      paramMotionEvent.setAction(3);
    }
    if (this.i < 0) {
      this.i = ViewConfiguration.get(this.b).getScaledTouchSlop();
    }
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    case 0: 
      if (this.g) {
        return false;
      }
      if (this.c != null) {
        this.c.b(paramView);
      }
      this.k = System.currentTimeMillis();
      a(paramView, true);
      this.h = paramMotionEvent.getRawY();
      a("mDownY=" + this.h);
      if (this.d == null) {
        this.d = VelocityTracker.obtain();
      }
      ((ViewGroup)paramView.getParent()).requestDisallowInterceptTouchEvent(false);
    case 3: 
    case 2: 
      float f11;
      float f12;
      for (;;)
      {
        return true;
        this.k = 0L;
        a(paramView, false);
        ViewHelper.setAlpha(paramView, 1.0F);
        ViewHelper.setTranslationY(paramView, 0.0F);
        this.g = false;
        ((ViewGroup)paramView.getParent()).requestDisallowInterceptTouchEvent(false);
        continue;
        if (this.l)
        {
          paramView.getDrawingRect(this.m);
          if (!this.m.contains((int)paramMotionEvent.getRawX(), (int)paramMotionEvent.getRawY())) {
            a(paramView, false);
          }
        }
        f11 = paramMotionEvent.getRawY() - this.h;
        f12 = Math.abs(f11);
        a("deltaY=" + f11 + " deltaYAbs=" + f12 + " mSwipeSlop=" + this.i);
        if ((!this.g) && (f12 > this.i))
        {
          ((ViewGroup)paramView.getParent()).requestDisallowInterceptTouchEvent(true);
          this.g = true;
          this.k = 0L;
          if (this.c != null) {
            this.c.a(paramView);
          }
        }
        if (this.g)
        {
          if (((f11 < 0.0F) || (this.e != w.a)) && ((f11 > 0.0F) || (this.e != w.b))) {
            break;
          }
          ViewHelper.setTranslationY(paramView, 0.0F);
          ViewHelper.setAlpha(paramView, 1.0F);
          this.g = false;
        }
      }
      if (f12 >= paramView.getHeight()) {}
      for (float f13 = 0.0F;; f13 = 1.0F - f12 / paramView.getHeight())
      {
        ViewHelper.setAlpha(paramView, f13);
        ViewHelper.setTranslationY(paramView, f11);
        this.d.addMovement(paramMotionEvent);
        break;
      }
    }
    float f1;
    float f2;
    float f9;
    label559:
    boolean bool1;
    float f4;
    float f3;
    float f5;
    label577:
    float f6;
    if (this.g)
    {
      ((ViewGroup)paramView.getParent()).requestDisallowInterceptTouchEvent(false);
      f1 = paramMotionEvent.getRawY() - this.h;
      f2 = Math.abs(f1);
      if (f2 > paramView.getHeight() * this.j / 100.0F)
      {
        float f8 = f2 / paramView.getHeight();
        if (f1 < 0.0F)
        {
          f9 = -paramView.getHeight();
          bool1 = true;
          f4 = 0.0F;
          float f10 = f9;
          f3 = f8;
          f5 = f10;
          if (f3 > 1.0F) {
            f3 = 1.0F;
          }
          a("remove=" + bool1 + " dist=" + f3);
          if (!bool1) {
            this.g = false;
          }
          this.d.computeCurrentVelocity(1000);
          int n = Math.abs((int)this.d.getYVelocity());
          a("velocity=" + n);
          this.d.clear();
          if (n <= 30) {
            break label875;
          }
          f6 = 250.0F * (1.0F - f3);
          label704:
          long l1 = (int)f6;
          if (this.e != w.a) {
            break label883;
          }
          boolean bool2 = f1 < 0.0F;
          float f7 = 0.0F;
          if (!bool2) {
            f7 = f5;
          }
          f5 = f7;
          label741:
          ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(paramView, "translationY", new float[] { f5 }).setDuration(l1);
          ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(paramView, "alpha", new float[] { f4 }).setDuration(l1);
          AnimatorSet localAnimatorSet = new AnimatorSet();
          localAnimatorSet.playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator2 });
          localAnimatorSet.addListener(new u(this, paramView, bool1));
          localAnimatorSet.start();
        }
      }
    }
    for (;;)
    {
      a(paramView, false);
      break;
      f9 = paramView.getHeight();
      break label559;
      f3 = 1.0F - f2 / paramView.getHeight();
      f4 = 1.0F;
      f5 = 0.0F;
      bool1 = false;
      break label577;
      label875:
      f6 = 150.0F;
      break label704;
      label883:
      if (this.e == w.b)
      {
        if (f1 >= 0.0F) {
          break label741;
        }
        f5 = 0.0F;
        break label741;
      }
      if (f5 > 0.0F) {}
      for (w localw = w.b;; localw = w.a)
      {
        this.f = localw;
        break;
      }
      this.g = false;
      this.k = (System.currentTimeMillis() - this.k);
      if ((this.k > 0L) && (this.k <= 250L) && (this.c != null)) {
        this.c.c(paramView);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.animation.s
 * JD-Core Version:    0.7.0.1
 */