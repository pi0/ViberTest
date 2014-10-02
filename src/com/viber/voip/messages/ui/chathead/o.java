package com.viber.voip.messages.ui.chathead;

import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.messages.ui.chathead.a.a;
import java.util.ArrayList;

class o
  extends AnimatorListenerAdapter
{
  o(d paramd, boolean paramBoolean, a parama) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (!d.g(this.c)) {}
    while ((this.a) || (!d.L(this.c))) {
      return;
    }
    if (d.n(this.c))
    {
      d.a(this.c, d.k(this.c));
      return;
    }
    if (d.t(this.c).size() > 2)
    {
      d.d(this.c, false);
      d.M(this.c).setVisibility(8);
      ViewHelper.setScaleX(d.y(this.c), 0.8F);
      ViewHelper.setScaleY(d.y(this.c), 0.8F);
      int i = d.j(this.c).indexOfChild(this.b);
      d.j(this.c).removeView(this.b);
      d.t(this.c).remove(d.t(this.c).get(i));
      for (int j = 0; j < d.t(this.c).size(); j++) {
        ((b)d.t(this.c).get(j)).a().bringToFront();
      }
      if (d.D(this.c)) {
        d.a(this.c, d.E(this.c));
      }
      d.a(this.c, i);
      return;
    }
    d.a(this.c, d.k(this.c));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.o
 * JD-Core Version:    0.7.0.1
 */