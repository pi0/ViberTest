package com.viber.voip.messages.controller.a;

import android.os.Handler;
import com.viber.jni.CGetUserDetails;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.messages.controller.do;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

class bv
  extends PhoneControllerDelegateAdapter
{
  private Runnable b;
  private final do c;
  private Handler d = new Handler();
  private PhoneControllerWrapper e;
  private Set<String> f;
  private List<CGetUserDetails> g;
  
  bv(br parambr, do paramdo, String[] paramArrayOfString, PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    this.f = new HashSet(Arrays.asList(paramArrayOfString));
    this.g = new ArrayList(paramArrayOfString.length);
    this.c = paramdo;
    this.e = paramPhoneControllerWrapper;
    this.e.registerDelegate(this);
    this.b = new bw(this, parambr);
    this.d.postDelayed(this.b, 20000L);
  }
  
  public void onGetUsersDetail(CGetUserDetails[] paramArrayOfCGetUserDetails)
  {
    br.a(this.a, "SyncUserInfoManager.onGetUsersDetail users.size = " + paramArrayOfCGetUserDetails.length + ", users = " + Arrays.toString(paramArrayOfCGetUserDetails));
    int i = paramArrayOfCGetUserDetails.length;
    for (int j = 0; j < i; j++)
    {
      CGetUserDetails localCGetUserDetails = paramArrayOfCGetUserDetails[j];
      if (localCGetUserDetails != null)
      {
        this.f.remove(localCGetUserDetails.OriginalPhoneNumber);
        this.g.add(localCGetUserDetails);
      }
    }
    if (this.f.isEmpty())
    {
      this.d.removeCallbacks(this.b);
      this.e.removeDelegate(this);
      if (paramArrayOfCGetUserDetails.length > 0) {
        this.c.a(paramArrayOfCGetUserDetails);
      }
    }
    else
    {
      return;
    }
    this.c.a();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bv
 * JD-Core Version:    0.7.0.1
 */