package com.viber.voip.i.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import com.viber.voip.i.a;

public class i
  extends SQLiteQueryBuilder
{
  private void a(String paramString) {}
  
  public Cursor query(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4)
  {
    String str1 = "SELECT " + a.b(paramArrayOfString1) + " FROM " + "phonebookcontact" + " LEFT OUTER JOIN " + "phonebookdata" + " ON (" + "phonebookcontact._id" + "=" + "phonebookdata.contact_id" + ")" + " LEFT OUTER JOIN " + "vibernumbers" + " ON (" + "phonebookdata.data2" + "=" + "vibernumbers.canonized_number" + ")";
    if ((paramString1 != null) && (!paramString1.equals(""))) {
      str1 = str1 + " WHERE " + paramString1;
    }
    String str2 = str1 + " GROUP BY " + "phonebookcontact._id";
    if ((paramString4 != null) && (!paramString4.equals(""))) {
      str2 = str2 + " ORDER BY " + paramString4;
    }
    try
    {
      Cursor localCursor = paramSQLiteDatabase.rawQuery(str2, paramArrayOfString2);
      return localCursor;
    }
    catch (Exception localException)
    {
      a(localException.getMessage());
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.i.a.i
 * JD-Core Version:    0.7.0.1
 */