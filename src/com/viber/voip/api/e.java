package com.viber.voip.api;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class e
  implements DialogInterface.OnClickListener
{
  e(ViberUrlHandlerActivity paramViberUrlHandlerActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.viber.voip"));
    this.a.startActivity(localIntent);
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.e
 * JD-Core Version:    0.7.0.1
 */