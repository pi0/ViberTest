package com.viber.service.contacts.sync.b;

import android.accounts.Account;
import android.app.Application;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public class b
{
  private static final String a = b.class.getSimpleName();
  private a b;
  private com.viber.service.contacts.sync.a.a c;
  
  public b(Application paramApplication, com.viber.service.contacts.sync.a.a parama)
  {
    this.b = new a(paramApplication);
    this.c = parama;
  }
  
  public void a()
  {
    Account localAccount = this.b.b();
    ViberApplication.preferences().a("PREF_CONTCATS_SYNC_ACCOUT_SYNCING", true);
    ViberApplication.preferences().a("PREF_CONTCATS_SYNC_ACCOUT_REQUEST", false);
    if (localAccount == null) {}
    for (;;)
    {
      ViberApplication.preferences().a("PREF_CONTCATS_SYNC_ACCOUT_SYNCING", false);
      return;
      try
      {
        if (!this.c.a().a()) {
          this.b.a();
        }
      }
      catch (Exception localException)
      {
        ViberApplication.preferences().a(j.R(), false);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.sync.b.b
 * JD-Core Version:    0.7.0.1
 */