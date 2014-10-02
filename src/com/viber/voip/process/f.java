package com.viber.voip.process;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class f
  extends BroadcastReceiver
{
  f(e parame, i parami) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    h localh = h.values()[paramIntent.getIntExtra(e.b(), 0)];
    e.a("Received broadcast, method: " + localh);
    j localj = new j(paramIntent.getIntExtra(e.c(), 0), paramIntent.getStringExtra(e.d()));
    switch (g.a[localh.ordinal()])
    {
    default: 
      return;
    case 1: 
      this.a.b(localj);
      return;
    case 2: 
      this.a.c(localj);
      return;
    case 3: 
      this.a.a(localj);
      return;
    case 4: 
      int i = paramIntent.getIntExtra(e.e(), 0);
      this.a.a(localj, i);
      return;
    }
    boolean bool = paramIntent.getBooleanExtra(e.f(), false);
    this.a.a(bool, localj);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.process.f
 * JD-Core Version:    0.7.0.1
 */