package com.viber.voip.util;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ax
  implements DialogInterface.OnClickListener
{
  ax(Context paramContext, CharSequence paramCharSequence, int paramInt, Runnable paramRunnable) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Context localContext = this.a;
    String str = this.b.toString();
    if (this.c <= 0) {}
    for (int i = 2131493558;; i = this.c)
    {
      at.a(localContext, str, i);
      at.b(paramDialogInterface);
      if (this.d != null) {
        this.d.run();
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.ax
 * JD-Core Version:    0.7.0.1
 */