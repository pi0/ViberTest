package com.viber.voip.gallery.animation;

import android.view.View;
import android.view.View.OnClickListener;

class h
  implements View.OnClickListener
{
  h(g paramg) {}
  
  public void onClick(View paramView)
  {
    d.b(this.a.f).a(this.a.d);
    if (d.c(this.a.f) != null)
    {
      d.c(this.a.f).removeCallbacks(d.d(this.a.f));
      d.a(this.a.f, null);
    }
    d.a(this.a.f, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.animation.h
 * JD-Core Version:    0.7.0.1
 */