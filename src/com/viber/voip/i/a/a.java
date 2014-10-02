package com.viber.voip.i.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.text.TextUtils;

public class a
  extends SQLiteQueryBuilder
{
  private void a(String paramString) {}
  
  public Cursor query(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4)
  {
    StringBuilder localStringBuilder1 = new StringBuilder().append("SELECT ").append(com.viber.voip.i.a.b(paramArrayOfString1)).append(" FROM ").append("blockednumbers").append(" LEFT OUTER JOIN ").append("phonebookdata").append(" ON (").append("blockednumbers.canonized_number").append("=").append("phonebookdata.data2").append(")").append(" LEFT OUTER JOIN ").append("phonebookcontact").append(" ON (").append("phonebookdata.contact_id").append("=").append("phonebookcontact._id").append(") ");
    String str1;
    StringBuilder localStringBuilder2;
    if (TextUtils.isEmpty(paramString1))
    {
      str1 = "";
      localStringBuilder2 = localStringBuilder1.append(str1).append(" GROUP BY ").append("blockednumbers._id").append(" ");
      if (!TextUtils.isEmpty(paramString4)) {
        break label197;
      }
    }
    label197:
    for (String str2 = "";; str2 = " ORDER BY " + paramString4)
    {
      String str3 = str2;
      try
      {
        Cursor localCursor = paramSQLiteDatabase.rawQuery(str3, paramArrayOfString2);
        return localCursor;
      }
      catch (Exception localException)
      {
        a(localException.getMessage());
      }
      str1 = " WHERE " + paramString1;
      break;
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.i.a.a
 * JD-Core Version:    0.7.0.1
 */