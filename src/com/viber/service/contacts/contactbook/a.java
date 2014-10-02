package com.viber.service.contacts.contactbook;

import android.accounts.Account;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.SyncResult;
import android.os.Bundle;

public class a
  extends AbstractThreadedSyncAdapter
{
  private static final String a = a.class.getSimpleName();
  
  public a(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
  }
  
  public void onPerformSync(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.contactbook.a
 * JD-Core Version:    0.7.0.1
 */