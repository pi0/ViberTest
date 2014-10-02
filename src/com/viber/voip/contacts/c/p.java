package com.viber.voip.contacts.c;

import com.viber.jni.CGetUserDetails;
import com.viber.jni.GroupUserInfo;
import com.viber.voip.messages.controller.do;
import java.util.Arrays;

class p
  implements do
{
  p(n paramn) {}
  
  public void a() {}
  
  public void a(CGetUserDetails[] paramArrayOfCGetUserDetails)
  {
    a.c("addPhotoToParticipants NOT from contact book = " + Arrays.toString(paramArrayOfCGetUserDetails));
    GroupUserInfo[] arrayOfGroupUserInfo = new GroupUserInfo[paramArrayOfCGetUserDetails.length];
    for (int i = 0; i < arrayOfGroupUserInfo.length; i++)
    {
      CGetUserDetails localCGetUserDetails = paramArrayOfCGetUserDetails[i];
      arrayOfGroupUserInfo[i] = new GroupUserInfo(localCGetUserDetails.OriginalPhoneNumber, localCGetUserDetails.Name, localCGetUserDetails.DownloadID);
    }
    a.a(arrayOfGroupUserInfo);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.p
 * JD-Core Version:    0.7.0.1
 */