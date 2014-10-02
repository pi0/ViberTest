package com.viber.voip.contacts.c;

import com.viber.jni.CGetUserDetails;
import com.viber.voip.messages.controller.do;

final class j
  implements do
{
  j(v paramv) {}
  
  public void a()
  {
    a.c("checkIsUserNeedSetInfo.onUpdateUserError");
    if (this.a != null) {
      this.a.a(q.b);
    }
  }
  
  public void a(CGetUserDetails[] paramArrayOfCGetUserDetails)
  {
    CGetUserDetails localCGetUserDetails = paramArrayOfCGetUserDetails[0];
    a.c("checkIsUserNeedSetInfo.onGetUserDetail name = " + localCGetUserDetails.Name + ", DownloadID = " + localCGetUserDetails.DownloadID);
    a.a(localCGetUserDetails, this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.j
 * JD-Core Version:    0.7.0.1
 */