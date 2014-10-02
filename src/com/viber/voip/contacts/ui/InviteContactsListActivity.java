package com.viber.voip.contacts.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.app.ActionBar;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.b;

public class InviteContactsListActivity
  extends ContactsListActivity
{
  public void a(boolean paramBoolean, Intent paramIntent)
  {
    if (!paramBoolean) {
      return;
    }
    long l = paramIntent.getLongExtra("contact_id", -1L);
    ViberApplication.getInstance().getContactManager().a(l, new bz(this));
  }
  
  protected Fragment b()
  {
    return new by();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getSupportActionBar().setTitle(2131494048);
    getSupportActionBar().setIcon(2130837764);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.InviteContactsListActivity
 * JD-Core Version:    0.7.0.1
 */