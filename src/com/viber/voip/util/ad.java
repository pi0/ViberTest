package com.viber.voip.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import com.viber.voip.contacts.b.g;

final class ad
  implements DialogInterface.OnMultiChoiceClickListener
{
  ad(g[] paramArrayOfg, ai paramai) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt, boolean paramBoolean)
  {
    String str = this.a[paramInt].b();
    if (paramBoolean) {
      this.b.a(true, str);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      this.b.a(str);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.ad
 * JD-Core Version:    0.7.0.1
 */