package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class cs
  implements DialogInterface.OnClickListener
{
  cs(SystemDialogActivity paramSystemDialogActivity, long paramLong, MessageEntityImpl paramMessageEntityImpl) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    a.z.getClass();
    localbc.a(localu.a("311", "Retry"));
    ViberApplication.getInstance().getMessagesManager().c().b(this.a);
    Intent localIntent = j.a(this.b.getConversationId(), this.b.getConversationType());
    this.c.a(paramDialogInterface);
    this.c.startActivity(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.cs
 * JD-Core Version:    0.7.0.1
 */