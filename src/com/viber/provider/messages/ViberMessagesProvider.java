package com.viber.provider.messages;

import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.provider.ViberContentProvider;
import com.viber.provider.messages.b.g;
import com.viber.voip.ViberApplication;
import com.viber.voip.i.a.j;
import com.viber.voip.i.a.k;
import com.viber.voip.i.a.l;
import com.viber.voip.i.a.m;
import com.viber.voip.i.a.n;

public class ViberMessagesProvider
  extends ViberContentProvider
{
  private static final String b = ViberMessagesProvider.class.getSimpleName();
  private static final UriMatcher c = new UriMatcher(-1);
  private static SQLiteDatabase d;
  
  static
  {
    c.addURI("com.viber.provider.vibermessages", "messages_list", 201);
    c.addURI("com.viber.provider.vibermessages", "extra_messages_list", 202);
    c.addURI("com.viber.provider.vibermessages", "conversations_list", 101);
    c.addURI("com.viber.provider.vibermessages", "conversations_extra_list", 102);
    c.addURI("com.viber.provider.vibermessages", "participants_list", 301);
  }
  
  public static SQLiteDatabase a(Context paramContext)
  {
    if ((d == null) || (!d.isOpen())) {}
    try
    {
      if ((d == null) || (!d.isOpen())) {
        d = b(paramContext);
      }
      return d;
    }
    finally {}
  }
  
  private static SQLiteDatabase b(Context paramContext)
  {
    SQLiteDatabase localSQLiteDatabase = g.a(paramContext).getWritableDatabase();
    if (!localSQLiteDatabase.isOpen()) {
      localSQLiteDatabase = g.a(ViberApplication.getInstance()).getWritableDatabase();
    }
    return localSQLiteDatabase;
  }
  
  protected SQLiteOpenHelper a()
  {
    return g.a(getContext());
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    throw new UnsupportedOperationException(b + " not support delete operation");
  }
  
  public String getType(Uri paramUri)
  {
    c.match(paramUri);
    throw new IllegalArgumentException("Unknown URI " + paramUri);
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    throw new UnsupportedOperationException(b + " not support insert operation");
  }
  
  /* Error */
  public boolean onCreate()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 80	com/viber/provider/messages/ViberMessagesProvider:getContext	()Landroid/content/Context;
    //   4: invokestatic 125	com/viber/voip/process/k:a	(Landroid/content/Context;)Lcom/viber/voip/process/k;
    //   7: pop
    //   8: ldc 2
    //   10: monitorenter
    //   11: getstatic 50	com/viber/provider/messages/ViberMessagesProvider:d	Landroid/database/sqlite/SQLiteDatabase;
    //   14: astore_3
    //   15: aload_3
    //   16: ifnonnull +33 -> 49
    //   19: aload_0
    //   20: aload_0
    //   21: invokevirtual 80	com/viber/provider/messages/ViberMessagesProvider:getContext	()Landroid/content/Context;
    //   24: invokestatic 58	com/viber/provider/messages/ViberMessagesProvider:b	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   27: putfield 127	com/viber/provider/messages/ViberMessagesProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   30: aload_0
    //   31: getfield 127	com/viber/provider/messages/ViberMessagesProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   34: putstatic 50	com/viber/provider/messages/ViberMessagesProvider:d	Landroid/database/sqlite/SQLiteDatabase;
    //   37: ldc 2
    //   39: monitorexit
    //   40: aload_0
    //   41: getfield 127	com/viber/provider/messages/ViberMessagesProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   44: ifnull +21 -> 65
    //   47: iconst_1
    //   48: ireturn
    //   49: aload_0
    //   50: getstatic 50	com/viber/provider/messages/ViberMessagesProvider:d	Landroid/database/sqlite/SQLiteDatabase;
    //   53: putfield 127	com/viber/provider/messages/ViberMessagesProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   56: goto -19 -> 37
    //   59: astore_2
    //   60: ldc 2
    //   62: monitorexit
    //   63: aload_2
    //   64: athrow
    //   65: iconst_0
    //   66: ireturn
    //   67: astore 4
    //   69: goto -39 -> 30
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	ViberMessagesProvider
    //   59	5	2	localObject	Object
    //   14	2	3	localSQLiteDatabase	SQLiteDatabase
    //   67	1	4	localSQLiteException	android.database.sqlite.SQLiteException
    // Exception table:
    //   from	to	target	type
    //   11	15	59	finally
    //   19	30	59	finally
    //   30	37	59	finally
    //   37	40	59	finally
    //   49	56	59	finally
    //   60	63	59	finally
    //   19	30	67	android/database/sqlite/SQLiteException
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if (a(paramUri, null, null)) {
      return null;
    }
    Object localObject;
    String str;
    switch (c.match(paramUri))
    {
    default: 
      throw new IllegalArgumentException("Unsupported URI:" + paramUri);
    case 101: 
      localObject = new k();
      boolean bool = TextUtils.isEmpty(paramString2);
      str = null;
      if (!bool) {
        break;
      }
    }
    for (;;)
    {
      try
      {
        Cursor localCursor = ((SQLiteQueryBuilder)localObject).query(a().getReadableDatabase(), paramArrayOfString1, paramString1, paramArrayOfString2, null, null, str);
        return localCursor;
      }
      catch (RuntimeException localRuntimeException)
      {
        throw localRuntimeException;
      }
      localObject = new j();
      break;
      localObject = new m();
      break;
      localObject = new l();
      break;
      localObject = new n();
      break;
      str = paramString2;
    }
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    throw new UnsupportedOperationException(b + " not support update operation");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.messages.ViberMessagesProvider
 * JD-Core Version:    0.7.0.1
 */