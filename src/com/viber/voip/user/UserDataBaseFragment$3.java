package com.viber.voip.user;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class UserDataBaseFragment$3
  implements DialogInterface.OnClickListener
{
  UserDataBaseFragment$3(UserDataBaseFragment paramUserDataBaseFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (UserDataBaseFragment.access$000(this.this$0) != null)
    {
      UserDataBaseFragment.access$100(this.this$0);
      this.this$0.onImageUpdate();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserDataBaseFragment.3
 * JD-Core Version:    0.7.0.1
 */