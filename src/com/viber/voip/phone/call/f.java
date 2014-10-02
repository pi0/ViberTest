package com.viber.voip.phone.call;

import android.content.res.Resources;
import com.viber.jni.CMissedCall;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.q;
import com.viber.voip.util.w;

class f
  extends PhoneControllerDelegateAdapter
{
  f(a parama) {}
  
  public void onCallMissed(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    a.a(this.a, "CallBackListener onCallMissed phoneNumber: " + paramString1 + ", numMissed: " + paramInt1 + ", numMissedOther: " + paramInt2 + ", clientName: " + paramString2 + ", callToken: " + paramLong);
    w.b(paramString1, a.b(this.a).getResources().getString(2131493744), new g(this, paramLong));
  }
  
  public boolean onGetMissedCalls(CMissedCall[] paramArrayOfCMissedCall)
  {
    long[] arrayOfLong = new long[paramArrayOfCMissedCall.length];
    for (int i = 0;; i++)
    {
      int j = paramArrayOfCMissedCall.length;
      if (i >= j) {
        break;
      }
      CMissedCall localCMissedCall = paramArrayOfCMissedCall[i];
      String str1 = localCMissedCall.getPhoneNumber();
      String str2 = a.b(this.a).getResources().getString(2131493744);
      ViberApplication localViberApplication = a.b(this.a);
      long l1 = localCMissedCall.getToken();
      long l2 = localCMissedCall.getCalledAt();
      int k = localCMissedCall.getFlags();
      h localh = new h(this, arrayOfLong, i, localCMissedCall);
      q.a(localViberApplication, l1, str1, l2, 0L, 3, 0, 0, k, str2, 0, "Viber", localh);
    }
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.call.f
 * JD-Core Version:    0.7.0.1
 */