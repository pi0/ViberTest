package com.viber.provider.messages.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import com.viber.provider.i;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.al;
import java.io.File;
import java.util.List;

public class a
  extends i
{
  public static final String b = a.class.getSimpleName();
  protected int c = 0;
  
  protected a(Context paramContext, int paramInt)
  {
    super(paramContext, "viber_messages");
    this.c = paramInt;
  }
  
  public static void a(Context paramContext, com.viber.provider.contacts.a.a parama, SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2, List<String> paramList)
  {
    ViberApplication.log(3, b, "ViberMessagesHelper$performSplitMigration_v33");
    bool = paramSQLiteDatabase.isDbLockedByCurrentThread();
    String str = paramContext.getDatabasePath("viber_data").getAbsolutePath();
    locala = new a(paramContext, 33);
    localSQLiteDatabase = locala.getWritableDatabase();
    if (bool)
    {
      paramSQLiteDatabase.setTransactionSuccessful();
      paramSQLiteDatabase.endTransaction();
    }
    try
    {
      localSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS msgthreads (_id INTEGER PRIMARY KEY autoincrement,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_number TEXT,snippet TEXT,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,person INTEGER DEFAULT -1,share_location INTEGER DEFAULT 0 );");
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        try
        {
          localSQLiteDatabase.execSQL("ATTACH DATABASE '" + str + "' AS " + "ViberMessagesMigrateALIAS");
          localSQLiteDatabase.execSQL("INSERT OR REPLACE INTO msgthreads SELECT _id, date, message_count, recipient_number, snippet, read, type, error, person, share_location FROM threads");
          localSQLiteDatabase.execSQL("INSERT OR REPLACE INTO msgs ( _id, thread_id, address, person, date, read, status, type, subject, body, error_code, flag, token, location_lat, location_lng, has_extras, extra_uri, extra_mime, extra_status, seq, extra_upload_id, extra_download_id, extra_bucket_name, fb_status, extra_duration) SELECT _id, thread_id, address, person, date, read, status, type, subject, body, error_code, flag, token, location_lat, location_lng, has_extras, extra_uri, extra_mime, extra_status, seq, extra_upload_id, extra_download_id, extra_bucket_name, fb_status, extra_duration FROM messages");
          localSQLiteDatabase.execSQL("DETACH DATABASE 'ViberMessagesMigrateALIAS'");
          localSQLiteDatabase.execSQL("ALTER TABLE msgthreads RENAME TO threads");
          localSQLiteDatabase.execSQL("ALTER TABLE msgs RENAME TO messages");
          localSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS message_token_date_asc ON messages (date ASC, token ASC)");
          localSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS message_token_date_desc ON messages (date DESC, token DESC)");
          localSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS thread_date_desc ON threads (date DESC)");
          localSQLiteDatabase.execSQL(b.a());
          localSQLiteDatabase.execSQL(b.b());
          paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS threads");
          paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS messages");
          return;
        }
        catch (Exception localException2)
        {
          ViberApplication.log(6, b, "ViberMessagesHelper$performSplitMigration_v33", localException2);
          return;
        }
        finally
        {
          al.a(localSQLiteDatabase.rawQuery("DETACH DATABASE ViberMessagesMigrateALIAS", null));
          localSQLiteDatabase.close();
          locala.close();
          if (!bool) {
            continue;
          }
          paramSQLiteDatabase.beginTransaction();
        }
        localException1 = localException1;
        ViberApplication.log(6, b, "ViberMessagesHelper$performSplitMigration_v33", localException1);
      }
    }
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    ViberApplication.log(3, "--trace--", "onCreate db ");
    String str1;
    if (33 == this.c)
    {
      str1 = "msgthreads (_id INTEGER PRIMARY KEY autoincrement,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_number TEXT,snippet TEXT,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,person INTEGER DEFAULT -1,share_location INTEGER DEFAULT 0 );";
      if (33 != this.c) {
        break label140;
      }
    }
    label140:
    for (String str2 = "msgs";; str2 = "messages")
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + str2 + " " + " (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,address TEXT NOT NULL,person INTEGER,date INTEGER NOT NULL,read INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,status INTEGER DEFAULT 0,type INTEGER NOT NULL,subject TEXT,body TEXT,error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,flag INTEGER DEFAULT 0,token LONG,location_lat LONG,location_lng LONG,has_extras BOOLEAN DEFAULT false,extra_uri TEXT,extra_mime TEXT,extra_status INTEGER,seq INTEGER,extra_upload_id LONG,extra_download_id TEXT,extra_bucket_name TEXT,extra_duration LONG,fb_status INTEGER DEFAULT 0,twitter_status INTEGER DEFAULT 0,thumbnail_x INTEGER ,thumbnail_y INTEGER ,description TEXT ,deleted INTEGER DEFAULT 0,count INTEGER DEFAULT 1, extra_flags INTEGER DEFAULT 0 );");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + str1);
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS groups (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,name TEXT,active BOOLEAN DEFAULT true,smart_notification INTEGER,smart_event_date INTEGER DEFAULT 0, mute_notification INTEGER,background_landscape TEXT, background_portrait TEXT, read_notification_token INTEGER DEFAULT 0);");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS participants (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,number TEXT,contact_name TEXT,display_name TEXT,display_image TEXT,active BOOLEAN DEFAULT true,location_lat LONG,location_lng LONG,participant_type INTEGER,contact_id INTEGER,last_message_date LONG DEFAULT 0, snippet TEXT, mime_type TEXT, CONSTRAINT unique_thread UNIQUE(thread_id, number) ON CONFLICT REPLACE);");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS kvdata (_id INTEGER PRIMARY KEY autoincrement,object_id LONG DEFAULT 0,key TEXT,value TEXT,value_type INTEGER DEFAULT 0);");
      if (33 > this.c)
      {
        paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS message_token_date_asc ON messages (date ASC, token ASC)");
        paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS message_token_date_desc ON messages (date DESC, token DESC)");
        paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS thread_date_desc ON threads (date DESC)");
      }
      return;
      str1 = "threads (_id INTEGER PRIMARY KEY autoincrement,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_number TEXT,snippet TEXT,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,person INTEGER DEFAULT -1,share_location INTEGER DEFAULT 0,contact_name TEXT,message_draft TEXT,unread_message_count INTEGER DEFAULT 0,unread_calls_count INTEGER DEFAULT 0,deleted INTEGER DEFAULT 0,delete_token LONG DEFAULT 0);";
      break;
    }
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    ViberApplication.log(3, "--trace--", "onUpgrade from db ver = " + paramInt1 + " to " + paramInt2);
    if ((Build.VERSION.SDK_INT < 11) && (paramInt1 > paramInt2))
    {
      onDowngrade(paramSQLiteDatabase, paramInt1, paramInt2);
      return;
    }
    int i;
    String str1;
    if ((paramInt1 >= 33) && (this.c != 33))
    {
      i = 1;
      if (i == 0) {
        break label181;
      }
      str1 = "threads (_id INTEGER PRIMARY KEY autoincrement,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_number TEXT,snippet TEXT,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,person INTEGER DEFAULT -1,share_location INTEGER DEFAULT 0,contact_name TEXT,message_draft TEXT,unread_message_count INTEGER DEFAULT 0,unread_calls_count INTEGER DEFAULT 0,deleted INTEGER DEFAULT 0,delete_token LONG DEFAULT 0);";
      label82:
      if (i == 0) {
        break label188;
      }
    }
    label181:
    label188:
    for (String str2 = "messages";; str2 = "msgs")
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + str2 + " " + " (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,address TEXT NOT NULL,person INTEGER,date INTEGER NOT NULL,read INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,status INTEGER DEFAULT 0,type INTEGER NOT NULL,subject TEXT,body TEXT,error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,flag INTEGER DEFAULT 0,token LONG,location_lat LONG,location_lng LONG,has_extras BOOLEAN DEFAULT false,extra_uri TEXT,extra_mime TEXT,extra_status INTEGER,seq INTEGER,extra_upload_id LONG,extra_download_id TEXT,extra_bucket_name TEXT,extra_duration LONG,fb_status INTEGER DEFAULT 0,twitter_status INTEGER DEFAULT 0,thumbnail_x INTEGER ,thumbnail_y INTEGER ,description TEXT ,deleted INTEGER DEFAULT 0,count INTEGER DEFAULT 1, extra_flags INTEGER DEFAULT 0 );");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + str1);
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS groups (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,name TEXT,active BOOLEAN DEFAULT true,smart_notification INTEGER,smart_event_date INTEGER DEFAULT 0, mute_notification INTEGER,background_landscape TEXT, background_portrait TEXT, read_notification_token INTEGER DEFAULT 0);");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS participants (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,number TEXT,contact_name TEXT,display_name TEXT,display_image TEXT,active BOOLEAN DEFAULT true,location_lat LONG,location_lng LONG,participant_type INTEGER,contact_id INTEGER,last_message_date LONG DEFAULT 0, snippet TEXT, mime_type TEXT, CONSTRAINT unique_thread UNIQUE(thread_id, number) ON CONFLICT REPLACE);");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS kvdata (_id INTEGER PRIMARY KEY autoincrement,object_id LONG DEFAULT 0,key TEXT,value TEXT,value_type INTEGER DEFAULT 0);");
      b.a(this, paramSQLiteDatabase, paramInt1, paramInt2);
      return;
      i = 0;
      break;
      str1 = "msgthreads (_id INTEGER PRIMARY KEY autoincrement,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_number TEXT,snippet TEXT,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,person INTEGER DEFAULT -1,share_location INTEGER DEFAULT 0 );";
      break label82;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.messages.a.a
 * JD-Core Version:    0.7.0.1
 */