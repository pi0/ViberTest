package com.viber.voip.api;

import android.content.Intent;
import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.i;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;

class u
  implements x
{
  u(t paramt, String paramString, Bundle paramBundle, y paramy) {}
  
  public void a(int paramInt, String paramString)
  {
    Intent localIntent;
    if (paramInt == 0)
    {
      ConversationEntityImpl localConversationEntityImpl = as.a().a(paramString);
      if ((localConversationEntityImpl != null) && (this.a != null)) {
        ViberApplication.getInstance().getMessagesManager().c().a(localConversationEntityImpl.getId(), this.a);
      }
      localIntent = j.a(0L, 0L, paramString, 0, 0L, 0L, "");
      localIntent.addFlags(67108864);
      localIntent.setAction("com.viber.voip.action.PRE_CONVERSATION");
      localIntent.putExtra("send_1to1", true);
      localIntent.putExtra("go_up", true);
      localIntent.putExtras(this.b);
    }
    for (;;)
    {
      y localy = this.c;
      int i = 0;
      if (localIntent != null) {}
      for (;;)
      {
        localy.a(i, localIntent);
        return;
        i = 1;
      }
      localIntent = null;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.u
 * JD-Core Version:    0.7.0.1
 */