package com.viber.voip.messages.ui.media;

import android.view.View;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;

class bd
  implements Runnable
{
  bd(bb parambb) {}
  
  public void run()
  {
    if (this.a.a.a.isShowing())
    {
      ViewMediaActivity.e(this.a.a).startAnimation(bb.d(this.a));
      ViewMediaActivity.e(this.a.a).setVisibility(8);
      this.a.a.a.hide();
    }
    if (ViewMediaActivity.k(this.a.a))
    {
      if (ViewMediaActivity.l(this.a.a).getVisibility() == 0)
      {
        ViewMediaActivity.l(this.a.a).setVisibility(8);
        ViewMediaActivity.l(this.a.a).startAnimation(bb.e(ViewMediaActivity.h(this.a.a)));
      }
      if (ViewMediaActivity.c(this.a.a) != null) {
        ViewMediaActivity.c(this.a.a).a(8, bb.f(this.a));
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.bd
 * JD-Core Version:    0.7.0.1
 */