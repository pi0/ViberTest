package com.viber.voip.viberout.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class am
  implements DialogInterface.OnClickListener
{
  am(ViberOutDialogs paramViberOutDialogs, String paramString, aw paramaw) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (this.a != null)
    {
      bc localbc = bc.a();
      u localu = a.z;
      String str = this.a;
      a.z.getClass();
      localbc.a(localu.a(str, "Ok"));
    }
    if (this.b != null) {
      this.b.a();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.am
 * JD-Core Version:    0.7.0.1
 */