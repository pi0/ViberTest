package com.viber.service.contacts.authentication;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class AccountAuthenticatorService
  extends Service
{
  private static a a;
  
  private a a()
  {
    if (a == null) {
      a = new a(getApplication());
    }
    return a;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.accounts.AccountAuthenticator")) {
      return a().getIBinder();
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.contacts.authentication.AccountAuthenticatorService
 * JD-Core Version:    0.7.0.1
 */