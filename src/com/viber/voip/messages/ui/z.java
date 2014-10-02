package com.viber.voip.messages.ui;

import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.FrameLayout.LayoutParams;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.k.a;
import com.viber.voip.messages.extras.image.h;

class z
  implements ViewTreeObserver.OnScrollChangedListener
{
  z(x paramx) {}
  
  public void onScrollChanged()
  {
    w.d(this.a.a).getDrawingRect(w.c(this.a.a));
    w.a(this.a.a).getHitRect(w.e(this.a.a));
    ((View)w.a(this.a.a).getParent()).getHitRect(w.f(this.a.a));
    if (!w.g(this.a.a))
    {
      w.a(this.a.a, true);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)w.b(this.a.a).getLayoutParams();
      localLayoutParams.width = (w.a(this.a.a).getWidth() + 2 * w.h(this.a.a));
      localLayoutParams.bottomMargin = (w.a(this.a.a).getHeight() + h.a(4.0F));
      localLayoutParams.leftMargin = (w.e(this.a.a).left + w.f(this.a.a).left - w.h(this.a.a));
      w.b(this.a.a).requestLayout();
      w.b(this.a.a).setVisibility(0);
    }
    if (Rect.intersects(w.c(this.a.a), w.e(this.a.a)))
    {
      w.d(this.a.a).getViewTreeObserver().removeOnScrollChangedListener(this);
      if (a.a().d() != 0L) {
        break label351;
      }
    }
    label351:
    for (long l = 10000L + SystemClock.uptimeMillis(); l > SystemClock.uptimeMillis(); l = a.a().d())
    {
      if (a.a().d() == 0L) {
        a.a().a(l);
      }
      dc.a(dk.a).postAtTime(new aa(this), l);
      return;
    }
    w.b(this.a.a).setVisibility(8);
    a.a().b(true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.z
 * JD-Core Version:    0.7.0.1
 */