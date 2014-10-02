package com.viber.voip.messages.ui.chathead;

import android.telephony.PhoneStateListener;
import android.view.View;
import android.widget.FrameLayout;
import com.viber.voip.messages.ui.chathead.a.a;
import com.viber.voip.messages.ui.chathead.a.l;

class au
  extends PhoneStateListener
{
  private au(d paramd) {}
  
  public void onCallStateChanged(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
    case 0: 
      do
      {
        return;
      } while (!d.l(this.a));
      d.i(this.a).setVisibility(0);
      d.j(this.a, false);
      return;
    }
    d.j(this.a, true);
    if (!d.n(this.a))
    {
      d.a(this.a, false);
      d.a(this.a).dismiss();
      return;
    }
    d.j(this.a).setVisibility(4);
    d.o(this.a).setVisibility(4);
    d.i(this.a).setVisibility(4);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.au
 * JD-Core Version:    0.7.0.1
 */