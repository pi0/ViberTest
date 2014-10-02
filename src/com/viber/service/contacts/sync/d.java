package com.viber.service.contacts.sync;

import android.content.Context;
import android.content.Intent;

class d
  implements Runnable
{
  d(a parama) {}
  
  public void run()
  {
    Intent localIntent = new Intent("com.viber.voip.action.ACTION_CHECK_ACCOUNT");
    a.a(this.a).startService(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.sync.d
 * JD-Core Version:    0.7.0.1
 */