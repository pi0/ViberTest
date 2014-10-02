package com.viber.voip.i.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import com.viber.voip.i.a;

public class p
  extends SQLiteQueryBuilder
{
  private void a(String paramString) {}
  
  public Cursor query(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4)
  {
    String str = "SELECT " + a.b(paramArrayOfString1) + " FROM " + "phonebookdata" + " LEFT OUTER JOIN " + "vibernumbers" + " ON (" + "phonebookdata.data2" + "=" + "vibernumbers.canonized_number" + ")" + " LEFT OUTER JOIN " + "blockednumbers" + " ON (" + "phonebookdata.data2" + "=" + "blockednumbers.canonized_number" + ")" + " WHERE " + "phonebookdata" + "." + "mime_type" + "=" + 0;
    if ((paramString1 != null) && (!paramString1.equals(""))) {
      str = str + " AND (" + paramString1 + ")";
    }
    if ((paramString4 != null) && (!paramString4.equals(""))) {
      str = str + " ORDER BY " + paramString4;
    }
    try
    {
      Cursor localCursor = paramSQLiteDatabase.rawQuery(str, paramArrayOfString2);
      return localCursor;
    }
    catch (Exception localException)
    {
      a(localException.getMessage());
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.i.a.p
 * JD-Core Version:    0.7.0.1
 */