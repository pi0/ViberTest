package com.viber.voip.util;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.viber.voip.SystemDialogActivity;

final class av
  implements DialogInterface.OnCancelListener
{
  av(Context paramContext, String paramString) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    at.a(this.a, this.b);
    if ((this.a instanceof SystemDialogActivity)) {
      ((SystemDialogActivity)this.a).finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.av
 * JD-Core Version:    0.7.0.1
 */