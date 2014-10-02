package com.viber.voip.util;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class au
  implements DialogInterface.OnClickListener
{
  au(Context paramContext, String paramString, int paramInt, Runnable paramRunnable) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    at.a(this.a, this.b, this.c);
    paramDialogInterface.cancel();
    if (this.d != null) {
      this.d.run();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.au
 * JD-Core Version:    0.7.0.1
 */