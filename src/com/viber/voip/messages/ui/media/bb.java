package com.viber.voip.messages.ui.media;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.TextView;

class bb
{
  private Animation b;
  private Animation c;
  private Animation d;
  private Animation e;
  private Animation f;
  private Animation g;
  private Runnable h = new bc(this);
  private Runnable i = new bd(this);
  
  private bb(ViewMediaActivity paramViewMediaActivity, Context paramContext)
  {
    this.b = AnimationUtils.loadAnimation(paramContext, 2130968590);
    this.c = AnimationUtils.loadAnimation(paramContext, 2130968591);
    this.b.setDuration(150L);
    this.c.setDuration(150L);
    this.d = new AlphaAnimation(0.0F, 1.0F);
    this.d.setInterpolator(new DecelerateInterpolator());
    this.d.setDuration(800L);
    this.e = new AlphaAnimation(1.0F, 0.0F);
    this.e.setInterpolator(new AccelerateInterpolator());
    this.e.setDuration(800L);
    if (Build.VERSION.SDK_INT > 10)
    {
      this.f = this.b;
      this.g = this.c;
      return;
    }
    this.f = this.d;
    this.g = this.e;
  }
  
  public void a()
  {
    ViewMediaActivity.j(this.a).removeCallbacks(this.i);
    if ((ViewMediaActivity.k(this.a)) && (ViewMediaActivity.l(this.a).getVisibility() == 8) && (ViewMediaActivity.e(this.a).getVisibility() == 0))
    {
      ViewMediaActivity.l(this.a).setVisibility(0);
      ViewMediaActivity.l(this.a).startAnimation(ViewMediaActivity.h(this.a).b);
    }
    while ((ViewMediaActivity.k(this.a)) || (ViewMediaActivity.l(this.a).getVisibility() != 0)) {
      return;
    }
    ViewMediaActivity.l(this.a).setVisibility(8);
    ViewMediaActivity.l(this.a).startAnimation(ViewMediaActivity.h(this.a).c);
  }
  
  public void a(int paramInt)
  {
    ViewMediaActivity.j(this.a).removeCallbacks(this.i);
    ViewMediaActivity.j(this.a).postDelayed(this.h, paramInt);
  }
  
  public void b(int paramInt)
  {
    ViewMediaActivity.j(this.a).removeCallbacks(this.h);
    ViewMediaActivity.j(this.a).postDelayed(this.i, paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.bb
 * JD-Core Version:    0.7.0.1
 */