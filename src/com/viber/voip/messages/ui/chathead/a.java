package com.viber.voip.messages.ui.chathead;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class a
  extends BroadcastReceiver
{
  a(ChatHeadBackActivity paramChatHeadBackActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("com.viber.voip.action.CLOSE_POPUP_BACKGROUND_ACTIVITY"))
    {
      this.a.finish();
      this.a.overridePendingTransition(0, 0);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a
 * JD-Core Version:    0.7.0.1
 */