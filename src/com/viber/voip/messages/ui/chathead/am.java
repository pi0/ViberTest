package com.viber.voip.messages.ui.chathead;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.viber.voip.messages.ui.chathead.a.a;
import com.viber.voip.messages.ui.chathead.a.l;

class am
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  am(d paramd) {}
  
  public void onGlobalLayout()
  {
    if (d.l(this.a)) {}
    do
    {
      return;
      if (d.m(this.a))
      {
        d.b(this.a, true);
        if (!d.n(this.a))
        {
          d.a("onGlobalLayout: isFullScreen,!collapsed");
          d.a(this.a, false);
          d.a(this.a).dismiss();
          return;
        }
        d.a("onGlobalLayout: isFullScreen,collapsed");
        d.j(this.a).setVisibility(4);
        d.o(this.a).setVisibility(4);
        d.i(this.a).setVisibility(4);
        d.p(this.a).setVisibility(4);
        return;
      }
    } while (!d.q(this.a));
    d.a("onGlobalLayout: !isFullScreen,mToRestoreAfterFullScreen");
    d.i(this.a).setVisibility(0);
    d.p(this.a).setVisibility(0);
    d.b(this.a, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.am
 * JD-Core Version:    0.7.0.1
 */