package com.viber.voip.messages.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class cu
  implements DialogInterface.OnClickListener
{
  cu(MessageComposerView paramMessageComposerView) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.cu
 * JD-Core Version:    0.7.0.1
 */