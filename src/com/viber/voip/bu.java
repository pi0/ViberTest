package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.widget.CheckBox;
import com.viber.voip.util.upload.ac;

class bu
  implements DialogInterface.OnClickListener
{
  bu(SystemDialogActivity paramSystemDialogActivity, CheckBox[] paramArrayOfCheckBox, Intent paramIntent) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((this.a[0] != null) && (this.a[0].isChecked())) {
      ac.a();
    }
    SystemDialogActivity.a(this.c, this.b.getExtras());
    this.c.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.bu
 * JD-Core Version:    0.7.0.1
 */