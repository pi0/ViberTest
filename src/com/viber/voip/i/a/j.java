package com.viber.voip.i.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import com.viber.voip.i.a;
import com.viber.voip.util.gj;

public class j
  extends SQLiteQueryBuilder
{
  private void a(String paramString) {}
  
  public Cursor query(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4)
  {
    String str = "SELECT " + a.b(paramArrayOfString1) + " FROM " + "conversations" + " LEFT OUTER JOIN " + "messages" + " ON (" + "conversations.last_message_id" + "=" + "messages._id" + ")" + " LEFT OUTER JOIN " + "participants_info" + " ON (" + "conversations.participant_id_1" + "=" + "participants_info._id" + ")" + " LEFT OUTER JOIN " + "group_conversations_extras" + " ON (" + "group_conversations_extras.group_id" + "=" + "conversations.group_id" + ")" + " LEFT OUTER JOIN " + "participants" + " ON (" + "conversations._id" + "=" + "participants.conversation_id" + ")";
    if (!gj.c(paramString1)) {
      str = str + " WHERE " + paramString1;
    }
    if (!gj.c(paramString4)) {
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
 * Qualified Name:     com.viber.voip.i.a.j
 * JD-Core Version:    0.7.0.1
 */