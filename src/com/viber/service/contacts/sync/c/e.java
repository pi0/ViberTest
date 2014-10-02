package com.viber.service.contacts.sync.c;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.ContactsContract.AggregationExceptions;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.RawContacts;
import android.text.TextUtils;

public class e
{
  private final a a;
  private final ContentValues b = new ContentValues();
  private final com.viber.service.contacts.a c;
  private final Context d;
  private boolean e;
  private long f;
  private int g;
  private boolean h;
  private boolean i = true;
  
  public e(Context paramContext, long paramLong, String paramString1, String paramString2, boolean paramBoolean, com.viber.service.contacts.a parama)
  {
    this(paramContext, paramBoolean, parama);
    this.g = this.c.a();
    this.h = true;
    this.b.put("sourceid", String.valueOf(paramLong));
    this.b.put("sync1", paramString2);
    this.b.put("account_type", paramContext.getString(2131494829));
    this.b.put("account_name", paramString1);
    ContentProviderOperation.Builder localBuilder = a(ContactsContract.RawContacts.CONTENT_URI, paramBoolean, true).withValues(this.b);
    this.c.a(localBuilder.build());
  }
  
  public e(Context paramContext, long paramLong, boolean paramBoolean, com.viber.service.contacts.a parama)
  {
    this(paramContext, paramBoolean, parama);
    this.h = false;
    this.f = paramLong;
  }
  
  public e(Context paramContext, boolean paramBoolean, com.viber.service.contacts.a parama)
  {
    this.e = paramBoolean;
    this.d = paramContext;
    this.c = parama;
    this.a = new a(this.d);
  }
  
  public static ContentProviderOperation.Builder a(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2)
  {
    return ContentProviderOperation.newInsert(a(paramUri, paramBoolean1)).withYieldAllowed(paramBoolean2);
  }
  
  private static Uri a(Uri paramUri, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramUri = paramUri.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
    }
    return paramUri;
  }
  
  public static e a(Context paramContext, long paramLong, String paramString1, String paramString2, boolean paramBoolean, com.viber.service.contacts.a parama)
  {
    return new e(paramContext, paramLong, paramString1, paramString2, paramBoolean, parama);
  }
  
  private void a()
  {
    if (!this.h) {
      this.b.put("raw_contact_id", Long.valueOf(this.f));
    }
    ContentProviderOperation.Builder localBuilder = a(ContactsContract.Data.CONTENT_URI, this.e, this.i);
    localBuilder.withValues(this.b);
    if (this.h) {
      localBuilder.withValueBackReference("raw_contact_id", this.g);
    }
    this.i = false;
    this.c.a(localBuilder.build());
  }
  
  private void a(Uri paramUri, String paramString)
  {
    if (!this.h) {
      this.b.put(paramString, Long.valueOf(this.f));
    }
    ContentProviderOperation.Builder localBuilder = b(paramUri, this.e, this.i);
    localBuilder.withValues(this.b);
    if (this.h) {
      localBuilder.withValueBackReference(paramString, this.g);
    }
    this.i = false;
    this.c.a(localBuilder.build());
  }
  
  public static ContentProviderOperation.Builder b(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2)
  {
    return ContentProviderOperation.newUpdate(a(paramUri, paramBoolean1)).withYieldAllowed(paramBoolean2);
  }
  
  public static ContentProviderOperation.Builder c(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2)
  {
    return ContentProviderOperation.newDelete(a(paramUri, paramBoolean1)).withYieldAllowed(paramBoolean2);
  }
  
  public e a(long paramLong)
  {
    this.b.clear();
    this.b.put("data1", Long.valueOf(paramLong));
    this.b.put("mimetype", "vnd.android.cursor.item/group_membership");
    a();
    return this;
  }
  
  public e a(long paramLong, String paramString)
  {
    this.b.clear();
    if (!TextUtils.isEmpty(paramString))
    {
      this.b.put("data1", paramString);
      ContentProviderOperation.Builder localBuilder1 = b(ContactsContract.Data.CONTENT_URI, true, true);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      ContentProviderOperation.Builder localBuilder2 = localBuilder1.withSelection("_id=?", arrayOfString).withValues(this.b);
      this.c.a(localBuilder2.build());
    }
    return this;
  }
  
  public e a(String paramString)
  {
    this.b.clear();
    if (!TextUtils.isEmpty(paramString))
    {
      this.b.put("data1", paramString);
      this.b.put("mimetype", "vnd.android.cursor.item/name");
    }
    if (this.b.size() > 0) {
      a();
    }
    return this;
  }
  
  public e a(String paramString, int paramInt)
  {
    this.b.clear();
    if (!TextUtils.isEmpty(paramString))
    {
      this.b.put("data1", paramString);
      this.b.put("data2", Integer.valueOf(paramInt));
      this.b.put("mimetype", "vnd.android.cursor.item/phone_v2");
      a();
    }
    return this;
  }
  
  public e b(long paramLong)
  {
    this.b.clear();
    if (paramLong != 0L)
    {
      this.b.put("type", Integer.valueOf(1));
      this.b.put("raw_contact_id1", Long.valueOf(paramLong));
      a(ContactsContract.AggregationExceptions.CONTENT_URI, "raw_contact_id2");
    }
    return this;
  }
  
  public e b(String paramString)
  {
    this.b.clear();
    if (!this.h)
    {
      this.b.put("sync1", paramString);
      ContentProviderOperation.Builder localBuilder1 = b(ContactsContract.RawContacts.CONTENT_URI, true, true);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(this.f);
      ContentProviderOperation.Builder localBuilder2 = localBuilder1.withSelection("_id=?", arrayOfString).withValues(this.b);
      this.c.a(localBuilder2.build());
    }
    return this;
  }
  
  public e c(String paramString)
  {
    this.b.clear();
    this.a.a(this.b, paramString);
    a();
    return this;
  }
  
  public void c(long paramLong)
  {
    if (!this.h)
    {
      ContentProviderOperation.Builder localBuilder1 = c(ContactsContract.Data.CONTENT_URI, this.e, true);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      ContentProviderOperation.Builder localBuilder2 = localBuilder1.withSelection("_id=?", arrayOfString);
      this.c.a(localBuilder2.build());
    }
  }
  
  public e d(String paramString)
  {
    this.b.clear();
    this.a.b(this.b, paramString);
    a();
    return this;
  }
  
  public e e(String paramString)
  {
    this.b.clear();
    this.a.c(this.b, paramString);
    a();
    return this;
  }
  
  public e f(String paramString)
  {
    this.b.clear();
    this.a.d(this.b, paramString);
    a();
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.contacts.sync.c.e
 * JD-Core Version:    0.7.0.1
 */