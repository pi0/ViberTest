package com.viber.voip.i.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.text.TextUtils;
import com.viber.voip.i.a;

public class m
  extends SQLiteQueryBuilder
{
  private void a(String paramString) {}
  
  public Cursor query(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4)
  {
    String str = "SELECT " + a.b(paramArrayOfString1) + " FROM " + "messages" + " LEFT OUTER JOIN " + "participants" + " ON (" + "messages.participant_id" + "=" + "participants._id" + ")" + " LEFT OUTER JOIN " + "participants_info" + " ON (" + "participants.participant_info_id" + "=" + "participants_info._id" + ")";
    if (!TextUtils.isEmpty(paramString1)) {
      str = str + " WHERE " + paramString1;
    }
    if (!TextUtils.isEmpty(paramString4)) {
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
 * Qualified Name:     com.viber.voip.i.a.m
 * JD-Core Version:    0.7.0.1
 */