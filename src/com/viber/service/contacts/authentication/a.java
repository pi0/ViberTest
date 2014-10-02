package com.viber.service.contacts.authentication;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public class a
  extends AbstractAccountAuthenticator
{
  private static final String a = a.class.getSimpleName();
  private com.viber.service.contacts.sync.b.a b;
  
  public a(Application paramApplication)
  {
    super(paramApplication.getApplicationContext());
    this.b = new com.viber.service.contacts.sync.b.a(paramApplication);
  }
  
  public Bundle addAccount(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    if (dj.e())
    {
      if (!ViberApplication.isActivated()) {
        localBundle.putParcelable("intent", new Intent("com.viber.voip.action.DEFAULT"));
      }
    }
    else {
      return localBundle;
    }
    if (!this.b.c())
    {
      localBundle.putParcelable("intent", new Intent("com.viber.voip.action.SYNC_ACCOUNT_ENABLE"));
      return localBundle;
    }
    localBundle.putParcelable("intent", new Intent("com.viber.voip.action.NO_MULTI_SYNC_ACCOUNTS_ALLOWED"));
    return localBundle;
  }
  
  public Bundle confirmCredentials(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, Bundle paramBundle)
  {
    return null;
  }
  
  public Bundle editProperties(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, String paramString)
  {
    return null;
  }
  
  public Bundle getAccountRemovalAllowed(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount)
  {
    Bundle localBundle = super.getAccountRemovalAllowed(paramAccountAuthenticatorResponse, paramAccount);
    l locall;
    String str;
    if ((localBundle != null) && (localBundle.containsKey("booleanResult")) && (!localBundle.containsKey("intent")) && (localBundle.getBoolean("booleanResult")))
    {
      locall = ViberApplication.preferences();
      str = j.R();
      if (!ViberApplication.isActivated()) {
        break label71;
      }
    }
    label71:
    for (boolean bool = false;; bool = j.X())
    {
      locall.a(str, bool);
      return localBundle;
    }
  }
  
  public Bundle getAuthToken(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
  {
    return null;
  }
  
  public String getAuthTokenLabel(String paramString)
  {
    return null;
  }
  
  public Bundle hasFeatures(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String[] paramArrayOfString)
  {
    return null;
  }
  
  public Bundle updateCredentials(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
  {
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.contacts.authentication.a
 * JD-Core Version:    0.7.0.1
 */