package com.viber.provider.contacts.a;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.af;
import com.viber.voip.contacts.c.f.a.a.n;
import com.viber.voip.util.al;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class b
{
  private static String A = "ALTER TABLE  calls ADD COLUMN  viber_call_type INTEGER DEFAULT 1;";
  private static String B = "UPDATE calls SET viber_call_type= (CASE WHEN calls.viber_call = 1 THEN 1 ELSE 0 END)";
  private static String a = "DROP TABLE IF EXISTS contacts";
  private static String b = "DROP TABLE IF EXISTS contacts_hashes";
  private static String c = "DROP TABLE IF EXISTS calls";
  private static String d = "CREATE TABLE IF NOT EXISTS calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,call_id LONG NOT NULL,aggregate_hash LONG NOT NULL,number TEXT NOT NULL,canonized_number TEXT NOT NULL,viber_call BOOLEAN DEFAULT TRUE,viber_call_type INTEGER DEFAULT 1, date LONG NOT NULL,duration LONG NOT NULL,type INT NOT NULL,end_reason INT DEFAULT 0,start_reason INT DEFAULT 0,token LONG DEFAULT 0,looked BOOLEAN DEFAULT TRUE);";
  private static String e = "ALTER TABLE messages ADD COLUMN location_lat LONG;";
  private static String f = "ALTER TABLE messages ADD COLUMN location_lng LONG;";
  private static String g = "ALTER TABLE messages ADD COLUMN has_extras BOOLEAN DEFAULT false;";
  private static String h = "ALTER TABLE messages ADD COLUMN extra_uri TEXT;";
  private static String i = "ALTER TABLE messages ADD COLUMN extra_mime TEXT;";
  private static String j = "ALTER TABLE messages ADD COLUMN extra_status INTEGER;";
  private static String k = "ALTER TABLE messages ADD COLUMN seq INTEGER;";
  private static String l = "ALTER TABLE messages ADD COLUMN extra_upload_id LONG;";
  private static String m = "ALTER TABLE messages ADD COLUMN extra_bucket_name TEXT;";
  private static String n = "ALTER TABLE messages ADD COLUMN extra_download_id TEXT;";
  private static String o = "ALTER TABLE messages ADD COLUMN fb_status INTEGER DEFAULT 0;";
  private static String p = "ALTER TABLE messages ADD COLUMN extra_duration LONG;";
  private static String q = "ALTER TABLE threads ADD COLUMN share_location INTEGER DEFAULT 0;";
  private static String r = "ALTER TABLE phonebookcontact ADD COLUMN low_display_name TEXT;";
  private static String s = "ALTER TABLE phonebookdata ADD COLUMN data5 TEXT;";
  private static String t = "UPDATE phonebookcontact SET low_display_name = (SELECT display_name FROM phonebookcontact p1 WHERE p1._id = phonebookcontact._id)";
  private static String u = "ALTER TABLE calls ADD COLUMN end_reason INT DEFAULT 0;";
  private static String v = "ALTER TABLE calls ADD COLUMN start_reason INT DEFAULT 0;";
  private static String w = "ALTER TABLE phonebookdata ADD COLUMN int_data1 INTEGER DEFAULT 0;";
  private static String x = "ALTER TABLE phonebookcontact ADD COLUMN numbers_name TEXT DEFAULT '';";
  private static String y = "DELETE FROM  calls WHERE viber_call=0;";
  private static String z = "ALTER TABLE  phonebookcontact ADD COLUMN  flags INTEGER DEFAULT 0;";
  
  public static void a(Context paramContext, a parama, SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.execute oldVersion: " + paramInt1 + "; newVersion: " + paramInt2);
    ArrayList localArrayList = new ArrayList();
    n.a(paramContext, paramInt1, paramInt2);
    if (paramInt1 < 27) {
      a(localArrayList);
    }
    if ((paramInt1 < 28) && (paramInt2 >= 28)) {
      b(localArrayList);
    }
    if ((paramInt1 < 29) && (paramInt2 >= 29)) {
      c(localArrayList);
    }
    if ((paramInt1 < 30) && (paramInt2 >= 30)) {
      d(localArrayList);
    }
    if ((paramInt1 < 31) && (paramInt2 >= 31)) {
      e(localArrayList);
    }
    if ((paramInt1 < 32) && (paramInt2 >= 32)) {
      f(localArrayList);
    }
    a(paramSQLiteDatabase, localArrayList);
    localArrayList.clear();
    if ((paramInt1 < 33) && (paramInt2 >= 33)) {
      a(paramContext, parama, localArrayList, paramSQLiteDatabase, paramInt1, paramInt2);
    }
    if ((paramInt1 < 39) && (paramInt2 >= 39)) {
      a(localArrayList, paramSQLiteDatabase);
    }
    if ((paramInt1 < 42) && (paramInt2 >= 42)) {
      g(localArrayList);
    }
    if ((paramInt1 < 43) && (paramInt2 >= 43)) {
      b(localArrayList, paramSQLiteDatabase);
    }
    if ((paramInt1 < 44) && (paramInt2 >= 44)) {
      c(localArrayList, paramSQLiteDatabase);
    }
    if ((paramInt1 < 46) && (paramInt2 >= 46)) {
      d(localArrayList, paramSQLiteDatabase);
    }
    a(paramSQLiteDatabase, localArrayList);
  }
  
  private static void a(Context paramContext, a parama, List<String> paramList, SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer33: SPLIT DATABASE");
    com.viber.provider.messages.a.a.a(paramContext, parama, paramSQLiteDatabase, paramInt1, paramInt2, paramList);
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, List<String> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.execute: " + str);
      try
      {
        paramSQLiteDatabase.execSQL(str);
      }
      catch (SQLException localSQLException)
      {
        localSQLException.printStackTrace();
      }
    }
    paramList.clear();
  }
  
  private static void a(List<String> paramList)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer27");
    paramList.add(e);
  }
  
  private static void a(List<String> paramList, SQLiteDatabase paramSQLiteDatabase)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer39");
    paramList.add(a);
    paramList.add(b);
    paramList.add(r);
    paramList.add(s);
    paramList.add(t);
    HashSet localHashSet = new HashSet();
    Cursor localCursor = paramSQLiteDatabase.rawQuery("SELECT call_id FROM calls", null);
    if ((localCursor != null) && (localCursor.moveToNext())) {
      do
      {
        localHashSet.add(Long.valueOf(localCursor.getLong(0)));
      } while (localCursor.moveToNext());
    }
    al.a(localCursor);
    af.a(localHashSet);
    paramList.add(c);
    paramList.add(d);
    paramList.add("CREATE INDEX IF NOT EXISTS call_date ON calls (date DESC)");
    paramList.add("CREATE INDEX IF NOT EXISTS contacts_name ON phonebookcontact (recently_joined_date DESC, low_display_name ASC)");
  }
  
  private static void b(List<String> paramList)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer28");
    paramList.add(f);
    paramList.add(g);
    paramList.add(h);
    paramList.add(i);
    paramList.add(j);
  }
  
  private static void b(List<String> paramList, SQLiteDatabase paramSQLiteDatabase)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer43");
    paramList.add(w);
    paramList.add(x);
    paramList.add(y);
  }
  
  private static void c(List<String> paramList)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer29");
    paramList.add(k);
    paramList.add(l);
  }
  
  private static void c(List<String> paramList, SQLiteDatabase paramSQLiteDatabase)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer44");
    paramList.add(z);
  }
  
  private static void d(List<String> paramList)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer30");
    paramList.add(n);
    paramList.add(m);
  }
  
  private static void d(List<String> paramList, SQLiteDatabase paramSQLiteDatabase)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer46");
    paramList.add(A);
    paramList.add(B);
  }
  
  private static void e(List<String> paramList)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer31");
    paramList.add(o);
  }
  
  private static void f(List<String> paramList)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer32");
    paramList.add(p);
    paramList.add(q);
  }
  
  private static void g(List<String> paramList)
  {
    ViberApplication.log(3, "ViberContactsHelper$DbPatch", "ViberContactsHelper$DbPatch.patchToVer42");
    paramList.add(u);
    paramList.add(v);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.contacts.a.b
 * JD-Core Version:    0.7.0.1
 */