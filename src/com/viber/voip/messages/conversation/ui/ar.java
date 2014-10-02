package com.viber.voip.messages.conversation.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.viber.voip.messages.conversation.a.a.a;
import com.viber.voip.messages.conversation.a.a.a.k;

class ar
  implements AdapterView.OnItemClickListener
{
  ar(ConversationFragment paramConversationFragment) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((paramView == null) || (paramView.getTag() == null)) {}
    while ((ConversationFragment.a(this.a) == null) || (!ConversationFragment.a(this.a).a())) {
      return;
    }
    k localk = (k)paramView.getTag();
    ConversationFragment.a(this.a).a(((a)localk.c()).a());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ar
 * JD-Core Version:    0.7.0.1
 */