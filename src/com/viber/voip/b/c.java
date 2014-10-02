package com.viber.voip.b;

import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;

class c
  extends PhoneControllerDelegateAdapter
{
  c(a parama, String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, String paramString4, String paramString5, long paramLong3, PhoneControllerWrapper paramPhoneControllerWrapper) {}
  
  public void onLBServerTime(long paramLong)
  {
    super.onLBServerTime(paramLong);
    a.a(this.j, this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, System.currentTimeMillis() - paramLong);
    this.i.removeDelegate(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.b.c
 * JD-Core Version:    0.7.0.1
 */