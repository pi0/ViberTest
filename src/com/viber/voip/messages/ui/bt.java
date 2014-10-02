package com.viber.voip.messages.ui;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.widget.EditText;
import com.viber.voip.dc;
import com.viber.voip.dk;

class bt
  implements DialogInterface.OnClickListener
{
  bt(MessageComposerView paramMessageComposerView, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    ProgressDialog localProgressDialog = ProgressDialog.show(MessageComposerView.o(this.b), "Send custom stiker", "Checking on server");
    dc.a(dk.d).postAtFrontOfQueue(new bu(this, localProgressDialog));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.bt
 * JD-Core Version:    0.7.0.1
 */