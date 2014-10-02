package com.viber.voip.process.a;

import android.os.Bundle;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;

class b
  extends PhoneControllerDelegateAdapter
{
  b(a parama, PhoneControllerWrapper paramPhoneControllerWrapper, com.viber.voip.process.b paramb) {}
  
  public void onGetBillingToken(long paramLong, String paramString)
  {
    this.a.removeDelegate(this);
    Bundle localBundle = new Bundle();
    localBundle.putLong("timestamp", paramLong);
    localBundle.putString("token", paramString);
    this.b.a(localBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.process.a.b
 * JD-Core Version:    0.7.0.1
 */