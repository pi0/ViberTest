package com.viber.voip.contacts.c.d.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Pair;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b.i;
import com.viber.voip.contacts.b.b.k;
import com.viber.voip.contacts.c.d.aa;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.util.al;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

class b
{
  final com.viber.voip.contacts.c.d.d a;
  private long c = -1L;
  private String d;
  private String e;
  private boolean f;
  
  public b(a parama, com.viber.voip.contacts.c.d.d paramd, long paramLong, String paramString, boolean paramBoolean)
  {
    this.c = paramLong;
    this.d = paramString;
    this.a = paramd;
    this.f = paramBoolean;
  }
  
  public b(a parama, com.viber.voip.contacts.c.d.d paramd, String paramString, boolean paramBoolean)
  {
    this.a = paramd;
    this.e = paramString;
    this.f = paramBoolean;
  }
  
  private void a()
  {
    a.a(this.b).a(this.e, new c(this));
  }
  
  private void b()
  {
    if (this.c == -1L) {
      return;
    }
    dc.a(dk.i).postAtFrontOfQueue(new d(this));
  }
  
  public void a(Map<String, Pair<Long, String>> paramMap)
  {
    if (this.c == -1L)
    {
      Pair localPair = (Pair)paramMap.get(this.e);
      if (localPair != null)
      {
        this.c = ((Long)localPair.first).longValue();
        this.d = ((String)localPair.second);
        this.e = null;
        b();
      }
    }
  }
  
  public void a(Set<Long> paramSet, Set<String> paramSet1)
  {
    if (paramSet.contains(Long.valueOf(this.c))) {
      b();
    }
    for (;;)
    {
      return;
      if (this.d != null)
      {
        String[] arrayOfString = this.d.split("\\.");
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++) {
          if (paramSet1.contains(arrayOfString[j]))
          {
            b();
            return;
          }
        }
      }
    }
  }
  
  public void a(boolean paramBoolean, long paramLong1, long paramLong2)
  {
    HashSet localHashSet;
    StringBuilder localStringBuilder;
    Cursor localCursor2;
    int j;
    boolean bool1;
    if (paramLong1 != -1L)
    {
      Creator localCreator = com.viber.voip.contacts.b.b.a.e.a;
      localHashSet = new HashSet();
      localStringBuilder = new StringBuilder();
      ContentResolver localContentResolver1 = a.b(this.b).getContentResolver();
      Uri localUri1 = localCreator.getContentUri();
      String[] arrayOfString1 = localCreator.getProjections();
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = String.valueOf(this.c);
      Cursor localCursor1 = localContentResolver1.query(localUri1, arrayOfString1, "contact_id=?", arrayOfString2, null);
      if ((localCursor1 != null) && (localCursor1.moveToFirst())) {
        do
        {
          int k = 1;
          com.viber.voip.contacts.b.b.a.e locale = (com.viber.voip.contacts.b.b.a.e)localCreator.createInstance(localCursor1);
          if ("vnd.android.cursor.item/phone_v2".equals(locale.a()))
          {
            if (localStringBuilder.length() > 0) {
              localStringBuilder.append(',');
            }
            localStringBuilder.append('\'').append(PhoneNumberUtils.stripSeparators(locale.b())).append('\'');
          }
          if (("vnd.android.cursor.item/email_v2".equals(locale.a())) && (TextUtils.isEmpty(locale.b()))) {
            k = 0;
          }
          if (k != 0) {
            localHashSet.add(locale);
          }
        } while (localCursor1.moveToNext());
      }
      al.a(localCursor1);
      CreatorHelper localCreatorHelper1 = com.viber.voip.contacts.b.b.a.a.D;
      ContentResolver localContentResolver2 = a.b(this.b).getContentResolver();
      Uri localUri2 = localCreatorHelper1.getContentUri();
      String[] arrayOfString3 = localCreatorHelper1.getProjections();
      String[] arrayOfString4 = new String[1];
      arrayOfString4[0] = String.valueOf(this.c);
      localCursor2 = localContentResolver2.query(localUri2, arrayOfString3, "_id=?", arrayOfString4, null);
      if ((localCursor2 == null) || (!localCursor2.moveToFirst())) {
        break label640;
      }
      com.viber.voip.contacts.b.b.a.a locala = (com.viber.voip.contacts.b.b.a.a)localCreatorHelper1.createInstance(localCursor2);
      j = locala.x();
      bool1 = locala.u();
    }
    for (int i = j;; i = 0)
    {
      al.a(localCursor2);
      CreatorHelper localCreatorHelper2 = k.a;
      String str1 = localStringBuilder.toString();
      HashMap localHashMap1 = new HashMap();
      HashMap localHashMap2 = new HashMap();
      String str2 = "phonebookdata.data1 IN (" + str1 + ") OR " + "phonebookdata" + "." + "data2" + " IN (" + str1 + ")";
      Cursor localCursor3 = a.b(this.b).getContentResolver().query(localCreatorHelper2.getContentUri(), localCreatorHelper2.getProjections(), str2, null, null);
      boolean bool2;
      if ((localCursor3 != null) && (localCursor3.moveToFirst())) {
        do
        {
          k localk = (k)localCreatorHelper2.createInstance(localCursor3);
          if (localk.f() != null)
          {
            localHashMap1.put(localk.a(), localk.f());
            localHashMap1.put(localk.b(), localk.f());
          }
          String str3 = localk.b();
          if (localk.h() == null) {
            break;
          }
          bool2 = true;
          localHashMap2.put(str3, Boolean.valueOf(bool2));
        } while (localCursor3.moveToNext());
      }
      al.a(localCursor3);
      for (i locali = new i(a.b(this.b), localHashSet, localHashMap1, localHashMap2, i, bool1);; locali = null)
      {
        dc.a(dk.a).postAtFrontOfQueue(new e(this, paramBoolean, locali));
        return;
        bool2 = false;
        break;
      }
      label640:
      bool1 = false;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof b)) {
      return this.a.equals(((b)paramObject).a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return 0;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.a.b
 * JD-Core Version:    0.7.0.1
 */