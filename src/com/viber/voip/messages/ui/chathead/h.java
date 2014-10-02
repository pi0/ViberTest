package com.viber.voip.messages.ui.chathead;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;
import com.viber.voip.messages.ui.chathead.a.a;

class h
  implements Runnable
{
  h(d paramd, a parama) {}
  
  public void run()
  {
    Rect localRect = new Rect();
    a locala = this.a;
    locala.getHitRect(localRect);
    localRect.top = (-10 + localRect.top);
    localRect.bottom = (10 + localRect.bottom);
    localRect.left = (-10 + localRect.left);
    localRect.right = (10 + localRect.right);
    TouchDelegate localTouchDelegate = new TouchDelegate(localRect, locala);
    if (View.class.isInstance(locala.getParent())) {
      ((View)locala.getParent()).setTouchDelegate(localTouchDelegate);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.h
 * JD-Core Version:    0.7.0.1
 */