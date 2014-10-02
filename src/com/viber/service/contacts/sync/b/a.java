package com.viber.service.contacts.sync.b;

import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AccountManager;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Intent;
import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public class a
{
  private static final String a = a.class.getSimpleName();
  private ViberApplication b;
  
  public a(Application paramApplication)
  {
    this.b = ((ViberApplication)paramApplication);
  }
  
  private void a(Intent paramIntent, Account paramAccount)
  {
    if ((paramIntent != null) && (paramIntent.getExtras() != null))
    {
      AccountAuthenticatorResponse localAccountAuthenticatorResponse = (AccountAuthenticatorResponse)paramIntent.getExtras().getParcelable("accountAuthenticatorResponse");
      Bundle localBundle = new Bundle();
      localBundle.putString("authAccount", paramAccount.name);
      localBundle.putString("accountType", "com.viber.voip.account");
      if (localAccountAuthenticatorResponse != null) {
        localAccountAuthenticatorResponse.onResult(localBundle);
      }
    }
  }
  
  private boolean e()
  {
    if (ViberApplication.preferences().b("ViberAccountVersion", 1) != 4)
    {
      d();
      return true;
    }
    return false;
  }
  
  private Account f()
  {
    Account localAccount = new Account(this.b.getSyncAccountName(), "com.viber.voip.account");
    boolean bool = AccountManager.get(this.b).addAccountExplicitly(localAccount, this.b.getHardwareParameters().getUdid(), null);
    if (bool)
    {
      ContentResolver.setSyncAutomatically(localAccount, "com.android.contacts", true);
      ViberApplication.preferences().a("ViberAccountVersion", 4);
      Intent localIntent = new Intent("com.viber.voip.action.ACTION_SYNC_ACCOUNT");
      this.b.startService(localIntent);
    }
    if (bool) {
      return localAccount;
    }
    return null;
  }
  
  public void a()
  {
    a(null);
  }
  
  public void a(Intent paramIntent)
  {
    boolean bool = true;
    if ((!ViberApplication.isActivated()) || (!dj.e()))
    {
      ViberApplication.preferences().a(j.R(), bool);
      if (c()) {
        d();
      }
    }
    for (;;)
    {
      return;
      if (!ViberApplication.preferences().b(j.R(), bool)) {
        break;
      }
      if ((!c()) || (e()))
      {
        Account localAccount = f();
        if ((paramIntent != null) && (paramIntent.getExtras() != null) && (paramIntent.getExtras().getParcelable("accountAuthenticatorResponse") != null)) {}
        while ((bool) && (localAccount != null))
        {
          a(paramIntent, localAccount);
          return;
          bool = false;
        }
      }
    }
    d();
  }
  
  public Account b()
  {
    String str = this.b.getSyncAccountName();
    for (Account localAccount : AccountManager.get(this.b).getAccountsByType("com.viber.voip.account")) {
      if (localAccount.name.equals(str)) {
        return localAccount;
      }
    }
    return null;
  }
  
  public boolean c()
  {
    Account[] arrayOfAccount = AccountManager.get(this.b).getAccountsByType(this.b.getString(2131494829));
    return (arrayOfAccount != null) && (arrayOfAccount.length > 0);
  }
  
  public void d()
  {
    AccountManager localAccountManager = AccountManager.get(this.b);
    Account[] arrayOfAccount = localAccountManager.getAccountsByType(this.b.getString(2131494829));
    int i = arrayOfAccount.length;
    for (int j = 0; j < i; j++) {
      localAccountManager.removeAccount(arrayOfAccount[j], null, null);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.sync.b.a
 * JD-Core Version:    0.7.0.1
 */