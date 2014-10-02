package com.viber.voip.market.a;

import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.market.MarketPublicGroupInfo;
import com.viber.voip.market.MarketReceiver;
import com.viber.voip.process.b;

class e
  extends PhoneControllerDelegateAdapter
{
  e(d paramd, b paramb, MarketPublicGroupInfo paramMarketPublicGroupInfo) {}
  
  public void onJoinPublicGroup(long paramLong, int paramInt1, int paramInt2)
  {
    int i = MarketReceiver.a(paramInt2);
    d.a("onJoinPublicGroup, groupId:" + paramLong + ", status:" + paramInt2 + ", web status:" + i);
    ViberApplication.getInstance().getPhoneController(true).removeDelegate(this);
    this.a.a(d.a(this.c, this.b.a, i));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.a.e
 * JD-Core Version:    0.7.0.1
 */