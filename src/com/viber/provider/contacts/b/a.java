package com.viber.provider.contacts.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public class a
  extends com.viber.provider.contacts.a.a
{
  public static final String c = a.class.getSimpleName();
  private static a d = null;
  
  private a(Context paramContext)
  {
    super(paramContext);
  }
  
  public static SQLiteOpenHelper a(Context paramContext)
  {
    try
    {
      if (d == null) {
        d = new a(paramContext);
      }
      a locala = d;
      return locala;
    }
    finally {}
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    ViberApplication.log(3, c, "onCreate");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,call_id LONG NOT NULL,aggregate_hash LONG NOT NULL,number TEXT NOT NULL,canonized_number TEXT NOT NULL,viber_call BOOLEAN DEFAULT TRUE,viber_call_type INTEGER DEFAULT 1, date LONG NOT NULL,duration LONG NOT NULL,type INT NOT NULL,end_reason INT DEFAULT 0,start_reason INT DEFAULT 0,token LONG DEFAULT 0,looked BOOLEAN DEFAULT TRUE);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS phonebookrawcontact (_id INTEGER PRIMARY KEY NOT NULL,native_id INTEGER DEFAULT 0,contact_id INTEGER NOT NULL,version INTEGER NOT NULL,starred BOOLEAN NOT NULL,  UNIQUE (_id) ON CONFLICT REPLACE);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS phonebookcontact (_id INTEGER PRIMARY KEY NOT NULL,native_id INTEGER DEFAULT 0,display_name TEXT,phonetic_name TEXT,phone_label TEXT,low_display_name TEXT,starred BOOLEAN, viber BOOLEAN, viber_out BOOLEAN DEFAULT FALSE, contact_lookup_key TEXT, contact_hash LONG, version INTEGER DEFAULT 0, has_number BOOLEAN, has_name BOOLEAN, native_photo_id LONG DEFAULT 0, recently_joined_date LONG DEFAULT 0, joined_date LONG DEFAULT 0, numbers_name TEXT DEFAULT '', deleted BOOLEAN, flags INTEGER DEFAULT 0,  UNIQUE (_id) ON CONFLICT REPLACE);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS phonebookdata (_id INTEGER PRIMARY KEY AUTOINCREMENT,native_id INTEGER DEFAULT 0,contact_id INTEGER NOT NULL,raw_id INTEGER NOT NULL,data1 TEXT, data2 TEXT, data3 TEXT, data4 TEXT, data5 TEXT, int_data1 INTEGER DEFAULT 0, int_data2 INTEGER DEFAULT 0, mime_type INTEGER, clear INTEGER DEFAULT 0);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS vibernumbers (_id INTEGER PRIMARY KEY AUTOINCREMENT,canonized_number TEXT NOT NULL,photo TEXT DEFAULT '', actual_photo TEXT DEFAULT '', viber_name TEXT, clear BOOLEAN );");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS blockednumbers (_id INTEGER PRIMARY KEY AUTOINCREMENT, canonized_number TEXT NOT NULL,blocked_date LONG DEFAULT 0,  UNIQUE (canonized_number) ON CONFLICT REPLACE );");
    paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS contacts_name ON phonebookcontact (recently_joined_date DESC, low_display_name ASC)");
    paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS call_date ON calls (date DESC)");
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    super.onUpgrade(paramSQLiteDatabase, paramInt1, paramInt2);
    ViberApplication.log(3, c, "onUpgrade");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,call_id LONG NOT NULL,aggregate_hash LONG NOT NULL,number TEXT NOT NULL,canonized_number TEXT NOT NULL,viber_call BOOLEAN DEFAULT TRUE,viber_call_type INTEGER DEFAULT 1, date LONG NOT NULL,duration LONG NOT NULL,type INT NOT NULL,end_reason INT DEFAULT 0,start_reason INT DEFAULT 0,token LONG DEFAULT 0,looked BOOLEAN DEFAULT TRUE);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS phonebookrawcontact (_id INTEGER PRIMARY KEY NOT NULL,native_id INTEGER DEFAULT 0,contact_id INTEGER NOT NULL,version INTEGER NOT NULL,starred BOOLEAN NOT NULL,  UNIQUE (_id) ON CONFLICT REPLACE);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS phonebookcontact (_id INTEGER PRIMARY KEY NOT NULL,native_id INTEGER DEFAULT 0,display_name TEXT,phonetic_name TEXT,phone_label TEXT,low_display_name TEXT,starred BOOLEAN, viber BOOLEAN, viber_out BOOLEAN DEFAULT FALSE, contact_lookup_key TEXT, contact_hash LONG, version INTEGER DEFAULT 0, has_number BOOLEAN, has_name BOOLEAN, native_photo_id LONG DEFAULT 0, recently_joined_date LONG DEFAULT 0, joined_date LONG DEFAULT 0, numbers_name TEXT DEFAULT '', deleted BOOLEAN, flags INTEGER DEFAULT 0,  UNIQUE (_id) ON CONFLICT REPLACE);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS phonebookdata (_id INTEGER PRIMARY KEY AUTOINCREMENT,native_id INTEGER DEFAULT 0,contact_id INTEGER NOT NULL,raw_id INTEGER NOT NULL,data1 TEXT, data2 TEXT, data3 TEXT, data4 TEXT, data5 TEXT, int_data1 INTEGER DEFAULT 0, int_data2 INTEGER DEFAULT 0, mime_type INTEGER, clear INTEGER DEFAULT 0);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS vibernumbers (_id INTEGER PRIMARY KEY AUTOINCREMENT,canonized_number TEXT NOT NULL,photo TEXT DEFAULT '', actual_photo TEXT DEFAULT '', viber_name TEXT, clear BOOLEAN );");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS blockednumbers (_id INTEGER PRIMARY KEY AUTOINCREMENT, canonized_number TEXT NOT NULL,blocked_date LONG DEFAULT 0,  UNIQUE (canonized_number) ON CONFLICT REPLACE );");
    if ((paramInt1 < 47) && (paramInt2 >= 47)) {
      a(a(), c, "db/contacts_migration_47.sql", paramSQLiteDatabase);
    }
    if ((paramInt1 < 48) && (paramInt2 >= 48))
    {
      a(a(), c, "db/contacts_migration_48.sql", paramSQLiteDatabase);
      j.a(a());
      l locall = ViberApplication.preferences(a());
      locall.a(j.t(), locall.b(j.t(), j.v()));
    }
    if ((paramInt1 < 49) && (paramInt2 >= 49)) {
      a(a(), c, "db/contacts_migration_49.sql", paramSQLiteDatabase);
    }
    if ((paramInt1 < 51) && (paramInt2 >= 51)) {
      a(a(), c, "db/contacts_migration_51.sql", paramSQLiteDatabase);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.provider.contacts.b.a
 * JD-Core Version:    0.7.0.1
 */