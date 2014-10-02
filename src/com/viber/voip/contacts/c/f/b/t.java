package com.viber.voip.contacts.c.f.b;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SyncAdapterType;

public class t
{
  private static final String a = t.class.getSimpleName();
  
  public static void a(String paramString) {}
  
  public static boolean a(Context paramContext)
  {
    AccountManager localAccountManager = AccountManager.get(paramContext.getApplicationContext());
    for (SyncAdapterType localSyncAdapterType : ContentResolver.getSyncAdapterTypes())
    {
      Account[] arrayOfAccount = localAccountManager.getAccountsByType(localSyncAdapterType.accountType);
      for (int k = 0; k < arrayOfAccount.length; k++)
      {
        if (ContentResolver.getIsSyncable(arrayOfAccount[k], localSyncAdapterType.authority) > 0) {}
        for (int m = 1;; m = 0)
        {
          boolean bool1 = ContentResolver.isSyncActive(arrayOfAccount[k], localSyncAdapterType.authority);
          boolean bool2 = ContentResolver.isSyncPending(arrayOfAccount[k], localSyncAdapterType.authority);
          if ((m == 0) || (!bool1) || (bool2)) {
            break;
          }
          a("isExternalSyncActive: " + arrayOfAccount[k].name + ": account of type " + arrayOfAccount[k].type + " reports active sync state");
          return true;
        }
      }
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.t
 * JD-Core Version:    0.7.0.1
 */