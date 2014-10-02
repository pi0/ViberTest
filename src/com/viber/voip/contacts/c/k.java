package com.viber.voip.contacts.c;

import android.net.Uri;
import com.viber.jni.CGetUserDetails;
import com.viber.voip.user.UserData;

final class k
  extends r
{
  k(CGetUserDetails paramCGetUserDetails)
  {
    super(null);
  }
  
  public void a(String paramString)
  {
    a.c("checkIsUserNeedSetInfo. download complete! path: " + paramString);
    UserData.setImage(this.a.DownloadID, Uri.parse(paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.k
 * JD-Core Version:    0.7.0.1
 */