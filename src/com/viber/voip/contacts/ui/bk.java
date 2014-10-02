package com.viber.voip.contacts.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class bk
  extends BroadcastReceiver
{
  bk(ContactsFragment paramContactsFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool = paramIntent.getBooleanExtra("vo_enabled", false);
    if (ContactsFragment.a(this.a) != bool)
    {
      ContactsFragment.a(this.a, bool);
      ContactsFragment.a(this.a, ContactsFragment.b(this.a), this.a.g, ContactsFragment.a(this.a));
      this.a.c(1);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bk
 * JD-Core Version:    0.7.0.1
 */