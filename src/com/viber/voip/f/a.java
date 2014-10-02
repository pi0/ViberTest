package com.viber.voip.f;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.viber.voip.ui.TransparentRectangleView;

public class a
{
  private ViewGroup a;
  private View b;
  private TransparentRectangleView c;
  private View d;
  private View e;
  private View f;
  private View g;
  
  public a(Activity paramActivity, e parame)
  {
    this.a = ((ViewGroup)paramActivity.getWindow().getDecorView());
    this.b = LayoutInflater.from(paramActivity).inflate(2130903150, null);
    this.b.setOnTouchListener(new b(this, parame));
    this.a.addView(this.b);
    this.c = ((TransparentRectangleView)this.b.findViewById(2131165621));
    this.d = this.b.findViewById(2131165622);
    this.e = this.b.findViewById(2131165624);
    this.f = this.b.findViewById(2131165623);
    this.f.getViewTreeObserver().addOnGlobalLayoutListener(new c(this));
  }
  
  @TargetApi(16)
  public static void a(ViewTreeObserver paramViewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramViewTreeObserver.removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
  }
  
  private void d()
  {
    Rect localRect1 = new Rect();
    Rect localRect2 = new Rect();
    this.g.getGlobalVisibleRect(localRect1);
    this.e.getGlobalVisibleRect(localRect2);
    this.c.a(localRect1, false);
    this.b.setVisibility(0);
    AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation1.setDuration(250L);
    this.c.startAnimation(localAlphaAnimation1);
    AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation2.setStartOffset(300L);
    localAlphaAnimation2.setDuration(400L);
    this.f.startAnimation(localAlphaAnimation2);
    AlphaAnimation localAlphaAnimation3 = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation3.setStartOffset(350L);
    localAlphaAnimation3.setDuration(350L);
    this.d.startAnimation(localAlphaAnimation3);
    int i = localRect2.width();
    for (int j = localRect2.height(); (i > localRect1.width()) || (j > localRect1.height()); j = (int)(0.95F * j)) {
      i = (int)(0.95F * i);
    }
    int k = (int)(0.5F * i / 2.0F);
    int m = (int)(0.5F * j / 2.0F);
    Rect localRect3 = new Rect(localRect1.centerX() - k, localRect1.centerY() - m, k + localRect1.centerX(), m + localRect1.centerY());
    float f1 = localRect3.left - localRect2.left;
    float f2 = localRect3.top - localRect2.top;
    ScaleAnimation localScaleAnimation = new ScaleAnimation(localRect3.width() / localRect2.width(), 1.0F, localRect3.height() / localRect2.height(), 1.0F, 0, f1, 0, f2);
    localScaleAnimation.setStartOffset(50L);
    localScaleAnimation.setDuration(450L);
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(f1, 0.0F, f2, 0.0F);
    localScaleAnimation.setStartOffset(50L);
    localScaleAnimation.setDuration(450L);
    AlphaAnimation localAlphaAnimation4 = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation4.setStartOffset(300L);
    localAlphaAnimation4.setDuration(200L);
    AnimationSet localAnimationSet = new AnimationSet(true);
    localAnimationSet.addAnimation(localTranslateAnimation);
    localAnimationSet.addAnimation(localScaleAnimation);
    localAnimationSet.addAnimation(localAlphaAnimation4);
    this.e.startAnimation(localAnimationSet);
  }
  
  public void a()
  {
    this.a.getViewTreeObserver().addOnGlobalLayoutListener(new d(this));
  }
  
  public void b()
  {
    this.b.setVisibility(4);
    this.a.removeView(this.b);
  }
  
  public boolean c()
  {
    return this.b.getVisibility() == 0;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.f.a
 * JD-Core Version:    0.7.0.1
 */