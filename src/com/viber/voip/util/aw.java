package com.viber.voip.util;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;

final class aw
  implements DialogInterface.OnClickListener
{
  aw(Context paramContext, CharSequence paramCharSequence, int paramInt, az paramaz, CheckBox[] paramArrayOfCheckBox) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Context localContext = this.a;
    String str = this.b.toString();
    int i;
    if (this.c <= 0) {
      i = 2131493557;
    }
    for (;;)
    {
      at.a(localContext, str, i);
      at.b(paramDialogInterface);
      if (this.d != null) {}
      try
      {
        az localaz = this.d;
        if ((this.e[0] != null) && (this.e[0].isChecked())) {}
        for (boolean bool = true;; bool = false)
        {
          localaz.a(bool);
          return;
          i = this.c;
          break;
        }
        return;
      }
      catch (SecurityException localSecurityException)
      {
        localSecurityException.printStackTrace();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.aw
 * JD-Core Version:    0.7.0.1
 */