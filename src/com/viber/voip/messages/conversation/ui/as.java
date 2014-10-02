package com.viber.voip.messages.conversation.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.FrameLayout;
import com.viber.voip.messages.extras.map.BalloonLayout;
import com.viber.voip.messages.ui.chathead.a.b;

class as
  implements AdapterView.OnItemLongClickListener
{
  as(ConversationFragment paramConversationFragment) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (((this.a instanceof b)) && (paramView.getTag() == null)) {
      return this.a.b(paramView);
    }
    if ((paramView == null) || (paramView.getTag() == null) || (this.a.d.i())) {
      return false;
    }
    if ((ConversationFragment.a(this.a) != null) && (!ConversationFragment.a(this.a).a()) && (!(paramView instanceof BalloonLayout)) && (!(paramView instanceof FrameLayout))) {
      return this.a.a(paramView);
    }
    return this.a.b(paramView);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.as
 * JD-Core Version:    0.7.0.1
 */