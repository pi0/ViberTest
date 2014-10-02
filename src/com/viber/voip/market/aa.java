package com.viber.voip.market;

import android.content.Context;
import android.content.Intent;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.voip.ViberApplication;

final class aa
  extends PhoneControllerDelegateAdapter
{
  public void onGroupLeave(long paramLong1, long paramLong2, int paramInt)
  {
    int i = MarketReceiver.a(paramInt);
    MarketReceiver.a("onGroupLeave, groupId:" + paramLong1 + ", status:" + paramInt + ", web status:" + i);
    Intent localIntent = new Intent("MarketActivityPassiveReceiverAction");
    localIntent.putExtra("op", ad.b.ordinal());
    localIntent.putExtra("group_id", paramLong1);
    localIntent.putExtra("status", i);
    ViberApplication.getInstance().getApplicationContext().sendBroadcast(localIntent);
  }
  
  public void onJoinPublicGroup(long paramLong, int paramInt1, int paramInt2)
  {
    int i = MarketReceiver.a(paramInt2);
    MarketReceiver.a("onJoinPublicGroup, groupId:" + paramLong + ", status:" + paramInt2 + ", web status:" + i);
    Intent localIntent = new Intent("MarketActivityPassiveReceiverAction");
    localIntent.putExtra("op", ad.a.ordinal());
    localIntent.putExtra("group_id", paramLong);
    localIntent.putExtra("status", i);
    ViberApplication.getInstance().getApplicationContext().sendBroadcast(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.aa
 * JD-Core Version:    0.7.0.1
 */