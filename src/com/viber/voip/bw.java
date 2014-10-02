package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;

class bw
  implements DialogInterface.OnClickListener
{
  bw(SystemDialogActivity paramSystemDialogActivity, Intent paramIntent) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    a.z.getClass();
    localbc.a(localu.a("305c", "Cancel"));
    if (this.a.getExtras() != null)
    {
      long l = this.a.getExtras().getLong("message_id");
      SystemDialogActivity.b(this.b, "Cancel get location, send message:" + l);
      ViberApplication.getInstance().getMessagesManager().c().c(l);
    }
    this.b.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.bw
 * JD-Core Version:    0.7.0.1
 */