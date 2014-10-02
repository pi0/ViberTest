package com.viber.service.contacts.sync;

import android.content.Context;
import android.content.Intent;

class c
  implements Runnable
{
  c(a parama) {}
  
  public void run()
  {
    Intent localIntent = new Intent("com.viber.voip.action.ACTION_SYNC_ACCOUNT");
    a.a(this.a).startService(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.contacts.sync.c
 * JD-Core Version:    0.7.0.1
 */