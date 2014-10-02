package com.viber.voip.viberout.ui;

import android.widget.LinearLayout.LayoutParams;
import com.viber.voip.messages.ui.PositioningAwareFrameLayout;

class i
  implements Runnable
{
  i(h paramh, int paramInt) {}
  
  public void run()
  {
    ViberOutActivity.a("Fixating balance container width: " + this.a);
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.b.a.getLayoutParams();
    localLayoutParams.weight = 0.0F;
    localLayoutParams.width = this.a;
    this.b.a.requestLayout();
    h.a(this.b, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.i
 * JD-Core Version:    0.7.0.1
 */