package com.viber.voip.contacts.c.e;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.os.RemoteException;
import com.viber.provider.contacts.b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class a
{
  private ContentResolver a;
  
  public a(Context paramContext)
  {
    this.a = paramContext.getContentResolver();
  }
  
  public Set<String> a()
  {
    HashSet localHashSet = new HashSet();
    Cursor localCursor = this.a.query(b.a, null, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.moveToFirst()) {
        do
        {
          localHashSet.add(localCursor.getString(localCursor.getColumnIndex("canonized_number")));
        } while (localCursor.moveToNext());
      }
      localCursor.close();
    }
    return localHashSet;
  }
  
  public void a(Set<String> paramSet)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("canonized_number", (String)localIterator.next());
      localContentValues.put("blocked_date", Long.valueOf(System.currentTimeMillis()));
      localArrayList.add(ContentProviderOperation.newInsert(b.a).withValues(localContentValues).build());
    }
    try
    {
      this.a.applyBatch("com.viber.provider.vibercontacts", localArrayList);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
      return;
    }
    catch (OperationApplicationException localOperationApplicationException)
    {
      localOperationApplicationException.printStackTrace();
    }
  }
  
  public void b(Set<String> paramSet)
  {
    Iterator localIterator = paramSet.iterator();
    StringBuilder localStringBuilder = new StringBuilder();
    String[] arrayOfString = new String[paramSet.size()];
    int j;
    for (int i = 0; localIterator.hasNext(); i = j)
    {
      if (localStringBuilder.length() != 0) {
        localStringBuilder.append(" OR ");
      }
      localStringBuilder.append("canonized_number=?");
      j = i + 1;
      arrayOfString[i] = ((String)localIterator.next());
    }
    this.a.delete(b.a, localStringBuilder.toString(), arrayOfString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.e.a
 * JD-Core Version:    0.7.0.1
 */