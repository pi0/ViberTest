package com.viber.voip.messages.ui.chathead;

import android.view.View;
import android.widget.FrameLayout;
import com.viber.voip.messages.ui.chathead.a.a;
import com.viber.voip.messages.ui.chathead.a.l;

class aj
  implements Runnable
{
  aj(ah paramah) {}
  
  public void run()
  {
    d.j(this.a.a, true);
    if (!d.n(this.a.a))
    {
      d.a("onPhoneStateChanged: default,!mIsCollapsedMode");
      d.a(this.a.a, false);
      d.a(this.a.a).dismiss();
      return;
    }
    d.a("onPhoneStateChanged: default,mIsCollapsedMode");
    d.j(this.a.a).setVisibility(4);
    d.o(this.a.a).setVisibility(4);
    d.i(this.a.a).setVisibility(4);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.aj
 * JD-Core Version:    0.7.0.1
 */