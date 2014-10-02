package com.viber.service.contacts.sync;

import android.app.IntentService;
import android.content.Intent;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public class ContactsSyncAccountService
  extends IntentService
{
  private static final String a = ContactsSyncAccountService.class.getSimpleName();
  
  public ContactsSyncAccountService()
  {
    super(a);
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      ViberApplication localViberApplication;
      try
      {
        localViberApplication = (ViberApplication)getApplication();
        if ("com.viber.voip.action.ACTION_CHECK_ACCOUNT".equals(paramIntent.getAction()))
        {
          new com.viber.service.contacts.sync.b.a(localViberApplication).a();
          return;
        }
        if ("com.viber.voip.action.ACTION_REMOVE_ACCOUNT".equals(paramIntent.getAction()))
        {
          new com.viber.service.contacts.sync.b.a(localViberApplication).d();
          return;
        }
      }
      catch (Exception localException)
      {
        ViberApplication.preferences().a(j.R(), false);
        return;
      }
      if ("com.viber.voip.action.ACTION_SYNC_ACCOUNT".equals(paramIntent.getAction()))
      {
        if (dj.d()) {}
        com.viber.service.contacts.sync.a.a.a.a.b localb;
        for (Object localObject = new com.viber.service.contacts.sync.a.a.b.b(localViberApplication, localViberApplication.getSyncAccountName());; localObject = localb)
        {
          new com.viber.service.contacts.sync.b.b(getApplication(), (com.viber.service.contacts.sync.a.a)localObject).a();
          return;
          localb = new com.viber.service.contacts.sync.a.a.a.a.b(localViberApplication, localViberApplication.getSyncAccountName());
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.sync.ContactsSyncAccountService
 * JD-Core Version:    0.7.0.1
 */