package com.viber.voip.messages.ui.a;

import android.view.animation.Animation;
import android.widget.ListView;
import com.viber.voip.messages.adapters.u;

class g
  implements u
{
  g(c paramc, int paramInt, u paramu) {}
  
  public void a()
  {
    if (c.h(this.c) != this.a)
    {
      if ((c.d(this.c).getAnimation() != null) && (!c.d(this.c).getAnimation().hasEnded()))
      {
        c.d(this.c).getAnimation().cancel();
        c.d(this.c).clearAnimation();
      }
      this.c.e();
      c.d(this.c).startAnimation(c.i(this.c));
    }
    for (;;)
    {
      if (this.b != null) {
        this.b.a();
      }
      c.d(this.c, this.a);
      c.a(this.c, -2147483648);
      c.b(this.c, -2147483648);
      return;
      this.c.b();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.a.g
 * JD-Core Version:    0.7.0.1
 */