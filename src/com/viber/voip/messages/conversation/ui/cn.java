package com.viber.voip.messages.conversation.ui;

import android.widget.Toast;

class cn
  implements Runnable
{
  private String b;
  
  private cn(ConversationInfoFragment paramConversationInfoFragment) {}
  
  public void a(String paramString)
  {
    this.b = paramString;
  }
  
  public void run()
  {
    if ("loading_dialog".equals(this.b)) {
      Toast.makeText(this.a.getActivity(), 2131494100, 1).show();
    }
    for (;;)
    {
      ConversationInfoFragment.a(this.a, this.b);
      ConversationInfoFragment.b(this.a, "SERVER TIMEOUT WHILE LEAVING GROUP");
      return;
      if ("rename_dialog".equals(this.b)) {
        this.a.a(0);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.cn
 * JD-Core Version:    0.7.0.1
 */