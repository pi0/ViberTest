package com.viber.voip.gallery.animation;

import android.view.View;
import android.view.View.OnClickListener;

class l
  implements View.OnClickListener
{
  l(d paramd, View paramView) {}
  
  public void onClick(View paramView)
  {
    d.b(this.b).a(this.a);
    if (d.c(this.b) != null)
    {
      d.c(this.b).removeCallbacks(d.d(this.b));
      d.a(this.b, null);
    }
    d.a(this.b, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.animation.l
 * JD-Core Version:    0.7.0.1
 */