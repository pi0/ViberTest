package com.viber.voip.user;

import android.app.Activity;
import com.viber.voip.messages.extras.fb.ad;

class YouViberExperienceLayout$1
  extends ad
{
  YouViberExperienceLayout$1(YouViberExperienceLayout paramYouViberExperienceLayout) {}
  
  public void onAuthorizationSuccess(boolean paramBoolean)
  {
    if (paramBoolean) {
      YouViberExperienceLayout.access$100(this.this$0).runOnUiThread(new YouViberExperienceLayout.1.1(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.YouViberExperienceLayout.1
 * JD-Core Version:    0.7.0.1
 */