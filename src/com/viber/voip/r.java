package com.viber.voip;

import android.os.Handler;
import com.viber.jni.CGetUserDetails;
import com.viber.voip.messages.controller.do;

class r
  implements do
{
  r(BaseAddFriendActivity paramBaseAddFriendActivity, String paramString) {}
  
  public void a()
  {
    BaseAddFriendActivity.e(this.b).removeCallbacks(BaseAddFriendActivity.b(this.b));
    BaseAddFriendActivity.e(this.b).post(new s(this));
  }
  
  public void a(CGetUserDetails[] paramArrayOfCGetUserDetails)
  {
    BaseAddFriendActivity.e(this.b).removeCallbacks(BaseAddFriendActivity.b(this.b));
    if (paramArrayOfCGetUserDetails.length > 0) {}
    for (CGetUserDetails localCGetUserDetails = paramArrayOfCGetUserDetails[0];; localCGetUserDetails = null)
    {
      BaseAddFriendActivity.e(this.b).post(new t(this, localCGetUserDetails));
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.r
 * JD-Core Version:    0.7.0.1
 */