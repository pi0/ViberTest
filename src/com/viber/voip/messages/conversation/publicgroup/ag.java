package com.viber.voip.messages.conversation.publicgroup;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class ag
  implements View.OnTouchListener
{
  ag(PublicGroupConversationFragment paramPublicGroupConversationFragment) {}
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0) {
      PublicGroupConversationFragment.e(this.a);
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.ag
 * JD-Core Version:    0.7.0.1
 */