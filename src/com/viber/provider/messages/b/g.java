package com.viber.provider.messages.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.viber.provider.messages.a.a;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.j;
import com.viber.voip.util.bj;
import com.viber.voip.viberout.e;
import com.viber.voip.w;
import java.io.File;

public class g
  extends a
{
  private static final String d = g.class.getSimpleName();
  private static g e = null;
  
  private g(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  public static SQLiteOpenHelper a(Context paramContext)
  {
    try
    {
      if (e == null) {
        e = new g(paramContext, 53);
      }
      g localg = e;
      return localg;
    }
    finally {}
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS conversations (_id INTEGER PRIMARY KEY autoincrement,conversation_type INTEGER DEFAULT 0,group_id INTEGER DEFAULT 0,recipient_number TEXT,share_location INTEGER DEFAULT 0,message_draft TEXT,unread_message_count INTEGER DEFAULT 0,unread_calls_count INTEGER DEFAULT 0,media_msg_count INTEGER DEFAULT 0,deleted INTEGER DEFAULT 0,delete_token LONG DEFAULT 0,name TEXT,background_landscape TEXT, background_portrait TEXT, smart_notification INTEGER,smart_event_date INTEGER DEFAULT 0, mute_notification INTEGER, flags INTEGER DEFAULT 0,date LONG DEFAULT 0,last_message_id LONG DEFAULT 0,read_notification_token LONG DEFAULT 0,participant_id_1 LONG DEFAULT 0,participant_id_2 LONG DEFAULT 0,participant_id_3 LONG DEFAULT 0,participant_id_4 LONG DEFAULT 0,participant_id_5 LONG DEFAULT 0,participant_id_6 LONG DEFAULT 0,participant_id_7 LONG DEFAULT 0,participant_id_8 LONG DEFAULT 0);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS group_conversations_extras (_id INTEGER PRIMARY KEY autoincrement,group_id INTEGER DEFAULT 0,group_role INTEGER DEFAULT 3,group_uri TEXT,icon_id TEXT,background_id TEXT,location_lat INTEGER DEFAULT 0,location_lng INTEGER DEFAULT 0,country TEXT,location_address TEXT,revision INTEGER DEFAULT 0,watchers_count INTEGER DEFAULT 0,tag_line TEXT, tags TEXT, local_message_id INTEGER DEFAULT 0, server_message_id INTEGER DEFAULT 0, verified INTEGER,inviter TEXT, last_media_type TEXT, last_msg_text TEXT, sender_phone TEXT);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS participants (_id INTEGER PRIMARY KEY autoincrement,conversation_id INTEGER DEFAULT 0,participant_info_id INTEGER DEFAULT 0,last_message_id INTEGER DEFAULT 0,active INTEGER DEFAULT TRUE, group_role INTEGER DEFAULT 0 );");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS participants_info (_id INTEGER PRIMARY KEY autoincrement,number TEXT,display_name TEXT,contact_name TEXT,contact_id INTEGER DEFAULT 0,native_contact_id INTEGER DEFAULT 0,viber_name TEXT,viber_image TEXT,location_lat LONG DEFAULT 0,location_lng LONG DEFAULT 0,location_date LONG DEFAULT 0,participant_type INTEGER DEFAULT 1, has_contact_name INTEGER DEFAULT 0, native_photo_id LONG DEFAULT 0, has_photo INTEGER DEFAULT 0 );");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS messages (_id INTEGER PRIMARY KEY autoincrement,address TEXT NOT NULL,date INTEGER NOT NULL,read INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,status INTEGER DEFAULT 0,type INTEGER NOT NULL,body TEXT,sync_read INTEGER DEFAULT 0,flag INTEGER DEFAULT 0,token LONG, location_lat LONG,location_lng LONG,extra_uri TEXT,extra_mime TEXT,extra_status INTEGER,seq INTEGER,message_global_id INTEGER,extra_upload_id LONG,extra_download_id TEXT,extra_bucket_name TEXT,extra_duration LONG,fb_status INTEGER DEFAULT 0,twitter_status INTEGER DEFAULT 0,thumbnail_x INTEGER ,thumbnail_y INTEGER ,description TEXT ,deleted INTEGER DEFAULT 0,count INTEGER DEFAULT 1,group_id INTEGER DEFAULT 0,conversation_id INTEGER DEFAULT 0,conversation_type INTEGER DEFAULT 0,participant_id DEFAULT 0, extra_flags INTEGER DEFAULT 0, date_real INTEGER NOT NULL);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS messages_calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,conversation_id INTEGER NOT NULL,message_id INTEGER NOT NULL,canonized_number TEXT NOT NULL,viber_call_type INTEGER DEFAULT 1, date LONG NOT NULL,duration LONG NOT NULL,type INT NOT NULL,end_reason INT DEFAULT 0,start_reason INT DEFAULT 0,token LONG DEFAULT 0);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS public_messages_extras (_id INTEGER PRIMARY KEY autoincrement,group_id INTEGER NOT NULL,liked INTEGER DEFAULT 0,likes_count INTEGER DEFAULT 0,message_token LONG DEFAULT 0,sync_like INTEGER DEFAULT 0);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS kvdata (_id INTEGER PRIMARY KEY autoincrement,object_id LONG DEFAULT 0,key TEXT,value TEXT,value_type INTEGER DEFAULT 0);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS stickers_packages ( _id INTEGER PRIMARY KEY NOT NULL, package_name TEXT, flags INTEGER DEFAULT 0, thumb_axis_shrink_factor FLOAT DEFAULT 0, visibility INTEGER DEFAULT 0, menu_position INTEGER DEFAULT 0)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS stickers ( _id INTEGER PRIMARY KEY NOT NULL, package_id INTEGER DEFAULT 0, generic_col_pos INTEGER DEFAULT 0, generic_row_pos INTEGER DEFAULT 0, column_span INTEGER DEFAULT 0, row_span INTEGER DEFAULT 0, flags INTEGER DEFAULT 0 );");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS purchase ( order_id TEXT PRIMARY KEY NOT NULL, category INTEGER, type TEXT, package_name TEXT, product_id TEXT, purchase_time LONG DEFAULT 0, purchase_state INTEGER DEFAULT 0, dev_payload TEXT, token TEXT, json TEXT, signature TEXT,verified INTEGER DEFAULT 0, consumed INTEGER DEFAULT 0, pending INTEGER DEFAULT 0);");
    a(a(), d, "db/script_for_filling_stickers_table.sql", paramSQLiteDatabase);
    paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS message_token_date_asc ON messages (date ASC, token ASC)");
    paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS message_token_date_desc ON messages (date DESC, token DESC)");
    paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS conversation_date_desc ON conversations (date DESC)");
    boolean bool = bj.a(new File(w.w));
    ViberApplication.log(3, "ViberMessagesHelper", "delete old sticker folder success : " + bool);
    e.a(a(), this.c);
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    super.onDowngrade(paramSQLiteDatabase, paramInt1, paramInt2);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    super.onUpgrade(paramSQLiteDatabase, paramInt1, paramInt2);
    if ((paramInt1 < 45) && (paramInt2 >= 45)) {
      a(a(), d, "db/messages_migration_45.sql", paramSQLiteDatabase);
    }
    if ((paramInt1 < 47) && (paramInt2 >= 47))
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS stickers_packages ( _id INTEGER PRIMARY KEY NOT NULL, package_name TEXT, flags INTEGER DEFAULT 0, thumb_axis_shrink_factor FLOAT DEFAULT 0, visibility INTEGER DEFAULT 0, menu_position INTEGER DEFAULT 0)");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS stickers ( _id INTEGER PRIMARY KEY NOT NULL, package_id INTEGER DEFAULT 0, generic_col_pos INTEGER DEFAULT 0, generic_row_pos INTEGER DEFAULT 0, column_span INTEGER DEFAULT 0, row_span INTEGER DEFAULT 0, flags INTEGER DEFAULT 0 );");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS purchase ( order_id TEXT PRIMARY KEY NOT NULL, category INTEGER, type TEXT, package_name TEXT, product_id TEXT, purchase_time LONG DEFAULT 0, purchase_state INTEGER DEFAULT 0, dev_payload TEXT, token TEXT, json TEXT, signature TEXT,verified INTEGER DEFAULT 0, consumed INTEGER DEFAULT 0, pending INTEGER DEFAULT 0);");
      a(a(), d, "db/messages_migration_47.sql", paramSQLiteDatabase);
      a(a(), d, "db/script_for_filling_stickers_table.sql", paramSQLiteDatabase);
      boolean bool1 = bj.a(new File(w.w));
      ViberApplication.log(3, "ViberMessagesHelper", "delete old sticker folder success : " + bool1);
      File localFile = new File(w.r.substring(0, -1 + w.r.length()));
      boolean bool2 = new File(w.p + "Viber Video").renameTo(localFile);
      ViberApplication.log(3, "ViberMessagesHelper", "rename Video to Videos success: " + bool2);
    }
    if ((paramInt1 < 48) && (paramInt2 >= 48)) {
      a(a(), d, "db/messages_migration_48.sql", paramSQLiteDatabase);
    }
    if ((paramInt1 < 49) && (paramInt2 >= 49))
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS messages_calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,conversation_id INTEGER NOT NULL,message_id INTEGER NOT NULL,canonized_number TEXT NOT NULL,viber_call_type INTEGER DEFAULT 1, date LONG NOT NULL,duration LONG NOT NULL,type INT NOT NULL,end_reason INT DEFAULT 0,start_reason INT DEFAULT 0,token LONG DEFAULT 0);");
      a(a(), d, "db/messages_migration_49.sql", paramSQLiteDatabase);
    }
    if ((paramInt1 < 50) && (paramInt2 >= 50)) {
      a(a(), d, "db/messages_migration_50.sql", paramSQLiteDatabase);
    }
    if ((paramInt1 < 52) && (paramInt2 >= 52)) {
      a(a(), d, "db/messages_migration_52.sql", paramSQLiteDatabase);
    }
    if ((paramInt1 < 53) && (paramInt2 >= 53))
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS participants_info (_id INTEGER PRIMARY KEY autoincrement,number TEXT,display_name TEXT,contact_name TEXT,contact_id INTEGER DEFAULT 0,native_contact_id INTEGER DEFAULT 0,viber_name TEXT,viber_image TEXT,location_lat LONG DEFAULT 0,location_lng LONG DEFAULT 0,location_date LONG DEFAULT 0,participant_type INTEGER DEFAULT 1, has_contact_name INTEGER DEFAULT 0, native_photo_id LONG DEFAULT 0, has_photo INTEGER DEFAULT 0 );");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS participants (_id INTEGER PRIMARY KEY autoincrement,conversation_id INTEGER DEFAULT 0,participant_info_id INTEGER DEFAULT 0,last_message_id INTEGER DEFAULT 0,active INTEGER DEFAULT TRUE, group_role INTEGER DEFAULT 0 );");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS group_conversations_extras (_id INTEGER PRIMARY KEY autoincrement,group_id INTEGER DEFAULT 0,group_role INTEGER DEFAULT 3,group_uri TEXT,icon_id TEXT,background_id TEXT,location_lat INTEGER DEFAULT 0,location_lng INTEGER DEFAULT 0,country TEXT,location_address TEXT,revision INTEGER DEFAULT 0,watchers_count INTEGER DEFAULT 0,tag_line TEXT, tags TEXT, local_message_id INTEGER DEFAULT 0, server_message_id INTEGER DEFAULT 0, verified INTEGER,inviter TEXT, last_media_type TEXT, last_msg_text TEXT, sender_phone TEXT);");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS public_messages_extras (_id INTEGER PRIMARY KEY autoincrement,group_id INTEGER NOT NULL,liked INTEGER DEFAULT 0,likes_count INTEGER DEFAULT 0,message_token LONG DEFAULT 0,sync_like INTEGER DEFAULT 0);");
      a(a(), d, "db/messages_migration_53(public groups).sql", paramSQLiteDatabase);
    }
    j.a(this.a);
    e.a(a(), paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.messages.b.g
 * JD-Core Version:    0.7.0.1
 */