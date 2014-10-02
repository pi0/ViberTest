package com.viber.service.contacts.sync.c;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.viber.service.contacts.a;
import com.viber.voip.util.al;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class c
  implements b
{
  public void a(Context paramContext, a parama, long paramLong1, long paramLong2, String paramString1, String paramString2)
  {
    e locale = new e(paramContext, paramLong2, true, parama);
    if (("vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call".equals(paramString1)) || ("vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message".equals(paramString1)) || ("vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_viber".equals(paramString1)))
    {
      locale.c(paramLong1);
      if ("vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call".equals(paramString1)) {
        b(locale, paramString2);
      }
    }
    while (!"vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_none_viber".equals(paramString1)) {
      return;
    }
    locale.c(paramLong1);
    a(locale, paramString2);
  }
  
  public void a(Context paramContext, a parama, long paramLong, String paramString1, String paramString2, Set<String> paramSet1, Set<String> paramSet2)
  {
    e locale = new e(paramContext, paramLong, true, parama);
    locale.b(paramString2);
    ContentResolver localContentResolver = paramContext.getContentResolver();
    Uri localUri = d.a;
    String[] arrayOfString1 = d.b;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(paramLong);
    Cursor localCursor = localContentResolver.query(localUri, arrayOfString1, "raw_contact_id=?", arrayOfString2, null);
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    if (localCursor != null) {}
    for (;;)
    {
      long l;
      String str3;
      String str4;
      try
      {
        if (localCursor.moveToFirst())
        {
          l = localCursor.getLong(0);
          str3 = localCursor.getString(1);
          str4 = localCursor.getString(2);
          if ("vnd.android.cursor.item/name".equals(str3))
          {
            if (!paramString1.equals(str4)) {
              locale.a(l, paramString1);
            }
            boolean bool = localCursor.moveToNext();
            if (bool) {
              continue;
            }
          }
        }
        else
        {
          al.a(localCursor);
          Iterator localIterator1 = paramSet1.iterator();
          if (!localIterator1.hasNext()) {
            break;
          }
          String str2 = (String)localIterator1.next();
          if (!localHashSet1.contains(str2)) {
            a(locale, str2);
          }
          if (localHashSet2.contains(str2)) {
            continue;
          }
          c(locale, str2);
          continue;
        }
        if (!"vnd.android.cursor.item/phone_v2".equals(str3)) {
          break label320;
        }
        if ((!paramSet1.contains(str4)) && (!paramSet2.contains(str4)))
        {
          locale.c(l);
          continue;
        }
        localHashSet2.add(str4);
      }
      finally
      {
        al.a(localCursor);
      }
      continue;
      label320:
      if (("vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call".equals(str3)) || ("vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message".equals(str3)) || ("vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_viber".equals(str3)))
      {
        if (!paramSet1.contains(str4)) {
          locale.c(l);
        } else {
          localHashSet1.add(str4);
        }
      }
      else if ("vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_none_viber".equals(str3)) {
        if (!paramSet2.contains(str4)) {
          locale.c(l);
        } else {
          localHashSet1.add(str4);
        }
      }
    }
    Iterator localIterator2 = paramSet2.iterator();
    while (localIterator2.hasNext())
    {
      String str1 = (String)localIterator2.next();
      if (!localHashSet1.contains(str1)) {
        b(locale, str1);
      }
      if (!localHashSet2.contains(str1)) {
        c(locale, str1);
      }
    }
  }
  
  public void a(Context paramContext, a parama, long paramLong1, String paramString1, String paramString2, Set<String> paramSet1, Set<String> paramSet2, long paramLong2, String paramString3)
  {
    e locale = e.a(paramContext, paramLong1, paramString3, paramString2, true, parama);
    locale.a(paramString1);
    a(locale, paramLong1);
    if (paramLong2 != 0L) {
      locale.a(paramLong2);
    }
    Iterator localIterator1 = paramSet1.iterator();
    while (localIterator1.hasNext())
    {
      String str2 = (String)localIterator1.next();
      a(locale, str2);
      c(locale, str2);
    }
    Iterator localIterator2 = paramSet2.iterator();
    while (localIterator2.hasNext())
    {
      String str1 = (String)localIterator2.next();
      b(locale, str1);
      c(locale, str1);
    }
  }
  
  protected abstract void a(e parame, long paramLong);
  
  protected abstract void a(e parame, String paramString);
  
  protected abstract void b(e parame, String paramString);
  
  protected abstract void c(e parame, String paramString);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.sync.c.c
 * JD-Core Version:    0.7.0.1
 */