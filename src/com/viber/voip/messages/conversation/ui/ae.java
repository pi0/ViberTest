package com.viber.voip.messages.conversation.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.viber.voip.messages.conversation.a.o;
import com.viber.voip.messages.ui.ExpandablePanelLayout;
import com.viber.voip.messages.ui.MessageComposerView;

class ae
  implements View.OnTouchListener
{
  ae(ConversationFragment paramConversationFragment) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      this.a.c.h.g();
      this.a.c.n.a();
      this.a.c.h.c();
    }
    return this.a.e.onTouch(paramView, paramMotionEvent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ae
 * JD-Core Version:    0.7.0.1
 */