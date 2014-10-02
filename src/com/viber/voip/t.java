package com.viber.voip;

import android.net.Uri;
import com.viber.jni.CGetUserDetails;
import com.viber.voip.util.hv;

class t
  implements Runnable
{
  t(r paramr, CGetUserDetails paramCGetUserDetails) {}
  
  public void run()
  {
    BaseAddFriendActivity.d(this.b.b);
    if (BaseAddFriendActivity.c(this.b.b)) {}
    while (BaseAddFriendActivity.a(this.b.b) == null) {
      return;
    }
    String str = this.a.Name;
    Uri localUri = hv.a(this.a.DownloadID);
    BaseAddFriendActivity.a(this.b.b).a(this.b.a, new BaseAddFriendActivity.ContactDetails(str, localUri));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.t
 * JD-Core Version:    0.7.0.1
 */