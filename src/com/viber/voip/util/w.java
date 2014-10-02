package com.viber.voip.util;

import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.PhoneLookup;
import android.text.format.DateUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class w
{
  static
  {
    if (!w.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private w()
  {
    if (!a) {
      throw new AssertionError();
    }
  }
  
  @Deprecated
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    Uri localUri = Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(paramString1));
    String[] arrayOfString = { "display_name" };
    try
    {
      Cursor localCursor2 = paramContext.getContentResolver().query(localUri, arrayOfString, null, null, null);
      Cursor localCursor1 = localCursor2;
      if (localCursor1 != null) {}
      String str;
      al.a(localCursor1);
    }
    finally
    {
      try
      {
        if (localCursor1.moveToFirst())
        {
          str = localCursor1.getString(localCursor1.getColumnIndex("display_name"));
          paramString2 = str;
        }
        al.a(localCursor1);
        return paramString2;
      }
      finally {}
      localObject1 = finally;
      localCursor1 = null;
    }
    throw localObject1;
  }
  
  public static String a(boolean paramBoolean, long paramLong)
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    long l1 = System.currentTimeMillis();
    long l2 = l1 / 1000L;
    long l3 = l1 / 60000L;
    long l4 = l1 / 86400000L;
    long l5 = paramLong / 1000L;
    long l6 = paramLong / 60000L;
    long l7 = paramLong / 86400000L;
    if ((l2 - l5 == 0L) || (paramBoolean)) {
      return localViberApplication.getString(2131493893);
    }
    if (l4 - l7 > 1L)
    {
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = DateUtils.formatDateTime(localViberApplication, paramLong, 20);
      return localViberApplication.getString(2131493898, arrayOfObject4);
    }
    if (l4 - l7 > 0L)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = DateUtils.formatDateTime(localViberApplication, paramLong, 1);
      return localViberApplication.getString(2131493897, arrayOfObject3);
    }
    if (l3 - l6 > 60L)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = DateUtils.formatDateTime(localViberApplication, paramLong, 1);
      return localViberApplication.getString(2131493896, arrayOfObject2);
    }
    if (l3 - l6 > 0L)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(l3 - l6);
      return localViberApplication.getString(2131493895, arrayOfObject1);
    }
    return localViberApplication.getString(2131493894);
  }
  
  public static void a(Context paramContext, com.viber.voip.contacts.b.b paramb, ah paramah)
  {
    if (paramb != null) {
      paramb.a(paramContext, new aa(paramah, paramContext));
    }
  }
  
  public static void a(Context paramContext, Collection<g> paramCollection, Collection<String> paramCollection1, ai paramai)
  {
    a(paramContext, paramCollection, paramCollection1, false, paramai);
  }
  
  public static void a(Context paramContext, Collection<g> paramCollection, Collection<String> paramCollection1, boolean paramBoolean, ai paramai)
  {
    a(paramContext, paramCollection, paramCollection1, paramBoolean, true, paramai);
  }
  
  public static void a(Context paramContext, Collection<g> paramCollection, Collection<String> paramCollection1, boolean paramBoolean1, boolean paramBoolean2, ai paramai)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    g[] arrayOfg = (g[])paramCollection.toArray(new g[0]);
    Iterator localIterator = paramCollection.iterator();
    if (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      if (paramCollection1 != null) {
        localArrayList1.add(Boolean.valueOf(paramCollection1.contains(localg.b())));
      }
      String str1 = "";
      if (paramBoolean2)
      {
        str1 = com.viber.voip.contacts.ui.ai.a(paramContext, localg.c(), localg.d());
        if (str1.length() > 0) {
          str1 = str1 + ": ";
        }
      }
      if (ViberApplication.isTablet()) {}
      for (String str2 = localg.b();; str2 = str1 + localg.b())
      {
        localArrayList2.add(str2);
        break;
      }
    }
    if (paramCollection.size() == 1) {
      paramai.a(false, arrayOfg[0].b());
    }
    while (paramCollection.size() <= 1) {
      return;
    }
    af localaf;
    AlertDialog.Builder localBuilder;
    if (localArrayList1.contains(Boolean.TRUE))
    {
      localaf = af.a;
      localBuilder = new AlertDialog.Builder(paramContext).setTitle(2131494178);
      switch (x.a[localaf.ordinal()])
      {
      }
    }
    for (;;)
    {
      if (paramBoolean1) {
        localBuilder.setNegativeButton(2131493558, new ae());
      }
      localBuilder.show();
      return;
      localaf = af.b;
      break;
      localBuilder.setItems((CharSequence[])localArrayList2.toArray(new String[localArrayList2.size()]), new ac(arrayOfg, paramai));
      continue;
      boolean[] arrayOfBoolean = new boolean[localArrayList1.size()];
      for (int i = 0; i < localArrayList1.size(); i++) {
        arrayOfBoolean[i] = ((Boolean)localArrayList1.get(i)).booleanValue();
      }
      localBuilder.setMultiChoiceItems((CharSequence[])localArrayList2.toArray(new String[localArrayList2.size()]), arrayOfBoolean, new ad(arrayOfg, paramai)).create();
    }
  }
  
  public static void a(String paramString1, String paramString2, ag paramag)
  {
    ViberApplication.getInstance().getContactManager().a(paramString1, new y(paramString2, paramag));
  }
  
  public static void b(String paramString1, String paramString2, ag paramag)
  {
    ViberApplication.getInstance().getContactManager().a(paramString1, new z(paramString2, paramag));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.w
 * JD-Core Version:    0.7.0.1
 */