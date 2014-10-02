package com.viber.voip.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.contacts.b.g;

final class ac
  implements DialogInterface.OnClickListener
{
  ac(g[] paramArrayOfg, ai paramai) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    String str = this.a[paramInt].b();
    this.b.a(true, str);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.ac
 * JD-Core Version:    0.7.0.1
 */