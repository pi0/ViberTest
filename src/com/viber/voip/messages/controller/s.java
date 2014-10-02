package com.viber.voip.messages.controller;

import android.location.Address;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.extras.a.c;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;

class s
  implements c
{
  s(r paramr, long paramLong1, long paramLong2) {}
  
  public void a(Address paramAddress, String paramString)
  {
    PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = r.a(this.c).b(this.a);
    if (paramString == null) {
      paramString = "";
    }
    if ((localPublicGroupConversationEntityImpl != null) && (!paramString.equals(localPublicGroupConversationEntityImpl.getAddressString())))
    {
      localPublicGroupConversationEntityImpl.setAddressString(paramString);
      r.a(this.c).b(localPublicGroupConversationEntityImpl);
      r.b(this.c).d(this.b, false);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.s
 * JD-Core Version:    0.7.0.1
 */