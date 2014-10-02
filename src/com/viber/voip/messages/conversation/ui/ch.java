package com.viber.voip.messages.conversation.ui;

import android.content.Intent;
import com.viber.voip.messages.conversation.ap;
import com.viber.voip.messages.conversation.h;

class ch
  implements Runnable
{
  ch(ConversationInfoFragment paramConversationInfoFragment) {}
  
  public void run()
  {
    Intent localIntent = new Intent("com.viber.voip.action.ACTION_CONTACT_LIST_SELECTABLE2");
    localIntent.putExtra("thread_id", ConversationInfoFragment.a(this.a).a());
    localIntent.putExtra("extra_group_id", ConversationInfoFragment.a(this.a).d());
    localIntent.putExtra("extra_group_name", ConversationInfoFragment.a(this.a).c());
    localIntent.putExtra("participants_count", ConversationInfoFragment.b(this.a).getCount());
    this.a.startActivityForResult(localIntent, 2003);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ch
 * JD-Core Version:    0.7.0.1
 */