package com.viber.voip.messages.ui.media;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.i;

class ax
  implements DialogInterface.OnClickListener
{
  ax(ViewMediaActivity paramViewMediaActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ViberApplication.getInstance().getMessagesManager().c().a(ViewMediaActivity.f(this.a).a(), null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ax
 * JD-Core Version:    0.7.0.1
 */