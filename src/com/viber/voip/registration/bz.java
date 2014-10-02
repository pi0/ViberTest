package com.viber.voip.registration;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class bz
  extends BroadcastReceiver
{
  bz(RegistrationActivity paramRegistrationActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.a.setIntent(paramIntent);
    RegistrationActivity.a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.bz
 * JD-Core Version:    0.7.0.1
 */