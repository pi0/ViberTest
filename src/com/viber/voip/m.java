package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class m
  implements DialogInterface.OnCancelListener
{
  m(BaseAddFriendActivity paramBaseAddFriendActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    BaseAddFriendActivity.b(this.a).run();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.m
 * JD-Core Version:    0.7.0.1
 */