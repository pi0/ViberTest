package com.viber.voip.messages.ui.media;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;

class bc
  implements Runnable
{
  bc(bb parambb) {}
  
  public void run()
  {
    if (!this.a.a.a.isShowing())
    {
      if (!TextUtils.isEmpty(ViewMediaActivity.e(this.a.a).getText()))
      {
        ViewMediaActivity.e(this.a.a).startAnimation(bb.a(this.a));
        ViewMediaActivity.e(this.a.a).setVisibility(0);
      }
      this.a.a.a.show();
    }
    if ((ViewMediaActivity.k(this.a.a)) && (ViewMediaActivity.l(this.a.a).getVisibility() == 8))
    {
      ViewMediaActivity.l(this.a.a).setVisibility(0);
      ViewMediaActivity.l(this.a.a).startAnimation(bb.b(ViewMediaActivity.h(this.a.a)));
      ViewMediaActivity.c(this.a.a).a(0, bb.c(this.a));
      if (ViewMediaActivity.c(this.a.a).i()) {
        this.a.b(1500);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.bc
 * JD-Core Version:    0.7.0.1
 */