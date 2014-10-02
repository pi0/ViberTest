package com.viber.voip.messages.controller;

import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PublicGroupInfo;
import com.viber.voip.ViberApplication;
import java.util.ArrayList;

class cd
  extends PhoneControllerDelegateAdapter
{
  cd(by paramby, int paramInt, ArrayList paramArrayList, aj paramaj) {}
  
  public void onSearchPublicGroups(int paramInt1, PublicGroupInfo[] paramArrayOfPublicGroupInfo, int paramInt2)
  {
    if (this.a == paramInt1)
    {
      ViberApplication.getInstance().getPhoneController(true).removeDelegate(this);
      if (paramInt2 == 0)
      {
        int i = paramArrayOfPublicGroupInfo.length;
        for (int j = 0; j < i; j++)
        {
          PublicGroupInfo localPublicGroupInfo = paramArrayOfPublicGroupInfo[j];
          this.b.add(localPublicGroupInfo);
        }
        this.c.a(this.b);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.cd
 * JD-Core Version:    0.7.0.1
 */