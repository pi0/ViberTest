package com.viber.voip.messages.extras.fb;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class m
  implements DialogInterface.OnClickListener
{
  m(FacebookLikeDialogActivity paramFacebookLikeDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    FacebookLikeDialogActivity.a(this.a);
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.m
 * JD-Core Version:    0.7.0.1
 */