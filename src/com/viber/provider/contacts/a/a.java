package com.viber.provider.contacts.a;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build.VERSION;
import com.viber.provider.i;

public abstract class a
  extends i
{
  public static final String b = a.class.getSimpleName();
  
  protected a(Context paramContext)
  {
    super(paramContext, "viber_data");
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    super.onOpen(paramSQLiteDatabase);
    try
    {
      paramSQLiteDatabase.execSQL("PRAGMA synchronous = OFF");
      return;
    }
    catch (SQLException localSQLException)
    {
      localSQLException.printStackTrace();
    }
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if ((Build.VERSION.SDK_INT < 11) && (paramInt1 > paramInt2))
    {
      onDowngrade(paramSQLiteDatabase, paramInt1, paramInt2);
      return;
    }
    b.a(a(), this, paramSQLiteDatabase, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.contacts.a.a
 * JD-Core Version:    0.7.0.1
 */