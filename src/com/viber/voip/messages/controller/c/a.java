package com.viber.voip.messages.controller.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class a
  extends ar
{
  private static final String a = a.class.getSimpleName();
  private static final String[] b = { "_id", "object_id", "key", "value", "value_type" };
  
  private long a(long paramLong, String paramString1, String paramString2, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("object_id", Long.valueOf(paramLong));
    localContentValues.put("key", paramString1);
    localContentValues.put("value", paramString2);
    localContentValues.put("value_type", Integer.valueOf(paramInt));
    return c().insert("kvdata", null, localContentValues);
  }
  
  private Object a(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
      paramString = null;
    case 0: 
      return paramString;
    }
    try
    {
      return Long.valueOf(Long.parseLong(paramString));
    }
    catch (NumberFormatException localNumberFormatException) {}
    return Integer.valueOf(Integer.parseInt(paramString));
    Boolean localBoolean = Boolean.valueOf(Boolean.parseBoolean(paramString));
    return localBoolean;
    return null;
  }
  
  public int a(long paramLong, String... paramVarArgs)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = com.viber.voip.i.a.a(paramVarArgs);
    String str = String.format("key IN (%s) AND object_id=?", arrayOfObject);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return localSQLiteDatabase.delete("kvdata", str, arrayOfString);
  }
  
  public long a(long paramLong, String paramString, int paramInt)
  {
    return a(paramLong, paramString, String.valueOf(paramInt), 2);
  }
  
  public long a(long paramLong, String paramString1, String paramString2)
  {
    return a(paramLong, paramString1, paramString2, 0);
  }
  
  public long a(long paramLong, String paramString, boolean paramBoolean)
  {
    return a(paramLong, paramString, String.valueOf(paramBoolean), 3);
  }
  
  public List<Integer> a(long paramLong, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = d(paramLong, paramString).iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if ((localObject != null) && ((localObject instanceof Integer))) {
        localArrayList.add((Integer)localObject);
      }
    }
    return localArrayList;
  }
  
  public List<Long> a(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = c().query("kvdata", b, "key=? AND value=?", new String[] { paramString1, paramString2 }, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.moveToFirst()) {
        do
        {
          localArrayList.add(Long.valueOf(localCursor.getLong(1)));
        } while (localCursor.moveToNext());
      }
      localCursor.close();
    }
    return localArrayList;
  }
  
  public List<Long> a(String paramString, boolean paramBoolean)
  {
    return a(paramString, String.valueOf(paramBoolean));
  }
  
  public Map<Long, Set<String>> a(boolean paramBoolean, String... paramVarArgs)
  {
    HashMap localHashMap = new HashMap();
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString1 = b;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = com.viber.voip.i.a.a(paramVarArgs);
    String str1 = String.format("key IN (%s) AND value=?", arrayOfObject);
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(paramBoolean);
    Cursor localCursor = localSQLiteDatabase.query("kvdata", arrayOfString1, str1, arrayOfString2, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.moveToFirst()) {
        do
        {
          long l = localCursor.getLong(1);
          String str2 = localCursor.getString(2);
          Object localObject = (Set)localHashMap.get(Long.valueOf(l));
          if (localObject == null)
          {
            localObject = new HashSet();
            localHashMap.put(Long.valueOf(l), localObject);
          }
          ((Set)localObject).add(str2);
        } while (localCursor.moveToNext());
      }
      localCursor.close();
    }
    return localHashMap;
  }
  
  public List<String> b(long paramLong, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = d(paramLong, paramString).iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if ((localObject != null) && ((localObject instanceof String))) {
        localArrayList.add((String)localObject);
      }
    }
    return localArrayList;
  }
  
  public String c(long paramLong, String paramString)
  {
    List localList = b(paramLong, paramString);
    if (localList.size() > 0) {
      return (String)localList.get(0);
    }
    return null;
  }
  
  public List<Object> d(long paramLong, String paramString)
  {
    String str1;
    String[] arrayOfString;
    if (paramLong == -1L)
    {
      str1 = "key=?";
      arrayOfString = new String[1];
      arrayOfString[0] = paramString;
    }
    for (;;)
    {
      ArrayList localArrayList = new ArrayList();
      Cursor localCursor = c().query("kvdata", b, str1, arrayOfString, null, null, null);
      if (localCursor != null)
      {
        if (localCursor.moveToFirst()) {
          do
          {
            String str2 = localCursor.getString(3);
            localArrayList.add(a(localCursor.getInt(4), str2));
          } while (localCursor.moveToNext());
        }
        localCursor.close();
      }
      return localArrayList;
      str1 = "key=? AND object_id=?";
      arrayOfString = new String[2];
      arrayOfString[0] = paramString;
      arrayOfString[1] = String.valueOf(paramLong);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.a
 * JD-Core Version:    0.7.0.1
 */