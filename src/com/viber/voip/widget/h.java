package com.viber.voip.widget;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;

class h
  implements View.OnClickListener
{
  h(MessageBar paramMessageBar) {}
  
  public void onClick(View paramView)
  {
    if ((MessageBar.c(this.a) != null) && (MessageBar.d(this.a) != null))
    {
      MessageBar.c(this.a).a(MessageBar.d(this.a).g);
      MessageBar.b(this.a, null);
      MessageBar.f(this.a).removeCallbacks(MessageBar.e(this.a));
      MessageBar.e(this.a).run();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.h
 * JD-Core Version:    0.7.0.1
 */