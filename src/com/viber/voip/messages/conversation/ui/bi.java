package com.viber.voip.messages.conversation.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.viber.voip.block.i;
import com.viber.voip.messages.conversation.h;

class bi
  implements View.OnTouchListener
{
  bi(ba paramba) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (ba.b(this.a) != null) && (!ba.b(this.a).l()) && (i.a(ba.b(this.a).e())))
    {
      ba.a(this.a, null);
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.bi
 * JD-Core Version:    0.7.0.1
 */