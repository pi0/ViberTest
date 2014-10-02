package com.viber.voip.market;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;

public class MarketReceiver
  extends BroadcastReceiver
{
  private static final String a = MarketReceiver.class.getSimpleName();
  private ac b;
  
  public static int a(int paramInt)
  {
    switch (paramInt)
    {
    case 1: 
    default: 
      return 0;
    case 2: 
      return 2;
    }
    return 1;
  }
  
  public static void a()
  {
    ViberApplication.getInstance().getPhoneController(false).registerDelegate(new aa());
  }
  
  private static void b(String paramString) {}
  
  public void a(ac paramac)
  {
    if (this.b == null) {
      ViberApplication.getInstance().registerReceiver(this, new IntentFilter("MarketActivityPassiveReceiverAction"));
    }
    this.b = paramac;
  }
  
  public void b()
  {
    ViberApplication.getInstance().unregisterReceiver(this);
    this.b = null;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ad localad = ad.values()[paramIntent.getIntExtra("op", 0)];
    switch (ab.a[localad.ordinal()])
    {
    }
    long l1;
    int i;
    do
    {
      long l2;
      int j;
      do
      {
        return;
        l2 = paramIntent.getLongExtra("group_id", 0L);
        j = paramIntent.getIntExtra("status", 0);
        b("onReceive, op:" + localad + ", groupId:" + l2 + ", status:" + j);
      } while (this.b == null);
      this.b.a(l2, j);
      return;
      l1 = paramIntent.getLongExtra("group_id", 0L);
      i = paramIntent.getIntExtra("status", 0);
      b("onReceive, op:" + localad + ", groupId:" + l1 + ", status:" + i);
    } while (this.b == null);
    this.b.b(l1, i);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.MarketReceiver
 * JD-Core Version:    0.7.0.1
 */