package com.viber.voip.settings.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.messages.extras.fb.s;

class bn
  implements DialogInterface.OnClickListener
{
  bn(bj parambj, s params) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.a();
    this.a.a(this.b.getActivity(), new bo(this), false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.bn
 * JD-Core Version:    0.7.0.1
 */