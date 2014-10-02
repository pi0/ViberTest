package com.viber.voip.user;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageManager;
import android.support.v4.app.FragmentActivity;

class UserDataBaseFragment$1
  implements DialogInterface.OnClickListener
{
  UserDataBaseFragment$1(UserDataBaseFragment paramUserDataBaseFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.this$0.isRotationEnabled = false;
    if ((!this.this$0.getActivity().getPackageManager().hasSystemFeature("android.hardware.camera")) && (!this.this$0.getActivity().getPackageManager().hasSystemFeature("android.hardware.camera.front")))
    {
      this.this$0.imageAction(paramInt + 1);
      return;
    }
    this.this$0.imageAction(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.UserDataBaseFragment.1
 * JD-Core Version:    0.7.0.1
 */