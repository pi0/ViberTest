package com.viber.provider;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.viber.voip.i.c;
import java.util.Iterator;
import java.util.List;

public abstract class i
  extends SQLiteOpenHelper
{
  protected Context a;
  
  protected i(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 53);
    this.a = paramContext;
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, SQLiteDatabase paramSQLiteDatabase)
  {
    Iterator localIterator = c.a(paramContext, paramString2).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        paramSQLiteDatabase.execSQL(str);
      }
      catch (SQLException localSQLException) {}
    }
  }
  
  protected final Context a()
  {
    return this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.i
 * JD-Core Version:    0.7.0.1
 */