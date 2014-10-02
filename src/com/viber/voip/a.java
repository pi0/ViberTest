package com.viber.voip;

import com.viber.voip.messages.extras.fb.ad;

class a
  extends ad
{
  a(AboutActivity paramAboutActivity) {}
  
  public void onAuthorizationSuccess(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.a.runOnUiThread(new b(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.a
 * JD-Core Version:    0.7.0.1
 */