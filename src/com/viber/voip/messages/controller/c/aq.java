package com.viber.voip.messages.controller.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Pair;
import com.viber.voip.ViberApplication;
import com.viber.voip.i.a;
import com.viber.voip.messages.orm.entity.impl.ParticipantEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityHelper;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.util.hd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class aq
  extends ar
{
  private static final String a = aq.class.getSimpleName();
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(paramString2, paramString4);
    c().update(paramString1, localContentValues, paramString2 + "=?", new String[] { paramString3 });
  }
  
  private void a(boolean paramBoolean, Cursor paramCursor, ContentValues paramContentValues, String paramString)
  {
    if ((paramCursor != null) && (((paramBoolean) && (paramCursor.moveToFirst())) || ((!paramBoolean) && (paramCursor.moveToNext()))))
    {
      paramContentValues.put(paramString, Long.valueOf(paramCursor.getLong(1)));
      return;
    }
    paramContentValues.put(paramString, Integer.valueOf(0));
  }
  
  protected ParticipantEntityImpl a(long paramLong, String paramString)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(paramLong);
    arrayOfString[1] = paramString;
    return h("participants.conversation_id IN (SELECT conversations._id FROM conversations WHERE conversations.group_id=?) AND participants.participant_info_id IN (SELECT participants_info._id FROM participants_info WHERE participants_info.number=?)", arrayOfString);
  }
  
  protected List<ParticipantInfoEntityImpl> a(Set<String> paramSet, long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString1 = ParticipantInfoEntityHelper.PROJECTIONS;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.a(paramSet);
      String str = String.format("participants_info.number IN (%s) OR participants_info._id IN (SELECT participants.participant_info_id FROM participants WHERE participants.conversation_id=?)", arrayOfObject);
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = String.valueOf(paramLong);
      Cursor localCursor2 = localSQLiteDatabase.query("participants_info", arrayOfString1, str, arrayOfString2, null, null, null);
      Cursor localCursor1 = localCursor2;
      List localList;
      a(localCursor1);
    }
    finally
    {
      try
      {
        localList = a(localCursor1, localArrayList);
        a(localCursor1);
        return localList;
      }
      finally {}
      localObject1 = finally;
      localCursor1 = null;
    }
    throw localObject1;
  }
  
  public Map<Long, Integer> a(long[] paramArrayOfLong)
  {
    Cursor localCursor = null;
    HashMap localHashMap = new HashMap();
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.a(paramArrayOfLong);
      localCursor = localSQLiteDatabase.rawQuery(String.format("SELECT DISTINCT messages.conversation_id, messages.conversation_type FROM messages WHERE messages.token IN (%s)", arrayOfObject), null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          localHashMap.put(Long.valueOf(localCursor.getLong(0)), Integer.valueOf(localCursor.getInt(1)));
          bool = localCursor.moveToNext();
        } while (bool);
      }
      return localHashMap;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  public Set<Long> a()
  {
    HashSet localHashSet = new HashSet();
    try
    {
      Cursor localCursor2 = c().query("messages", new String[] { "_id" }, null, null, null, null, null);
      Cursor localCursor1 = localCursor2;
      if (localCursor1 != null) {}
      boolean bool;
      a(localCursor1);
    }
    finally
    {
      try
      {
        if (localCursor1.moveToFirst()) {
          do
          {
            localHashSet.add(Long.valueOf(localCursor1.getLong(0)));
            bool = localCursor1.moveToNext();
          } while (bool);
        }
        a(localCursor1);
        return localHashSet;
      }
      finally
      {
        break label89;
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    label89:
    throw localObject1;
  }
  
  public Set<Pair<String, String>> a(ViberApplication paramViberApplication, String paramString)
  {
    HashSet localHashSet = new HashSet();
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("number", paramString);
      c().update("participants_info", localContentValues, "participant_type=0", null);
      Cursor localCursor2 = c().query(true, "participants_info", new String[] { "number" }, null, null, null, null, null, null);
      Cursor localCursor1 = localCursor2;
      if (localCursor1 != null) {}
      String str1;
      String str2;
      boolean bool;
      a(localCursor1);
    }
    finally
    {
      try
      {
        if (localCursor1.moveToFirst()) {
          do
          {
            str1 = localCursor1.getString(0);
            if (!TextUtils.isEmpty(str1))
            {
              str2 = hd.a(paramViberApplication, str1);
              if ((!TextUtils.isEmpty(str2)) && (!str2.equals(str1)))
              {
                localHashSet.add(new Pair(str1, str2));
                a("messages", "address", str1, str2);
                a("conversations", "recipient_number", str1, str2);
                a("participants_info", "number", str1, str2);
              }
            }
            bool = localCursor1.moveToNext();
          } while (bool);
        }
        a(localCursor1);
        return localHashSet;
      }
      finally
      {
        break label211;
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    label211:
    throw localObject1;
  }
  
  public Set<String> a(String paramString, String[] paramArrayOfString)
  {
    HashSet localHashSet = new HashSet();
    try
    {
      Cursor localCursor2 = c().query("messages", new String[] { "extra_uri" }, paramString, paramArrayOfString, null, null, null);
      Cursor localCursor1 = localCursor2;
      if (localCursor1 != null) {}
      int i;
      String str;
      boolean bool;
      a(localCursor1);
    }
    finally
    {
      try
      {
        if (localCursor1.moveToFirst())
        {
          i = localCursor1.getColumnIndex("extra_uri");
          do
          {
            str = localCursor1.getString(i);
            if (!TextUtils.isEmpty(str)) {
              localHashSet.add(str);
            }
            bool = localCursor1.moveToNext();
          } while (bool);
        }
        a(localCursor1);
        return localHashSet;
      }
      finally
      {
        break label118;
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    label118:
    throw localObject1;
  }
  
  public void a(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    localSQLiteDatabase.execSQL("UPDATE conversations SET unread_message_count = (SELECT COUNT() FROM messages WHERE (messages.deleted IS NULL OR messages.deleted=0) AND conversations._id=messages.conversation_id AND messages.read>0 AND (extra_mime <>'call')),unread_calls_count = (SELECT SUM(read) FROM messages WHERE (messages.deleted IS NULL OR messages.deleted=0) AND conversations._id=messages.conversation_id AND messages.read>0 AND (extra_mime ='call')),media_msg_count = (SELECT COUNT() FROM messages WHERE (messages.deleted IS NULL OR messages.deleted=0) AND conversations._id=messages.conversation_id AND extra_mime IN ( 'image', 'video', 'animated_message' ) ) WHERE _id=?", arrayOfString);
  }
  
  /* Error */
  public void a(long paramLong, int paramInt)
  {
    // Byte code:
    //   0: iload_3
    //   1: ifeq +337 -> 338
    //   4: iconst_1
    //   5: istore 4
    //   7: new 22	android/content/ContentValues
    //   10: dup
    //   11: invokespecial 23	android/content/ContentValues:<init>	()V
    //   14: astore 5
    //   16: lconst_0
    //   17: lstore 6
    //   19: aload_0
    //   20: invokevirtual 31	com/viber/voip/messages/controller/c/aq:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   23: astore 10
    //   25: iconst_1
    //   26: anewarray 45	java/lang/String
    //   29: astore 11
    //   31: aload 11
    //   33: iconst_0
    //   34: lload_1
    //   35: invokestatic 86	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   38: aastore
    //   39: aload 10
    //   41: ldc 219
    //   43: aload 11
    //   45: invokevirtual 140	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore 12
    //   50: aload 12
    //   52: ifnull +321 -> 373
    //   55: aload 12
    //   57: invokeinterface 58 1 0
    //   62: ifeq +311 -> 373
    //   65: iload 4
    //   67: ifeq +25 -> 92
    //   70: aload 12
    //   72: iconst_1
    //   73: invokeinterface 65 2 0
    //   78: lstore 6
    //   80: aload 5
    //   82: ldc 221
    //   84: lload 6
    //   86: invokestatic 71	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   89: invokevirtual 74	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   92: aload 12
    //   94: iconst_0
    //   95: invokeinterface 65 2 0
    //   100: lstore 27
    //   102: lload 27
    //   104: lconst_0
    //   105: lcmp
    //   106: ifle +238 -> 344
    //   109: aload 5
    //   111: ldc 223
    //   113: lload 27
    //   115: invokestatic 71	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   118: invokevirtual 74	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   121: aload 5
    //   123: ldc 225
    //   125: aload 12
    //   127: iconst_2
    //   128: invokeinterface 65 2 0
    //   133: invokestatic 71	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   136: invokevirtual 74	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   139: aload_0
    //   140: aload 12
    //   142: invokevirtual 127	com/viber/voip/messages/controller/c/aq:a	(Landroid/database/Cursor;)V
    //   145: iload 4
    //   147: ifeq +86 -> 233
    //   150: aload_0
    //   151: invokevirtual 31	com/viber/voip/messages/controller/c/aq:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   154: astore 24
    //   156: iconst_2
    //   157: anewarray 45	java/lang/String
    //   160: astore 25
    //   162: aload 25
    //   164: iconst_0
    //   165: lload_1
    //   166: invokestatic 86	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   169: aastore
    //   170: aload 25
    //   172: iconst_1
    //   173: lload 6
    //   175: invokestatic 86	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   178: aastore
    //   179: aload 24
    //   181: ldc 227
    //   183: aload 25
    //   185: invokevirtual 140	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   188: astore 26
    //   190: aload 26
    //   192: astore 23
    //   194: aload_0
    //   195: iconst_1
    //   196: aload 23
    //   198: aload 5
    //   200: ldc 229
    //   202: invokespecial 231	com/viber/voip/messages/controller/c/aq:a	(ZLandroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    //   205: aload_0
    //   206: iconst_0
    //   207: aload 23
    //   209: aload 5
    //   211: ldc 233
    //   213: invokespecial 231	com/viber/voip/messages/controller/c/aq:a	(ZLandroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    //   216: aload_0
    //   217: iconst_0
    //   218: aload 23
    //   220: aload 5
    //   222: ldc 235
    //   224: invokespecial 231	com/viber/voip/messages/controller/c/aq:a	(ZLandroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    //   227: aload_0
    //   228: aload 23
    //   230: invokevirtual 127	com/viber/voip/messages/controller/c/aq:a	(Landroid/database/Cursor;)V
    //   233: iload_3
    //   234: iconst_2
    //   235: if_icmpeq +8 -> 243
    //   238: iload_3
    //   239: iconst_3
    //   240: if_icmpne +63 -> 303
    //   243: aload 5
    //   245: ldc 223
    //   247: invokevirtual 239	android/content/ContentValues:getAsLong	(Ljava/lang/String;)Ljava/lang/Long;
    //   250: invokevirtual 243	java/lang/Long:longValue	()J
    //   253: lstore 13
    //   255: lload 13
    //   257: lconst_0
    //   258: lcmp
    //   259: ifle +158 -> 417
    //   262: aload_0
    //   263: invokevirtual 31	com/viber/voip/messages/controller/c/aq:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   266: astore 20
    //   268: iconst_2
    //   269: anewarray 104	java/lang/Object
    //   272: astore 21
    //   274: aload 21
    //   276: iconst_0
    //   277: lload 13
    //   279: invokestatic 71	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   282: aastore
    //   283: aload 21
    //   285: iconst_1
    //   286: lload_1
    //   287: invokestatic 71	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   290: aastore
    //   291: aload 20
    //   293: ldc 245
    //   295: aload 21
    //   297: invokestatic 115	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   300: invokevirtual 248	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   303: aload_0
    //   304: invokevirtual 31	com/viber/voip/messages/controller/c/aq:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   307: astore 17
    //   309: iconst_1
    //   310: anewarray 45	java/lang/String
    //   313: astore 18
    //   315: aload 18
    //   317: iconst_0
    //   318: lload_1
    //   319: invokestatic 86	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   322: aastore
    //   323: aload 17
    //   325: ldc 200
    //   327: aload 5
    //   329: ldc 250
    //   331: aload 18
    //   333: invokevirtual 51	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   336: pop
    //   337: return
    //   338: iconst_0
    //   339: istore 4
    //   341: goto -334 -> 7
    //   344: aload 5
    //   346: ldc 223
    //   348: iconst_0
    //   349: invokestatic 79	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   352: invokevirtual 82	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   355: goto -216 -> 139
    //   358: astore 8
    //   360: aload 12
    //   362: astore 9
    //   364: aload_0
    //   365: aload 9
    //   367: invokevirtual 127	com/viber/voip/messages/controller/c/aq:a	(Landroid/database/Cursor;)V
    //   370: aload 8
    //   372: athrow
    //   373: aload 5
    //   375: ldc 223
    //   377: iconst_0
    //   378: invokestatic 79	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   381: invokevirtual 82	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   384: iload 4
    //   386: ifeq -247 -> 139
    //   389: aload 5
    //   391: ldc 221
    //   393: iconst_0
    //   394: invokestatic 79	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   397: invokevirtual 82	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   400: goto -261 -> 139
    //   403: astore 22
    //   405: aconst_null
    //   406: astore 23
    //   408: aload_0
    //   409: aload 23
    //   411: invokevirtual 127	com/viber/voip/messages/controller/c/aq:a	(Landroid/database/Cursor;)V
    //   414: aload 22
    //   416: athrow
    //   417: aload_0
    //   418: invokevirtual 31	com/viber/voip/messages/controller/c/aq:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   421: astore 15
    //   423: iconst_1
    //   424: anewarray 104	java/lang/Object
    //   427: astore 16
    //   429: aload 16
    //   431: iconst_0
    //   432: lload_1
    //   433: invokestatic 71	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   436: aastore
    //   437: aload 15
    //   439: ldc 252
    //   441: aload 16
    //   443: invokestatic 115	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   446: invokevirtual 248	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   449: goto -146 -> 303
    //   452: astore 22
    //   454: goto -46 -> 408
    //   457: astore 8
    //   459: aconst_null
    //   460: astore 9
    //   462: goto -98 -> 364
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	465	0	this	aq
    //   0	465	1	paramLong	long
    //   0	465	3	paramInt	int
    //   5	380	4	i	int
    //   14	376	5	localContentValues	ContentValues
    //   17	157	6	l1	long
    //   358	13	8	localObject1	Object
    //   457	1	8	localObject2	Object
    //   362	99	9	localCursor1	Cursor
    //   23	17	10	localSQLiteDatabase1	SQLiteDatabase
    //   29	15	11	arrayOfString1	String[]
    //   48	313	12	localCursor2	Cursor
    //   253	25	13	l2	long
    //   421	17	15	localSQLiteDatabase2	SQLiteDatabase
    //   427	15	16	arrayOfObject1	Object[]
    //   307	17	17	localSQLiteDatabase3	SQLiteDatabase
    //   313	19	18	arrayOfString2	String[]
    //   266	26	20	localSQLiteDatabase4	SQLiteDatabase
    //   272	24	21	arrayOfObject2	Object[]
    //   403	12	22	localObject3	Object
    //   452	1	22	localObject4	Object
    //   192	218	23	localCursor3	Cursor
    //   154	26	24	localSQLiteDatabase5	SQLiteDatabase
    //   160	24	25	arrayOfString3	String[]
    //   188	3	26	localCursor4	Cursor
    //   100	14	27	l3	long
    // Exception table:
    //   from	to	target	type
    //   55	65	358	finally
    //   70	92	358	finally
    //   92	102	358	finally
    //   109	139	358	finally
    //   344	355	358	finally
    //   373	384	358	finally
    //   389	400	358	finally
    //   150	190	403	finally
    //   194	227	452	finally
    //   19	50	457	finally
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong1);
    localSQLiteDatabase.execSQL("UPDATE participants SET last_message_id =  (SELECT messages._id FROM messages WHERE (messages.deleted IS NULL OR messages.deleted=0) AND participants._id=messages.participant_id ORDER BY messages.date DESC, messages.token DESC LIMIT 1) WHERE conversation_id=?", arrayOfString);
  }
  
  public void a(Set<Long> paramSet)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(paramSet);
    localSQLiteDatabase.execSQL(String.format("UPDATE conversations SET deleted =  (CASE WHEN conversation_type = 0 THEN 0 ELSE 1 END),delete_token = (SELECT MAX(messages.token) FROM messages WHERE conversations._id = messages.conversation_id), last_message_id = 0, unread_calls_count = 0, unread_message_count = 0  WHERE _id IN (%s)", arrayOfObject));
  }
  
  public int b(long paramLong1, long paramLong2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("read_notification_token", Long.valueOf(paramLong2));
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong1);
    return localSQLiteDatabase.update("conversations", localContentValues, "_id=?", arrayOfString);
  }
  
  protected Set<String> b()
  {
    Cursor localCursor = null;
    HashSet localHashSet = new HashSet();
    try
    {
      localCursor = c().rawQuery("SELECT DISTINCT participants_info.number FROM participants_info WHERE participants_info.participant_type=1", null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          localHashSet.add(localCursor.getString(0));
          bool = localCursor.moveToNext();
        } while (bool);
      }
      return localHashSet;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  public Set<String> b(long[] paramArrayOfLong)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.a(paramArrayOfLong);
    return a(String.format("extra_mime=? AND token IN (%s)", arrayOfObject), new String[] { "sound" });
  }
  
  public void b(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    localSQLiteDatabase.execSQL("UPDATE participants SET last_message_id =  (SELECT messages._id FROM messages WHERE (messages.deleted IS NULL OR messages.deleted=0) AND participants._id=messages.participant_id ORDER BY messages.date DESC, messages.token DESC LIMIT 1) WHERE conversation_id=?", arrayOfString);
  }
  
  public void b(Set<Long> paramSet)
  {
    String str = a.c(paramSet);
    c().delete("messages", String.format("conversation_id IN (%s)", new Object[] { str }), null);
    c().delete("public_messages_extras", String.format("group_id IN (%s)", new Object[] { str }), null);
  }
  
  protected List<ParticipantInfoEntityImpl> c(long paramLong)
  {
    Cursor localCursor = null;
    ArrayList localArrayList = new ArrayList();
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.a("participants_info", ParticipantInfoEntityHelper.PROJECTIONS);
      String str = String.format("SELECT %s FROM participants_info LEFT OUTER JOIN participants ON (participants_info._id=participants.participant_info_id) LEFT OUTER JOIN messages ON (participants.last_message_id=messages._id) WHERE participants.conversation_id=? AND participants.active=0 ORDER BY participants_info.has_photo DESC, messages.date DESC, participants_info.display_name LIMIT 4", arrayOfObject);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      localCursor = localSQLiteDatabase.rawQuery(str, arrayOfString);
      List localList = a(localCursor, localArrayList);
      return localList;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  public Map<Long, Integer> c(Set<Long> paramSet)
  {
    Cursor localCursor = null;
    HashMap localHashMap = new HashMap();
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.c(paramSet);
      localCursor = localSQLiteDatabase.rawQuery(String.format("SELECT DISTINCT messages.conversation_id, messages.conversation_type FROM messages WHERE messages._id IN (%s)", arrayOfObject), null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          localHashMap.put(Long.valueOf(localCursor.getLong(0)), Integer.valueOf(localCursor.getInt(1)));
          bool = localCursor.moveToNext();
        } while (bool);
      }
      return localHashMap;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  public Set<String> c(long paramLong1, long paramLong2)
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = "sound";
    arrayOfString[1] = String.valueOf(paramLong1);
    arrayOfString[2] = String.valueOf(paramLong2);
    return a("extra_mime=? AND token<=? AND conversation_id=?", arrayOfString);
  }
  
  public Map<String, Integer> d(long paramLong)
  {
    Cursor localCursor = null;
    HashMap localHashMap = new HashMap();
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      localCursor = localSQLiteDatabase.rawQuery(String.format("SELECT participants_info.number, participants.active FROM participants LEFT OUTER JOIN participants_info ON (participants.participant_info_id=participants_info._id) WHERE participants.conversation_id= %s AND participants_info.participant_type = 1", arrayOfObject), null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          localHashMap.put(localCursor.getString(0), Integer.valueOf(localCursor.getInt(1)));
          bool = localCursor.moveToNext();
        } while (bool);
      }
      return localHashMap;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  protected Set<String> d(Set<String> paramSet)
  {
    Cursor localCursor = null;
    HashSet localHashSet = new HashSet();
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.a(paramSet);
      localCursor = localSQLiteDatabase.rawQuery(String.format("SELECT DISTINCT participants_info.number FROM participants_info WHERE participants_info.number IN (%s)", arrayOfObject), null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          localHashSet.add(localCursor.getString(0));
          bool = localCursor.moveToNext();
        } while (bool);
      }
      return localHashSet;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  protected Set<String> e(Set<Long> paramSet)
  {
    Cursor localCursor = null;
    HashSet localHashSet = new HashSet();
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.c(paramSet);
      localCursor = localSQLiteDatabase.rawQuery(String.format("SELECT DISTINCT participants_info.number FROM participants_info WHERE participants_info.contact_id IN (%s)", arrayOfObject), null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          localHashSet.add(localCursor.getString(0));
          bool = localCursor.moveToNext();
        } while (bool);
      }
      return localHashSet;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  /* Error */
  public long[] e(long paramLong)
  {
    // Byte code:
    //   0: iconst_4
    //   1: newarray long
    //   3: dup
    //   4: iconst_0
    //   5: lconst_0
    //   6: lastore
    //   7: dup
    //   8: iconst_1
    //   9: lconst_0
    //   10: lastore
    //   11: dup
    //   12: iconst_2
    //   13: lconst_0
    //   14: lastore
    //   15: dup
    //   16: iconst_3
    //   17: lconst_0
    //   18: lastore
    //   19: astore_3
    //   20: aconst_null
    //   21: astore 4
    //   23: aload_0
    //   24: invokevirtual 31	com/viber/voip/messages/controller/c/aq:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   27: astore 6
    //   29: iconst_1
    //   30: anewarray 45	java/lang/String
    //   33: astore 7
    //   35: aload 7
    //   37: iconst_0
    //   38: lload_1
    //   39: invokestatic 86	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   42: aastore
    //   43: aload 6
    //   45: ldc_w 308
    //   48: aload 7
    //   50: invokevirtual 140	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   53: astore 4
    //   55: aload 4
    //   57: ifnull +49 -> 106
    //   60: aload 4
    //   62: invokeinterface 58 1 0
    //   67: ifeq +39 -> 106
    //   70: aload_3
    //   71: iconst_0
    //   72: aload 4
    //   74: iconst_0
    //   75: invokeinterface 144 2 0
    //   80: i2l
    //   81: lastore
    //   82: aload_3
    //   83: iconst_1
    //   84: aload 4
    //   86: iconst_1
    //   87: invokeinterface 144 2 0
    //   92: i2l
    //   93: lastore
    //   94: aload_3
    //   95: iconst_2
    //   96: aload 4
    //   98: iconst_2
    //   99: invokeinterface 144 2 0
    //   104: i2l
    //   105: lastore
    //   106: aload_0
    //   107: aload 4
    //   109: invokevirtual 127	com/viber/voip/messages/controller/c/aq:a	(Landroid/database/Cursor;)V
    //   112: aload_0
    //   113: invokevirtual 31	com/viber/voip/messages/controller/c/aq:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   116: astore 9
    //   118: iconst_1
    //   119: anewarray 45	java/lang/String
    //   122: astore 10
    //   124: aload 10
    //   126: iconst_0
    //   127: lload_1
    //   128: invokestatic 86	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   131: aastore
    //   132: aload 9
    //   134: ldc_w 310
    //   137: aload 10
    //   139: invokevirtual 140	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   142: astore 4
    //   144: aload 4
    //   146: ifnull +24 -> 170
    //   149: aload 4
    //   151: invokeinterface 58 1 0
    //   156: ifeq +14 -> 170
    //   159: aload_3
    //   160: iconst_3
    //   161: aload 4
    //   163: iconst_0
    //   164: invokeinterface 65 2 0
    //   169: lastore
    //   170: aload_0
    //   171: aload 4
    //   173: invokevirtual 127	com/viber/voip/messages/controller/c/aq:a	(Landroid/database/Cursor;)V
    //   176: aload_3
    //   177: areturn
    //   178: astore 5
    //   180: aload_0
    //   181: aload 4
    //   183: invokevirtual 127	com/viber/voip/messages/controller/c/aq:a	(Landroid/database/Cursor;)V
    //   186: aload 5
    //   188: athrow
    //   189: astore 8
    //   191: aload_0
    //   192: aload 4
    //   194: invokevirtual 127	com/viber/voip/messages/controller/c/aq:a	(Landroid/database/Cursor;)V
    //   197: aload 8
    //   199: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	200	0	this	aq
    //   0	200	1	paramLong	long
    //   19	158	3	arrayOfLong	long[]
    //   21	172	4	localCursor	Cursor
    //   178	9	5	localObject1	Object
    //   27	17	6	localSQLiteDatabase1	SQLiteDatabase
    //   33	16	7	arrayOfString1	String[]
    //   189	9	8	localObject2	Object
    //   116	17	9	localSQLiteDatabase2	SQLiteDatabase
    //   122	16	10	arrayOfString2	String[]
    // Exception table:
    //   from	to	target	type
    //   23	55	178	finally
    //   60	106	178	finally
    //   112	144	189	finally
    //   149	170	189	finally
  }
  
  public int f(long paramLong)
  {
    Cursor localCursor = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      localCursor = localSQLiteDatabase.rawQuery("SELECT COUNT (*) FROM messages WHERE deleted=0 AND conversation_id=? AND type=1 AND status NOT IN (1,2,-1)", arrayOfString);
      int i = 0;
      if (localCursor != null)
      {
        boolean bool = localCursor.moveToFirst();
        i = 0;
        if (bool)
        {
          int j = localCursor.getInt(0);
          i = j;
        }
      }
      return i;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  public Set<Long> f(Set<Long> paramSet)
  {
    Cursor localCursor = null;
    HashSet localHashSet = new HashSet();
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.c(paramSet);
      localCursor = localSQLiteDatabase.rawQuery(String.format("SELECT DISTINCT participants.conversation_id FROM participants WHERE participants.participant_info_id IN (%s)", arrayOfObject), null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          localHashSet.add(Long.valueOf(localCursor.getLong(0)));
          bool = localCursor.moveToNext();
        } while (bool);
      }
      return localHashSet;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  public int g(long paramLong)
  {
    Cursor localCursor = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      localCursor = localSQLiteDatabase.rawQuery("SELECT COUNT (*) FROM messages WHERE read>0 AND extra_mime <>'notif' AND extra_mime <>'call' AND extra_mime <>'formatted_follow' AND (extra_flags & 4) = 0 AND conversation_id=?", arrayOfString);
      int i = 0;
      if (localCursor != null)
      {
        boolean bool = localCursor.moveToFirst();
        i = 0;
        if (bool)
        {
          int j = localCursor.getInt(0);
          i = j;
        }
      }
      return i;
    }
    finally
    {
      a(localCursor);
    }
  }
  
  public Set<String> g(Set<Long> paramSet)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(paramSet);
    return a(String.format("extra_mime=? AND _id IN (%s)", arrayOfObject), new String[] { "sound" });
  }
  
  public Set<String> h(Set<Long> paramSet)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(paramSet);
    return a(String.format("extra_mime=? AND conversation_id IN (%s)", arrayOfObject), new String[] { "sound" });
  }
  
  public void h(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    localSQLiteDatabase.execSQL("UPDATE messages SET date = date_real WHERE conversation_id=? AND date_real<>date", arrayOfString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.aq
 * JD-Core Version:    0.7.0.1
 */