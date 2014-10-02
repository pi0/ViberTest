package com.viber.voip.messages.conversation.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.actionbarsherlock.view.ActionMode;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import java.util.HashSet;

class bw
  implements DialogInterface.OnClickListener
{
  bw(bv parambv) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ViberApplication.getInstance().getMessagesManager().c().a(new HashSet(bv.a(this.a)), true, null);
    bv.b(this.a).finish();
    bv.a(this.a, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.bw
 * JD-Core Version:    0.7.0.1
 */