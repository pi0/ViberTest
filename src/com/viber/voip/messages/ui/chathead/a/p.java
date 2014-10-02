package com.viber.voip.messages.ui.chathead.a;

import android.content.Context;
import android.view.KeyEvent;
import com.viber.voip.ui.z;

class p
  extends z
{
  p(l paraml, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getRepeatCount() == 0)) {
      this.a.m();
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a.p
 * JD-Core Version:    0.7.0.1
 */