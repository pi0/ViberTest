package com.viber.voip.util;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.viber.voip.SystemDialogActivity;

final class ay
  implements DialogInterface.OnCancelListener
{
  ay(Context paramContext, CharSequence paramCharSequence, Runnable paramRunnable) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    at.a(this.a, this.b.toString());
    if (this.c != null) {
      this.c.run();
    }
    if ((this.a instanceof SystemDialogActivity)) {
      ((SystemDialogActivity)this.a).finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.ay
 * JD-Core Version:    0.7.0.1
 */