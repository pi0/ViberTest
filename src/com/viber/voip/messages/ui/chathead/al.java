package com.viber.voip.messages.ui.chathead;

import android.content.Context;
import android.content.Intent;
import android.widget.FrameLayout;
import com.nineoldandroids.view.ViewHelper;

class al
  implements Runnable
{
  al(d paramd) {}
  
  public void run()
  {
    if (!d.g(this.a)) {}
    while (!d.h(this.a)) {
      return;
    }
    ViewHelper.setAlpha(d.i(this.a), 1.0F);
    d.j(this.a).setVisibility(4);
    d.k(this.a).sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP_BACKGROUND_ACTIVITY"));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.al
 * JD-Core Version:    0.7.0.1
 */