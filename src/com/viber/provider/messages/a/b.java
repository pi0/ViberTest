package com.viber.provider.messages.a;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.viber.voip.ViberApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class b
{
  private static String A = "DELETE FROM participants WHERE participant_type=0";
  private static String B = "INSERT INTO participants (thread_id, number, contact_id, participant_type) SELECT threads._id, 'owner', -1, 0 FROM threads AS threads WHERE threads._id NOT IN (SELECT thread_id FROM participants WHERE participant_type = 0)";
  private static String C = "REPLACE INTO participants (thread_id, contact_id, number, last_message_date, snippet, mime_type, participant_type, active) SELECT msgs.thread_id, participants.contact_id, msgs.address, msgs.date,  msgs.body, msgs.extra_mime, 1, 0 FROM messages AS msgs, participants AS participants WHERE msgs.type=0 AND msgs.address<>'owner' AND  participants.thread_id = msgs.thread_id AND participants.number = msgs.address ORDER BY msgs.date";
  private static String D = "REPLACE INTO participants (thread_id, contact_id, number, last_message_date, snippet, mime_type, participant_type, active) SELECT msgs.thread_id, -1, 'owner', msgs.date,  msgs.body, msgs.extra_mime, 0, 0 FROM messages AS msgs, participants AS participants WHERE (msgs.type=1 OR msgs.address='owner' OR msgs.address='groupEntity') AND participants.thread_id = msgs.thread_id ORDER BY msgs.date";
  private static String E = "UPDATE messages SET extra_status = 3 WHERE extra_status is NULL";
  private static String F = "UPDATE messages SET extra_mime='text' WHERE extra_mime is NULL";
  private static String a = "ALTER TABLE threads ADD COLUMN message_draft TEXT;";
  private static String b = "ALTER TABLE threads ADD COLUMN contact_name TEXT;";
  private static String c = "ALTER TABLE messages ADD COLUMN twitter_status INTEGER DEFAULT 0;";
  private static String d = "ALTER TABLE threads ADD COLUMN unread_message_count INTEGER DEFAULT 0;";
  private static String e = "ALTER TABLE messages ADD COLUMN thumbnail_x;";
  private static String f = "ALTER TABLE messages ADD COLUMN thumbnail_y;";
  private static String g = "ALTER TABLE messages DROP COLUMN seen;";
  private static String h = "ALTER TABLE messages ADD COLUMN opened INTEGER DEFAULT 0;";
  private static String i = "UPDATE participants SET number = 'owner' WHERE participant_type = 0";
  private static String j = "ALTER TABLE groups ADD COLUMN smart_event_date INTEGER DEFAULT 0;";
  private static String k = "ALTER TABLE messages ADD COLUMN deleted INTEGER DEFAULT 0;";
  private static String l = "ALTER TABLE threads ADD COLUMN delete_token LONG DEFAULT 0;";
  private static String m = "ALTER TABLE threads ADD COLUMN deleted INTEGER DEFAULT 0;";
  private static String n = "ALTER TABLE messages ADD COLUMN description TEXT;";
  private static String o = "ALTER TABLE messages ADD COLUMN count INTEGER DEFAULT 1;";
  private static String p = "ALTER TABLE threads ADD COLUMN unread_calls_count INTEGER DEFAULT 0;";
  private static String q = "UPDATE messages SET read = -1 WHERE read = 0;";
  private static String r = "UPDATE messages SET read = 0 WHERE read = 1;";
  private static String s = "UPDATE messages SET read = 1 WHERE read = -1;";
  private static String t = "ALTER TABLE groups ADD COLUMN read_notification_token INTEGER DEFAULT 0;";
  private static String u = "ALTER TABLE messages ADD COLUMN extra_flags INTEGER DEFAULT 0;";
  private static String v = "INSERT INTO groups (thread_id, smart_notification) SELECT _id, 0 FROM threads WHERE _id NOT IN(SELECT thread_id FROM groups);";
  private static String w = "INSERT INTO  participants (thread_id, number, contact_id, participant_type) SELECT threads._id, recipient_number, person, 1 FROM threads AS threads WHERE threads._id NOT IN (SELECT thread_id FROM participants WHERE participant_type = 1)";
  private static String x = "INSERT INTO participants (thread_id, number, contact_id, participant_type) SELECT threads._id, 'owner', -1, 0 FROM threads AS threads WHERE threads._id NOT IN (SELECT thread_id FROM participants WHERE participant_type = 0)";
  private static String y = "REPLACE INTO participants (thread_id, contact_id, number, last_message_date, snippet, mime_type, participant_type, active) SELECT msgs.thread_id, participants.contact_id, msgs.address, msgs.date,  msgs.body, msgs.extra_mime, 1, 0 FROM messages AS msgs, participants AS participants WHERE msgs.type=0 AND  participants.thread_id = msgs.thread_id AND participants.number = msgs.address ORDER BY msgs.date";
  private static String z = "REPLACE INTO participants (thread_id, contact_id, number, last_message_date, snippet, mime_type, participant_type, active) SELECT msgs.thread_id, -1, 'owner', msgs.date,  msgs.body, msgs.extra_mime, 0, 0 FROM messages AS msgs, participants AS participants WHERE msgs.type=1 AND participants.thread_id = msgs.thread_id AND participants.number = msgs.address ORDER BY msgs.date";
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, List<String> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ViberApplication.log(3, "ViberMessagesHelper$DbPatch", "ViberMessagesHelper$DbPatch.execute: " + str);
      try
      {
        paramSQLiteDatabase.execSQL(str);
      }
      catch (SQLException localSQLException)
      {
        ViberApplication.log(6, "ViberMessagesHelper$DbPatch", "ViberMessagesHelper$DbPatch.execute FAIL on sql: " + str, localSQLException);
      }
    }
  }
  
  public static void a(a parama, SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    ViberApplication.log(3, "ViberMessagesHelper$DbPatch", "ViberMessagesHelper$DbPatch.execute");
    ArrayList localArrayList = new ArrayList();
    if ((paramInt1 < 34) && (paramInt2 >= 34)) {
      a(localArrayList);
    }
    if ((paramInt1 < 36) && (paramInt2 >= 36)) {
      b(localArrayList);
    }
    if ((paramInt1 < 36) && (paramInt2 >= 37)) {
      c(localArrayList);
    }
    if ((paramInt1 < 40) && (paramInt2 >= 40)) {
      d(localArrayList);
    }
    if ((paramInt1 < 41) && (paramInt2 >= 41)) {
      e(localArrayList);
    }
    if ((paramInt1 < 42) && (paramInt2 >= 42)) {
      f(localArrayList);
    }
    if ((paramInt1 < 43) && (paramInt2 >= 43)) {
      g(localArrayList);
    }
    if ((paramInt1 < 44) && (paramInt2 >= 44)) {
      h(localArrayList);
    }
    if ((paramInt1 < 45) && (paramInt2 >= 45)) {
      i(localArrayList);
    }
    localArrayList.add("CREATE INDEX IF NOT EXISTS message_token_date_asc ON messages (date ASC, token ASC)");
    localArrayList.add("CREATE INDEX IF NOT EXISTS message_token_date_desc ON messages (date DESC, token DESC)");
    localArrayList.add("CREATE INDEX IF NOT EXISTS thread_date_desc ON threads (date DESC)");
    a(paramSQLiteDatabase, localArrayList);
  }
  
  private static void a(List<String> paramList)
  {
    ViberApplication.log(3, "ViberMessagesHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer34");
    paramList.add(a);
  }
  
  private static void b(List<String> paramList)
  {
    ViberApplication.log(3, "ViberMessagesHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer36");
    paramList.add(b);
    paramList.add(c);
    paramList.add(d);
    paramList.add(e);
    paramList.add(f);
    paramList.add(v);
    paramList.add(w);
    paramList.add(x);
    paramList.add(y);
    paramList.add(z);
  }
  
  private static void c(List<String> paramList)
  {
    paramList.add(A);
    paramList.add(B);
    paramList.add(C);
    paramList.add(D);
  }
  
  private static void d(List<String> paramList)
  {
    ViberApplication.log(3, "ViberMessagesHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer40");
    paramList.add(g);
    paramList.add(h);
    paramList.add(i);
  }
  
  private static void e(List<String> paramList)
  {
    ViberApplication.log(3, "ViberMessagesHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer41");
    paramList.add(j);
  }
  
  private static void f(List<String> paramList)
  {
    ViberApplication.log(3, "ViberMessagesHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer42");
    paramList.add(k);
    paramList.add(l);
    paramList.add(m);
    paramList.add("CREATE INDEX IF NOT EXISTS message_token_date_asc ON messages (date ASC, token ASC)");
    paramList.add("CREATE INDEX IF NOT EXISTS message_token_date_desc ON messages (date DESC, token DESC)");
    paramList.add("CREATE INDEX IF NOT EXISTS thread_date_desc ON threads (date DESC)");
  }
  
  private static void g(List<String> paramList)
  {
    ViberApplication.log(3, "ViberMessagesHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer43");
    paramList.add(n);
  }
  
  private static void h(List<String> paramList)
  {
    ViberApplication.log(3, "ViberMessagesHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer43");
    paramList.add(o);
    paramList.add(p);
    paramList.add(q);
    paramList.add(r);
    paramList.add(s);
  }
  
  private static void i(List<String> paramList)
  {
    ViberApplication.log(3, "ViberMessagesHelper$DbPatch", "ViberMessagessHelper$DbPatch.patchToVer45");
    paramList.add(t);
    paramList.add(u);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.messages.a.b
 * JD-Core Version:    0.7.0.1
 */