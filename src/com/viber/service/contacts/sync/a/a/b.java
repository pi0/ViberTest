package com.viber.service.contacts.sync.a.a;

import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.ContactsContract.RawContacts;

abstract interface b
{
  public static final Uri a = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
  public static final String[] b = { "_id" };
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.sync.a.a.b
 * JD-Core Version:    0.7.0.1
 */