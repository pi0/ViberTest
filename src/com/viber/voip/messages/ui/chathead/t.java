package com.viber.voip.messages.ui.chathead;

import android.widget.PopupWindow.OnDismissListener;
import com.viber.voip.messages.ui.chathead.a.l;

class t
  implements PopupWindow.OnDismissListener
{
  t(d paramd) {}
  
  public void onDismiss()
  {
    d.a("onDismiss: mIsReopened" + d.N(this.a));
    d.a(this.a).p();
    d.a(this.a).f();
    d.a(this.a).g();
    if (!d.N(this.a))
    {
      d.i(this.a, true);
      d.a(this.a).a(false);
      if ((d.l(this.a)) || (d.Y(this.a))) {
        d.b(this.a, 100);
      }
    }
    else
    {
      return;
    }
    d.Z(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.t
 * JD-Core Version:    0.7.0.1
 */