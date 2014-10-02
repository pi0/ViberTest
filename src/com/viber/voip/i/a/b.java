package com.viber.voip.i.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import com.viber.voip.i.a;

public class b
  extends SQLiteQueryBuilder
{
  private void a(String paramString) {}
  
  public Cursor query(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4)
  {
    String str = "SELECT " + a.b(paramArrayOfString1) + " FROM " + "calls" + " LEFT OUTER JOIN " + "phonebookdata" + " ON (" + "calls.canonized_number" + "=" + "phonebookdata.data2" + ")" + " LEFT OUTER JOIN " + "phonebookcontact" + " ON (" + "phonebookdata.contact_id" + "=" + "phonebookcontact._id" + ")" + " LEFT OUTER JOIN " + "phonebookdata" + " " + "raw_data_alias" + "  ON (" + "raw_data_alias.contact_id" + "=" + "phonebookcontact._id" + ")" + " LEFT OUTER JOIN " + "vibernumbers" + " ON (" + "raw_data_alias.data2" + "=" + "vibernumbers.canonized_number" + ")";
    if ((paramString1 != null) && (!paramString1.equals(""))) {
      str = str + " WHERE " + paramString1;
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


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.i.a.b
 * JD-Core Version:    0.7.0.1
 */