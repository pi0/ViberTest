package com.viber.voip.user;

import com.viber.voip.messages.extras.fb.ad;
import com.viber.voip.messages.extras.fb.s;

class YouFragment$5
  extends ad
{
  YouFragment$5(YouFragment paramYouFragment, FacebookDetailsListener paramFacebookDetailsListener, s params) {}
  
  public void onFacebookProfileStored()
  {
    this.this$0.log("onAuthorizationSuccess: thread " + Thread.currentThread().getName());
    YouFragment.access$400(this.this$0, this.val$listener, this.val$facebookManager);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.YouFragment.5
 * JD-Core Version:    0.7.0.1
 */