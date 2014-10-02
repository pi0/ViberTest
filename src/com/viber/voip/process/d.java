package com.viber.voip.process;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

class d
  extends BroadcastReceiver
{
  d(c paramc, Class paramClass) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ProcessBoundTasks.a("4. Received reply broadcast class:" + this.a.getName() + ", replyAction:" + paramIntent.getAction());
    paramContext.getApplicationContext().unregisterReceiver(this);
    Bundle localBundle = paramIntent.getBundleExtra("data");
    this.b.processResult(localBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.process.d
 * JD-Core Version:    0.7.0.1
 */