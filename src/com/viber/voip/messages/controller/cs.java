package com.viber.voip.messages.controller;

import android.location.Address;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.a.c;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class cs
  implements c
{
  cs(cr paramcr, MessageEntityImpl paramMessageEntityImpl) {}
  
  public void a(Address paramAddress, String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      ViberApplication.getInstance().getMessagesManager().c().c(this.a.getId(), paramString);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.cs
 * JD-Core Version:    0.7.0.1
 */