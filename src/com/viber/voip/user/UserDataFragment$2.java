package com.viber.voip.user;

import android.net.Uri;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.w;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;

class UserDataFragment$2
  implements FacebookDetailsListener
{
  UserDataFragment$2(UserDataFragment paramUserDataFragment) {}
  
  public void onLoaded(FacebookDetails paramFacebookDetails)
  {
    bc.a().a(a.e.c());
    UserDataFragment.access$1100(this.this$0, paramFacebookDetails.getUserName());
    Uri localUri = h.a(paramFacebookDetails.getUserPhoto(), l.a);
    if (localUri != null)
    {
      this.this$0.setImage(localUri);
      this.this$0.onClick(UserDataFragment.UserDataActivityWrapper.access$100(UserDataFragment.access$600(this.this$0)));
      return;
    }
    this.this$0.showToast(2131493960);
  }
  
  public void onLoadingCanceled() {}
  
  public void onLoadingError(String paramString)
  {
    if (paramString.contains("Error validating access token"))
    {
      UserDataFragment.access$1200(this.this$0);
      return;
    }
    this.this$0.showToast(2131493961);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.UserDataFragment.2
 * JD-Core Version:    0.7.0.1
 */