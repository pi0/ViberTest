package com.viber.voip.phone.b.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class b
  implements DialogInterface.OnClickListener
{
  b(a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = this.a.getString(2131494830);
    this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    paramDialogInterface.dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.b.b
 * JD-Core Version:    0.7.0.1
 */