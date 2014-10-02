package com.viber.voip.user;

import com.viber.voip.messages.extras.fb.ad;
import com.viber.voip.messages.extras.fb.s;

class UserDataBaseFragment$4
  extends ad
{
  UserDataBaseFragment$4(UserDataBaseFragment paramUserDataBaseFragment, FacebookDetailsListener paramFacebookDetailsListener, s params) {}
  
  public void onFacebookProfileStored()
  {
    this.this$0.log("onAuthorizationSuccess: thread " + Thread.currentThread().getName());
    UserDataBaseFragment.access$200(this.this$0, this.val$listener, this.val$facebookManager);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.UserDataBaseFragment.4
 * JD-Core Version:    0.7.0.1
 */