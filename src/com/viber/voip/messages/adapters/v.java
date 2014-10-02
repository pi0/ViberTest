package com.viber.voip.messages.adapters;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorListenerAdapter;
import com.actionbarsherlock.internal.nineoldandroids.animation.ValueAnimator;
import com.actionbarsherlock.internal.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import com.viber.voip.messages.ui.u;
import com.viber.voip.stickers.ba;
import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.ui.b;
import com.viber.voip.util.gl;

class v
  extends AnimatorListenerAdapter
  implements ValueAnimator.AnimatorUpdateListener
{
  private boolean b;
  private boolean c;
  private a d;
  private y e;
  private ValueAnimator f;
  private int g = 0;
  
  public v(q paramq, a parama)
  {
    this.d = parama;
  }
  
  private void a(y paramy)
  {
    this.e = paramy;
    this.g = (1 + this.g);
    paramy.b.a(this.d);
    if (this.d.g())
    {
      paramy.e.setVisibility(8);
      paramy.c.setVisibility(0);
      boolean bool3;
      if (!q.h(this.a))
      {
        bool3 = true;
        a(false, bool3);
        if (this.f == null) {
          break label129;
        }
        if (q.h(this.a)) {
          break label123;
        }
      }
      label123:
      for (boolean bool4 = true;; bool4 = false)
      {
        a(true, bool4);
        onAnimationUpdate(this.f);
        paramy.d.setVisibility(0);
        return;
        bool3 = false;
        break;
      }
      label129:
      gl.a(paramy.c, 255);
      paramy.d.setVisibility(8);
      paramy.b.a(true);
      return;
    }
    paramy.c.setVisibility(8);
    paramy.d.setVisibility(0);
    paramy.e.setVisibility(0);
    paramy.b.a(false);
    boolean bool1 = q.h(this.a);
    boolean bool2 = false;
    if (!bool1) {
      bool2 = true;
    }
    a(true, bool2);
  }
  
  private void a(boolean paramBoolean)
  {
    this.c = false;
    if (this.f != null)
    {
      this.f.removeAllListeners();
      this.f.removeAllUpdateListeners();
      this.f.cancel();
    }
    this.f = new ValueAnimator();
    this.f.setInterpolator(new AccelerateInterpolator());
    this.f.setDuration(2000L);
    this.f.setIntValues(new int[] { 0, 255 });
    this.f.addUpdateListener(this);
    this.f.addListener(this);
    if (paramBoolean) {
      this.f.setStartDelay(1000L);
    }
    this.f.start();
    onAnimationUpdate(this.f);
  }
  
  @SuppressLint({"InlinedApi"})
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = this.g;
    this.e.b.a(true, paramBoolean1, paramBoolean2, q.a(this.a), ba.a, new w(this, i));
  }
  
  public void a()
  {
    this.d.h();
  }
  
  public void a(MotionEvent paramMotionEvent)
  {
    if ((!this.d.g()) || (this.f != null)) {}
    do
    {
      do
      {
        do
        {
          return;
          if (paramMotionEvent.getAction() == 0)
          {
            this.e.g = true;
            int i = this.g;
            if (this.e.b.a(false, true, q.a(this.a), ba.a, new x(this, i)))
            {
              this.e.d.setVisibility(0);
              return;
            }
            this.b = true;
            return;
          }
          if (paramMotionEvent.getAction() != 1) {
            break;
          }
        } while (this.e == null);
        this.e.g = false;
        if (this.b) {
          this.c = true;
        }
        for (;;)
        {
          q.i(this.a).a(this.d.b);
          return;
          a(true);
        }
      } while (paramMotionEvent.getAction() != 3);
      if (this.e != null) {
        this.e.g = false;
      }
      this.c = false;
    } while ((this.f != null) || (this.e == null));
    this.e.d.setVisibility(8);
    this.e.b.a(true);
  }
  
  public void b()
  {
    this.e.b.a(null);
    this.e = null;
    this.b = false;
    this.c = false;
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (this.e != null)
    {
      this.e.d.setVisibility(8);
      this.e.d.setImageBitmap(null);
    }
    this.f = null;
  }
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    if (this.e != null)
    {
      int i = ((Integer)paramValueAnimator.getAnimatedValue()).intValue();
      gl.a(this.e.c, i);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.adapters.v
 * JD-Core Version:    0.7.0.1
 */