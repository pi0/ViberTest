package com.viber.voip.contacts.c.d;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.viber.provider.contacts.g;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b.a.o;
import com.viber.voip.i.a;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class aa
{
  private static final String a = aa.class.getSimpleName();
  private ViberApplication b;
  private com.viber.voip.contacts.c.e.b c;
  private AsyncEntityManager d;
  private AsyncEntityManager e;
  private AsyncEntityManager f;
  private AsyncEntityManager g;
  
  public aa(ViberApplication paramViberApplication)
  {
    this.b = paramViberApplication;
    this.c = com.viber.voip.contacts.c.e.b.a(paramViberApplication);
    this.d = new AsyncEntityManager(com.viber.voip.contacts.b.b.e.b);
    this.f = new AsyncEntityManager(o.a);
    this.e = new AsyncEntityManager(com.viber.voip.contacts.b.b.e.c);
    this.g = new AsyncEntityManager(com.viber.voip.contacts.b.b.d.a);
  }
  
  private Uri a(long paramLong, String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      return ContactsContract.Contacts.getLookupUri(paramLong, paramString);
    }
    return Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(paramLong));
  }
  
  public static com.viber.voip.contacts.b.b a(Context paramContext, long paramLong)
  {
    if (paramLong != -1L)
    {
      Cursor localCursor = paramContext.getContentResolver().query(com.viber.voip.contacts.b.b.e.b.getContentUri(), com.viber.voip.contacts.b.b.e.b.getProjections(), "phonebookcontact._id=" + paramLong, null, null);
      if ((localCursor != null) && (localCursor.moveToFirst())) {
        return (com.viber.voip.contacts.b.b)com.viber.voip.contacts.b.b.e.b.createInstance(localCursor);
      }
      com.viber.voip.util.al.a(localCursor);
    }
    return null;
  }
  
  public com.viber.voip.contacts.b.b a(String paramString)
  {
    String str = PhoneNumberUtils.stripSeparators(paramString);
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    AsyncEntityManager localAsyncEntityManager = new AsyncEntityManager(com.viber.voip.contacts.b.b.e.b);
    localAsyncEntityManager.fillCursorSync(null, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1=? OR phonebookdata.data2=?))", new String[] { str, str });
    com.viber.voip.contacts.b.b localb = (com.viber.voip.contacts.b.b)localAsyncEntityManager.getEntity(0);
    localAsyncEntityManager.closeCursor();
    return localb;
  }
  
  public void a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(ContentProviderOperation.newDelete(g.a).build());
    localArrayList.add(ContentProviderOperation.newDelete(com.viber.provider.contacts.d.a).build());
    localArrayList.add(ContentProviderOperation.newDelete(com.viber.provider.contacts.f.a).build());
    localArrayList.add(ContentProviderOperation.newDelete(com.viber.provider.contacts.e.a).build());
    this.c.a(0, "com.viber.provider.vibercontacts", null, localArrayList);
  }
  
  public void a(long paramLong, int paramInt, ap paramap)
  {
    com.viber.voip.contacts.c.e.b localb = this.c;
    Uri localUri = com.viber.provider.contacts.d.a;
    String[] arrayOfString1 = { "flags" };
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(paramLong);
    localb.a(1584, null, localUri, arrayOfString1, "_id=?", arrayOfString2, null, new af(this, paramInt, paramLong, paramap), false, false);
  }
  
  public void a(long paramLong1, long paramLong2, String paramString, boolean paramBoolean, ap paramap)
  {
    ContentValues localContentValues = new ContentValues(1);
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("starred", Integer.valueOf(i));
      this.c.a(1584, paramString, com.viber.provider.contacts.d.a, localContentValues, "_id=" + paramLong1, null, new ab(this, paramap, paramBoolean, paramLong1, paramString), false, true);
      return;
    }
  }
  
  public void a(long paramLong, ap paramap)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("recently_joined_date", Integer.valueOf(0));
    this.c.a(0, null, com.viber.provider.contacts.d.a, localContentValues, "_id=" + paramLong, null, new ao(this, paramap));
  }
  
  public void a(long paramLong, h paramh)
  {
    AsyncEntityManager localAsyncEntityManager = this.d;
    com.viber.voip.contacts.c.e.b localb = this.c;
    am localam = new am(this, paramh);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    localAsyncEntityManager.fillCursor(localb, localam, 0, "phonebookcontact._id=?", arrayOfString);
  }
  
  public void a(long paramLong, String paramString, ap paramap)
  {
    this.c.a(1589, paramString, com.viber.provider.contacts.e.a, "contact_id=" + paramLong, null, new aj(this, paramap, paramLong, paramString), false, true);
  }
  
  public void a(aq paramaq)
  {
    this.c.a(1584, null, g.a, new String[] { "canonized_number", "photo" }, "photo<>actual_photo", null, null, new ae(this, paramaq), false, false);
  }
  
  public void a(ar paramar)
  {
    this.c.a(0, null, com.viber.provider.contacts.d.a, new String[] { "phone_label" }, null, null, null, new ai(this, paramar), false, false, true);
  }
  
  public void a(String paramString, i parami)
  {
    String str = PhoneNumberUtils.stripSeparators(paramString);
    if (TextUtils.isEmpty(str))
    {
      if (parami != null) {
        parami.a(paramString, new HashSet());
      }
      return;
    }
    this.d.fillCursor(this.c, new ak(this, parami, paramString), 0, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1=? OR phonebookdata.data2=?))", new String[] { str, str });
  }
  
  public void a(String paramString1, String paramString2, as paramas)
  {
    String str = PhoneNumberUtils.stripSeparators(paramString1);
    if (TextUtils.isEmpty(str))
    {
      if (paramas != null) {
        paramas.a(new ArrayList());
      }
      return;
    }
    this.g.fillCursor(this.c, new ah(this, paramString2, paramas), "phonebookcontact.low_display_name ASC, phonebookcontact._id DESC", 0, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1=? OR phonebookdata.data2=?))", new String[] { str, paramString2 });
  }
  
  public void a(Set<String> paramSet, ap paramap)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("actual_photo", "");
    this.c.a(1584, null, g.a, localContentValues, "canonized_number IN (" + a.a(paramSet) + ")", null, new ac(this, paramap), false, false);
  }
  
  public void a(Set<String> paramSet, j paramj)
  {
    if ((paramSet == null) || (paramSet.size() == 0))
    {
      if (paramj != null) {
        paramj.a(new HashMap(), new HashMap());
      }
      return;
    }
    AsyncEntityManager localAsyncEntityManager = this.e;
    com.viber.voip.contacts.c.e.b localb = this.c;
    an localan = new an(this, paramj);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.a(paramSet);
    localAsyncEntityManager.fillCursor(localb, localan, 0, String.format("phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data2 IN (%s)))", arrayOfObject), new String[0]);
  }
  
  public void a(Set<String> paramSet, k paramk)
  {
    this.f.fillCursor(this.c, new al(this, paramk), 0, "canonized_number IN (" + a.a(paramSet) + ")", new String[0]);
  }
  
  public Set<com.viber.voip.contacts.b.b> b(String paramString)
  {
    String str = PhoneNumberUtils.stripSeparators(paramString);
    HashSet localHashSet = new HashSet();
    if (TextUtils.isEmpty(str)) {
      return localHashSet;
    }
    AsyncEntityManager localAsyncEntityManager = new AsyncEntityManager(com.viber.voip.contacts.b.b.e.b);
    localAsyncEntityManager.fillCursorSync(null, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1=? OR phonebookdata.data2=?))", new String[] { str, str });
    for (int i = 0; i < localAsyncEntityManager.getCount(); i++) {
      localHashSet.add((com.viber.voip.contacts.b.b.e)localAsyncEntityManager.getEntity(i));
    }
    localAsyncEntityManager.closeCursor();
    return localHashSet;
  }
  
  public void b(Set<String> paramSet, ap paramap)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(ContentProviderOperation.newUpdate(g.a).withSelection("photo=?", new String[] { str }).withValue("actual_photo", str).build());
    }
    this.c.a(1584, "com.viber.provider.vibercontacts", null, localArrayList, new ad(this, paramap), false, false);
  }
  
  public l c(String paramString)
  {
    if (paramString == null) {
      return l.c;
    }
    String str = PhoneNumberUtils.stripSeparators(paramString).trim();
    if (TextUtils.isEmpty(str)) {
      return l.c;
    }
    Cursor localCursor = this.b.getContentResolver().query(com.viber.voip.contacts.b.b.k.a.getContentUri(), com.viber.voip.contacts.b.b.k.a.getProjections(), "phonebookdata.mime_type=0 AND (phonebookdata.data1=? OR phonebookdata.data2=?)", new String[] { str, str }, null);
    if ((localCursor != null) && (localCursor.moveToFirst()))
    {
      com.viber.voip.contacts.b.f localf = (com.viber.voip.contacts.b.f)com.viber.voip.contacts.b.b.k.a.createInstance(localCursor);
      com.viber.voip.util.al.a(localCursor);
      if (localf.f() != null) {
        return l.a;
      }
      return l.b;
    }
    com.viber.voip.util.al.a(localCursor);
    return l.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.aa
 * JD-Core Version:    0.7.0.1
 */