package com.viber.voip.messages.ui.popup;

import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.ui.popup.a.h;
import java.util.HashMap;
import java.util.Map;

class c
  implements h
{
  private Map<Long, ConversationEntityImpl> b = new HashMap();
  
  c(PopupMessageActivity paramPopupMessageActivity) {}
  
  public ConversationEntityImpl a(long paramLong)
  {
    ConversationEntityImpl localConversationEntityImpl = (ConversationEntityImpl)this.b.get(Long.valueOf(paramLong));
    if (localConversationEntityImpl == null)
    {
      localConversationEntityImpl = as.a().c(paramLong);
      if (localConversationEntityImpl != null) {
        this.b.put(Long.valueOf(paramLong), localConversationEntityImpl);
      }
    }
    return localConversationEntityImpl;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.c
 * JD-Core Version:    0.7.0.1
 */