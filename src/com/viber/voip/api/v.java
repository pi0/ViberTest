package com.viber.voip.api;

import android.content.Intent;
import android.os.Bundle;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationData;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;

class v
  implements w
{
  v(t paramt, String paramString1, String paramString2, Bundle paramBundle, y paramy) {}
  
  public void a(PublicGroupConversationData paramPublicGroupConversationData)
  {
    int i;
    if (paramPublicGroupConversationData != null)
    {
      ConversationEntityImpl localConversationEntityImpl = as.a().b(this.a);
      if (localConversationEntityImpl == null) {
        break label146;
      }
      PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = as.a().b(localConversationEntityImpl.getGroupId());
      if (localPublicGroupConversationEntityImpl == null) {
        break label140;
      }
      if (1 == localPublicGroupConversationEntityImpl.getGroupRole())
      {
        i = 1;
        if ((this.b == null) || (i == 0)) {}
      }
    }
    for (;;)
    {
      Intent localIntent2 = j.a(paramPublicGroupConversationData, true);
      localIntent2.putExtra("go_up", true);
      if (i == 0)
      {
        this.c.remove("draft");
        this.c.remove("open_custom_menu");
      }
      this.d.a(0, localIntent2);
      return;
      i = 0;
      break;
      Intent localIntent1 = new Intent("com.viber.voip.action.PUBLIC_GROUP");
      this.d.a(0, localIntent1);
      return;
      label140:
      i = 0;
      break;
      label146:
      i = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.v
 * JD-Core Version:    0.7.0.1
 */