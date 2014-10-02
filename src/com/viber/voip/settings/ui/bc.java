package com.viber.voip.settings.ui;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;

class bc
  implements DialogInterface.OnClickListener
{
  bc(bb parambb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ProgressDialog localProgressDialog = ProgressDialog.show(this.a.getActivity(), null, this.a.getString(2131494282));
    localProgressDialog.setCancelable(false);
    bb.a(this.a).c().a(0L, new bd(this, localProgressDialog));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.bc
 * JD-Core Version:    0.7.0.1
 */