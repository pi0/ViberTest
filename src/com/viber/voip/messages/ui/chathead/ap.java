package com.viber.voip.messages.ui.chathead;

import android.view.WindowManager.LayoutParams;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.messages.ui.bd;

class ap
  implements Runnable
{
  ap(d paramd, String paramString) {}
  
  public void run()
  {
    if ((!d.g(this.b)) || (!d.n(this.b))) {
      return;
    }
    if (d.u(this.b).x > d.f(this.b) / 2)
    {
      d.p(this.b).setBackgroundResource(2130838117);
      d.v(this.b).showAtLocation(d.i(this.b), 53, d.c(this.b).b, (d.c(this.b).b - d.c(this.b).n) / 2);
    }
    for (;;)
    {
      d.p(this.b).setText(this.a);
      d.w(this.b).a(d.p(this.b), bd.c, true);
      return;
      d.p(this.b).setBackgroundResource(2130838116);
      d.v(this.b).showAtLocation(d.i(this.b), 51, d.c(this.b).b, (d.c(this.b).b - d.c(this.b).n) / 2);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ap
 * JD-Core Version:    0.7.0.1
 */