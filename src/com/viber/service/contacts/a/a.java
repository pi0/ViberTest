package com.viber.service.contacts.a;

import android.annotation.TargetApi;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentResolver;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.os.Build.VERSION;
import android.os.RemoteException;
import android.provider.ContactsContract.Contacts;
import com.viber.provider.contacts.d;
import com.viber.voip.util.a.b;
import com.viber.voip.util.al;
import java.util.ArrayList;

public class a
{
  public static final String a = a.class.getSimpleName();
  
  private void a(Context paramContext, ArrayList<ContentProviderOperation> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0)) {
      return;
    }
    try
    {
      paramContext.getContentResolver().applyBatch("com.viber.provider.vibercontacts", paramArrayList);
      return;
    }
    catch (RemoteException localRemoteException) {}catch (OperationApplicationException localOperationApplicationException) {}
  }
  
  @TargetApi(11)
  public int a(Context paramContext)
  {
    com.viber.voip.util.a.a.a(paramContext);
    int i;
    if (Build.VERSION.SDK_INT < 11)
    {
      i = 0;
      return i;
    }
    long[] arrayOfLong1 = new long[0];
    for (;;)
    {
      try
      {
        Cursor localCursor2 = paramContext.getContentResolver().query(d.a, new String[] { "native_id" }, null, null, null);
        localCursor3 = localCursor2;
        if (localCursor3 == null) {}
      }
      finally
      {
        for (;;)
        {
          try
          {
            if (!localCursor3.moveToFirst()) {
              break label526;
            }
            int i3 = localCursor3.getColumnIndex("native_id");
            long[] arrayOfLong3 = new long[localCursor3.getCount()];
            int i4 = 0;
            arrayOfLong3[i4] = localCursor3.getInt(i3);
            i4++;
            boolean bool = localCursor3.moveToNext();
            if (bool) {
              continue;
            }
            arrayOfLong2 = arrayOfLong3;
            if (localCursor3 != null) {
              al.a(localCursor3);
            }
          }
          finally
          {
            Cursor localCursor3;
            ArrayList localArrayList1;
            int j;
            int k;
            int m;
            int n;
            ArrayList localArrayList2;
            int i1;
            long l;
            b localb;
            ContentProviderOperation.Builder localBuilder;
            String[] arrayOfString;
            Cursor localCursor1 = localCursor3;
            continue;
            i = 0;
            continue;
          }
          try
          {
            localArrayList1 = new ArrayList();
            localCursor3 = paramContext.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[] { "_id", "phonetic_name", "sort_key", "display_name" }, "_id IN (" + com.viber.voip.i.a.a(arrayOfLong2) + ")", null, null);
            if ((localCursor3 == null) || (!localCursor3.moveToFirst())) {
              continue;
            }
            j = localCursor3.getColumnIndex("_id");
            k = localCursor3.getColumnIndex("phonetic_name");
            m = localCursor3.getColumnIndex("sort_key");
            n = localCursor3.getColumnIndex("display_name");
            localArrayList2 = localArrayList1;
            i1 = 0;
            l = localCursor3.getLong(j);
            localb = com.viber.voip.util.a.a.a(localCursor3.getString(n), localCursor3.getString(k), localCursor3.getString(m));
            localBuilder = ContentProviderOperation.newUpdate(d.a);
            arrayOfString = new String[1];
            arrayOfString[0] = String.valueOf(l);
            localArrayList2.add(localBuilder.withSelection("_id=?", arrayOfString).withValue("display_name", localb.a).withValue("phonetic_name", localb.b).withValue("low_display_name", localb.c).withValue("phone_label", localb.d).build());
            if (localArrayList2.size() > 50)
            {
              a(paramContext, localArrayList2);
              i1 += localArrayList2.size();
              localArrayList2 = new ArrayList();
            }
            if (!localCursor3.moveToNext())
            {
              a(paramContext, localArrayList2);
              int i2 = localArrayList2.size();
              i = i1 + i2;
              return i;
            }
          }
          finally
          {
            if (localCursor3 == null) {
              continue;
            }
            al.a(localCursor3);
          }
        }
        localObject1 = finally;
        localCursor1 = null;
        if (localCursor1 != null) {
          al.a(localCursor1);
        }
      }
      label526:
      long[] arrayOfLong2 = arrayOfLong1;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.contacts.a.a
 * JD-Core Version:    0.7.0.1
 */