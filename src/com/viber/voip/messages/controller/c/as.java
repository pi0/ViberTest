package com.viber.voip.messages.controller.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Pair;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.ptt.PttController;
import com.viber.voip.ViberApplication;
import com.viber.voip.e.u;
import com.viber.voip.h.b;
import com.viber.voip.i.a;
import com.viber.voip.messages.conversation.ConversationLoaderEntity;
import com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageCallEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityHelper;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupMessageInfoEntityImpl;
import com.viber.voip.phone.v;
import com.viber.voip.util.al;
import com.viber.voip.util.fq;
import com.viber.voip.util.fz;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

public class as
  extends ar
{
  private static final String a = as.class.getSimpleName();
  private static final String b = "SELECT " + a.a("participants_info", ParticipantInfoEntityHelper.PROJECTIONS) + " FROM " + "participants_info" + " LEFT OUTER JOIN " + "participants" + " ON (" + "participants_info" + "." + "_id" + "=" + "participants" + "." + "_id" + ")" + " WHERE " + "participants" + "." + "_id" + "=? AND " + "participants" + "." + "conversation_id" + "=?";
  private static as c;
  private final at d = new at();
  private final aq e = new aq();
  
  public static as a()
  {
    if (c == null) {}
    try
    {
      if (c == null) {
        c = new as();
      }
      return c;
    }
    finally {}
  }
  
  public boolean A(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return d("message_id=? AND end_reason<>10", arrayOfString).size() == 0;
  }
  
  public boolean B(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return d("message_id=? AND start_reason<>1", arrayOfString).size() == 0;
  }
  
  public int a(long paramLong1, long paramLong2, long paramLong3)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("sync_read", Integer.valueOf(1));
    localContentValues.put("read", Integer.valueOf(0));
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[3];
    arrayOfString[0] = String.valueOf(paramLong1);
    arrayOfString[1] = String.valueOf(paramLong2);
    arrayOfString[2] = String.valueOf(paramLong3);
    return localSQLiteDatabase.update("messages", localContentValues, "conversation_id=? AND read>0 AND (token<=? OR date<=?)", arrayOfString);
  }
  
  public int a(long paramLong, String paramString, int paramInt1, int paramInt2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("body", paramString);
    localContentValues.put("thumbnail_x", Integer.valueOf(paramInt2));
    localContentValues.put("thumbnail_y", Integer.valueOf(paramInt1));
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return localSQLiteDatabase.update("messages", localContentValues, "_id=?", arrayOfString);
  }
  
  public int a(long paramLong, String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("background_landscape", paramString2);
    localContentValues.put("background_portrait", paramString1);
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return localSQLiteDatabase.update("conversations", localContentValues, "_id=?", arrayOfString);
  }
  
  public int a(long paramLong, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("smart_notification", Integer.valueOf(i));
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      return localSQLiteDatabase.update("conversations", localContentValues, "_id=?", arrayOfString);
    }
  }
  
  public int a(Set<Long> paramSet, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("mute_notification", Integer.valueOf(i));
      SQLiteDatabase localSQLiteDatabase = c();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.c(paramSet);
      return localSQLiteDatabase.update("conversations", localContentValues, String.format("_id IN (%s)", arrayOfObject), null);
    }
  }
  
  public int a(long[] paramArrayOfLong)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.a(paramArrayOfLong);
    return localSQLiteDatabase.delete("messages", String.format("token IN (%s)", arrayOfObject), null);
  }
  
  /* Error */
  public long a(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc2_w 193
    //   5: lstore_3
    //   6: new 196	java/util/ArrayList
    //   9: dup
    //   10: invokespecial 197	java/util/ArrayList:<init>	()V
    //   13: astore 5
    //   15: aload_0
    //   16: invokevirtual 133	com/viber/voip/messages/controller/c/as:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   19: astore 9
    //   21: iconst_1
    //   22: anewarray 170	java/lang/Object
    //   25: astore 10
    //   27: aload 10
    //   29: iconst_0
    //   30: aload_1
    //   31: invokestatic 200	com/viber/voip/i/a:a	([Ljava/lang/String;)Ljava/lang/String;
    //   34: aastore
    //   35: aload 9
    //   37: ldc 202
    //   39: aload 10
    //   41: invokestatic 179	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   44: aconst_null
    //   45: invokevirtual 206	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore 11
    //   50: aload 11
    //   52: astore 7
    //   54: aload 7
    //   56: ifnull +59 -> 115
    //   59: aload 7
    //   61: invokeinterface 212 1 0
    //   66: ifeq +49 -> 115
    //   69: aload 7
    //   71: iconst_0
    //   72: invokeinterface 216 2 0
    //   77: lstore 23
    //   79: aload 7
    //   81: iconst_1
    //   82: invokeinterface 220 2 0
    //   87: aload_1
    //   88: arraylength
    //   89: if_icmpne +16 -> 105
    //   92: aload 5
    //   94: lload 23
    //   96: invokestatic 225	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   99: invokeinterface 229 2 0
    //   104: pop
    //   105: aload 7
    //   107: invokeinterface 232 1 0
    //   112: ifne -43 -> 69
    //   115: aload_0
    //   116: aload 7
    //   118: invokevirtual 235	com/viber/voip/messages/controller/c/as:a	(Landroid/database/Cursor;)V
    //   121: aload 5
    //   123: invokeinterface 110 1 0
    //   128: ifle +100 -> 228
    //   131: aload_0
    //   132: invokevirtual 133	com/viber/voip/messages/controller/c/as:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   135: astore 13
    //   137: iconst_1
    //   138: anewarray 170	java/lang/Object
    //   141: astore 14
    //   143: aload 14
    //   145: iconst_0
    //   146: aload 5
    //   148: invokestatic 173	com/viber/voip/i/a:c	(Ljava/util/Collection;)Ljava/lang/String;
    //   151: aastore
    //   152: aload 13
    //   154: ldc 237
    //   156: aload 14
    //   158: invokestatic 179	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   161: aconst_null
    //   162: invokevirtual 206	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   165: astore 15
    //   167: aload 15
    //   169: astore_2
    //   170: aload_2
    //   171: ifnull +78 -> 249
    //   174: aload_2
    //   175: invokeinterface 212 1 0
    //   180: ifeq +69 -> 249
    //   183: aload_2
    //   184: iconst_0
    //   185: invokeinterface 216 2 0
    //   190: pop2
    //   191: aload_2
    //   192: iconst_1
    //   193: invokeinterface 216 2 0
    //   198: lstore 18
    //   200: iconst_m1
    //   201: aload_2
    //   202: iconst_2
    //   203: invokeinterface 220 2 0
    //   208: iadd
    //   209: istore 20
    //   211: aload_1
    //   212: arraylength
    //   213: istore 21
    //   215: iload 20
    //   217: iload 21
    //   219: if_icmpne +17 -> 236
    //   222: lload 18
    //   224: lstore_3
    //   225: aload_2
    //   226: astore 7
    //   228: aload_0
    //   229: aload 7
    //   231: invokevirtual 235	com/viber/voip/messages/controller/c/as:a	(Landroid/database/Cursor;)V
    //   234: lload_3
    //   235: lreturn
    //   236: aload_2
    //   237: invokeinterface 232 1 0
    //   242: istore 22
    //   244: iload 22
    //   246: ifne -63 -> 183
    //   249: aload_2
    //   250: astore 7
    //   252: goto -24 -> 228
    //   255: astore 8
    //   257: aload 8
    //   259: invokevirtual 240	java/lang/Exception:printStackTrace	()V
    //   262: aload_0
    //   263: aload_2
    //   264: invokevirtual 235	com/viber/voip/messages/controller/c/as:a	(Landroid/database/Cursor;)V
    //   267: lload_3
    //   268: lreturn
    //   269: astore 6
    //   271: aconst_null
    //   272: astore 7
    //   274: aload_0
    //   275: aload 7
    //   277: invokevirtual 235	com/viber/voip/messages/controller/c/as:a	(Landroid/database/Cursor;)V
    //   280: aload 6
    //   282: athrow
    //   283: astore 6
    //   285: goto -11 -> 274
    //   288: astore 6
    //   290: aload_2
    //   291: astore 7
    //   293: goto -19 -> 274
    //   296: astore 12
    //   298: aload 7
    //   300: astore_2
    //   301: aload 12
    //   303: astore 8
    //   305: goto -48 -> 257
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	308	0	this	as
    //   0	308	1	paramArrayOfString	String[]
    //   1	300	2	localObject1	Object
    //   5	263	3	l1	long
    //   13	134	5	localArrayList	ArrayList
    //   269	12	6	localObject2	Object
    //   283	1	6	localObject3	Object
    //   288	1	6	localObject4	Object
    //   52	247	7	localObject5	Object
    //   255	3	8	localException1	java.lang.Exception
    //   303	1	8	localObject6	Object
    //   19	17	9	localSQLiteDatabase1	SQLiteDatabase
    //   25	15	10	arrayOfObject1	Object[]
    //   48	3	11	localCursor1	Cursor
    //   296	6	12	localException2	java.lang.Exception
    //   135	18	13	localSQLiteDatabase2	SQLiteDatabase
    //   141	16	14	arrayOfObject2	Object[]
    //   165	3	15	localCursor2	Cursor
    //   198	25	18	l2	long
    //   209	11	20	i	int
    //   213	7	21	j	int
    //   242	3	22	bool	boolean
    //   77	18	23	l3	long
    // Exception table:
    //   from	to	target	type
    //   15	50	255	java/lang/Exception
    //   174	183	255	java/lang/Exception
    //   183	215	255	java/lang/Exception
    //   236	244	255	java/lang/Exception
    //   15	50	269	finally
    //   59	69	283	finally
    //   69	105	283	finally
    //   105	115	283	finally
    //   115	167	283	finally
    //   174	183	288	finally
    //   183	215	288	finally
    //   236	244	288	finally
    //   257	262	288	finally
    //   59	69	296	java/lang/Exception
    //   69	105	296	java/lang/Exception
    //   105	115	296	java/lang/Exception
    //   115	167	296	java/lang/Exception
  }
  
  public ConversationEntityImpl a(long paramLong)
  {
    if (paramLong > 0L)
    {
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      return f("group_id=?", arrayOfString);
    }
    return null;
  }
  
  public ConversationEntityImpl a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      return f("recipient_number=?", new String[] { paramString });
    }
    return null;
  }
  
  public MessageEntityImpl a(int paramInt)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    return c("seq=?", arrayOfString);
  }
  
  public MessageEntityImpl a(String paramString, int paramInt)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(paramInt);
    arrayOfString[1] = paramString;
    return b("type=1 AND status=? AND address=?", arrayOfString, "date DESC, token DESC");
  }
  
  public MessageEntityImpl a(String paramString1, String paramString2)
  {
    return c("extra_uri=? AND extra_mime=?", new String[] { paramString1, paramString2 });
  }
  
  public ParticipantEntityImpl a(long paramLong1, long paramLong2)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(paramLong1);
    arrayOfString[1] = String.valueOf(paramLong2);
    return h("conversation_id=? AND participant_info_id=?", arrayOfString);
  }
  
  public ParticipantEntityImpl a(long paramLong, String paramString)
  {
    return this.e.a(paramLong, paramString);
  }
  
  public ArrayList<ConversationLoaderEntity> a(ao paramao)
  {
    return this.d.a(paramao);
  }
  
  public List<ConversationEntityImpl> a(Set<Long> paramSet)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(paramSet);
    return e(String.format("_id IN (%s)", arrayOfObject), null);
  }
  
  public List<ParticipantInfoEntityImpl> a(Set<String> paramSet, long paramLong)
  {
    return this.e.a(paramSet, paramLong);
  }
  
  public List<ParticipantInfoEntityImpl> a(Set<Long> paramSet, String paramString)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(paramSet);
    return h(String.format("_id IN (%s)", arrayOfObject), null, paramString);
  }
  
  public Set<Pair<String, String>> a(ViberApplication paramViberApplication, String paramString)
  {
    return this.e.a(paramViberApplication, paramString);
  }
  
  public Set<Long> a(String paramString, String[] paramArrayOfString)
  {
    HashSet localHashSet = new HashSet();
    try
    {
      Cursor localCursor2 = c().query("conversations", new String[] { "_id" }, paramString, paramArrayOfString, null, null, null, null);
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
        break label98;
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    label98:
    throw localObject1;
  }
  
  public void a(long paramLong, int paramInt)
  {
    this.e.a(paramLong, paramInt);
  }
  
  public int b(long paramLong, String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("name", paramString);
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return localSQLiteDatabase.update("conversations", localContentValues, "_id=?", arrayOfString);
  }
  
  public int b(long paramLong, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("mute_notification", Integer.valueOf(i));
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      return localSQLiteDatabase.update("conversations", localContentValues, "_id=?", arrayOfString);
    }
  }
  
  public int b(long[] paramArrayOfLong)
  {
    String str = a.a(paramArrayOfLong);
    int i = c().delete("messages", String.format("token IN (%s) AND deleted=1", new Object[] { str }), null);
    if (i > 0) {
      c().delete("public_messages_extras", String.format("message_token IN (%s)", new Object[] { str }), null);
    }
    return i;
  }
  
  public ConversationEntityImpl b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      return f("group_id IN (SELECT group_id FROM group_conversations_extras WHERE group_uri=?)", new String[] { paramString });
    }
    return null;
  }
  
  public MessageEntityImpl b(long paramLong1, long paramLong2)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(paramLong1);
    arrayOfString[1] = String.valueOf(paramLong2);
    return b("conversation_id=? AND token>=?", arrayOfString, "token ASC");
  }
  
  public MessageEntityImpl b(String paramString1, String paramString2)
  {
    return c("extra_download_id=? AND extra_mime=?", new String[] { paramString1, paramString2 });
  }
  
  public PublicGroupConversationEntityImpl b(long paramLong)
  {
    if (paramLong > 0L)
    {
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      return k("group_id=?", arrayOfString);
    }
    return null;
  }
  
  public ArrayList<ConversationLoaderPublicGroupEntity> b(ao paramao)
  {
    return this.d.b(paramao);
  }
  
  public List<PublicGroupConversationEntityImpl> b()
  {
    return l("local_message_id < server_message_id AND server_message_id > 0 AND group_role = 3", null);
  }
  
  public Set<String> b(Set<String> paramSet)
  {
    return this.e.d(paramSet);
  }
  
  public int c(long paramLong, String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("message_draft", paramString);
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return localSQLiteDatabase.update("conversations", localContentValues, "_id=?", arrayOfString);
  }
  
  public int c(long paramLong, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("share_location", Integer.valueOf(i));
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      return localSQLiteDatabase.update("conversations", localContentValues, "_id=?", arrayOfString);
    }
  }
  
  public int c(long[] paramArrayOfLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("sync_read", Integer.valueOf(0));
    SQLiteDatabase localSQLiteDatabase = c();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.a(paramArrayOfLong);
    return localSQLiteDatabase.update("messages", localContentValues, String.format("token IN (%s) AND sync_read=1", arrayOfObject), null);
  }
  
  public ConversationEntityImpl c(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return f("_id=?", arrayOfString);
  }
  
  public MessageEntityImpl c(long paramLong1, long paramLong2)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(paramLong1);
    arrayOfString[1] = String.valueOf(paramLong2);
    return b("conversation_id=? AND token<?", arrayOfString, "token DESC");
  }
  
  public ParticipantInfoEntityImpl c(String paramString)
  {
    return i("number=? AND participant_type=1", new String[] { paramString });
  }
  
  public Set<String> c(Set<Long> paramSet)
  {
    return this.e.e(paramSet);
  }
  
  public int d(long paramLong)
  {
    boolean bool = paramLong < 0L;
    int i = 0;
    if (bool)
    {
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      i = localSQLiteDatabase.delete("conversations", "_id=?", arrayOfString);
    }
    return i;
  }
  
  public int d(long paramLong1, long paramLong2)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(paramLong1);
    arrayOfString[1] = String.valueOf(paramLong2);
    return localSQLiteDatabase.delete("messages", "conversation_id=? AND token<=?", arrayOfString);
  }
  
  public int d(long paramLong, String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("extra_bucket_name", paramString);
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return localSQLiteDatabase.update("messages", localContentValues, "_id=? AND extra_mime NOT IN ( 'image', 'video')", arrayOfString);
  }
  
  public int d(long[] paramArrayOfLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("read", Integer.valueOf(0));
    SQLiteDatabase localSQLiteDatabase = c();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.a(paramArrayOfLong);
    return localSQLiteDatabase.update("messages", localContentValues, String.format("token IN (%s)", arrayOfObject), null);
  }
  
  public ConversationEntityImpl d()
  {
    return e("conversation_type=1", null, "date DESC");
  }
  
  public List<MessageEntityImpl> d(String paramString)
  {
    return a("extra_mime=?", new String[] { paramString }, "date ASC");
  }
  
  public Set<Long> d(Set<Long> paramSet)
  {
    return this.e.f(paramSet);
  }
  
  public int e(long paramLong)
  {
    boolean bool = paramLong < 0L;
    int i = 0;
    if (bool)
    {
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      i = c().delete("conversations", "group_id=? AND deleted=1", arrayOfString);
      if (i > 0) {
        c().delete("group_conversations_extras", "group_id=?", arrayOfString);
      }
    }
    return i;
  }
  
  public List<ConversationEntityImpl> e()
  {
    return e("deleted=1 OR delete_token>0", null);
  }
  
  public List<ParticipantInfoEntityImpl> e(Set<Long> paramSet)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(paramSet);
    return h(String.format("_id IN (%s)", arrayOfObject), null, null);
  }
  
  public Set<String> e(long[] paramArrayOfLong)
  {
    return this.e.b(paramArrayOfLong);
  }
  
  public void e(long paramLong1, long paramLong2)
  {
    this.e.a(paramLong1, paramLong2);
  }
  
  public List<MessageEntityImpl> f()
  {
    return b("(deleted=1 AND (token>0 OR status=-1))", null);
  }
  
  public List<ParticipantInfoEntityImpl> f(long paramLong)
  {
    return this.e.c(paramLong);
  }
  
  public List<ParticipantInfoEntityImpl> f(Set<String> paramSet)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.a(paramSet);
    return h(String.format("number IN (%s)", arrayOfObject), null, null);
  }
  
  public Map<Long, Integer> f(long[] paramArrayOfLong)
  {
    return this.e.a(paramArrayOfLong);
  }
  
  public void f(long paramLong1, long paramLong2)
  {
    this.e.b(paramLong1, paramLong2);
  }
  
  public int g(long paramLong1, long paramLong2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("sync_read", Integer.valueOf(0));
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(paramLong1);
    arrayOfString[1] = String.valueOf(paramLong2);
    return localSQLiteDatabase.update("messages", localContentValues, "conversation_id=? AND token<=?", arrayOfString);
  }
  
  public Set<String> g()
  {
    return this.e.b();
  }
  
  public Set<Long> g(long paramLong)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(paramLong));
    return this.e.f(localHashSet);
  }
  
  public void g(Set<Long> paramSet)
  {
    this.e.a(paramSet);
  }
  
  public int h(long paramLong1, long paramLong2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("delete_token", Integer.valueOf(0));
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(paramLong1);
    arrayOfString[1] = String.valueOf(paramLong2);
    return localSQLiteDatabase.update("conversations", localContentValues, "_id=? AND delete_token=?", arrayOfString);
  }
  
  public List<ParticipantInfoEntityImpl> h()
  {
    return h(null, null, null);
  }
  
  public Map<String, Integer> h(long paramLong)
  {
    return this.e.d(paramLong);
  }
  
  public void h(Set<Long> paramSet)
  {
    this.e.b(paramSet);
  }
  
  public int i(long paramLong1, long paramLong2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("delete_token", Long.valueOf(paramLong2));
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong1);
    return localSQLiteDatabase.update("conversations", localContentValues, "group_id=?", arrayOfString);
  }
  
  public int i(Set<Long> paramSet)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("deleted", Integer.valueOf(1));
    SQLiteDatabase localSQLiteDatabase = c();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(paramSet);
    return localSQLiteDatabase.update("messages", localContentValues, String.format("_id IN (%s)", arrayOfObject), null);
  }
  
  public ParticipantInfoEntityImpl i()
  {
    return i("participant_type=0", null);
  }
  
  public List<ParticipantEntityImpl> i(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return g("conversation_id=?", arrayOfString);
  }
  
  public int j(long paramLong1, long paramLong2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("read", Integer.valueOf(0));
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(paramLong1);
    arrayOfString[1] = String.valueOf(paramLong2);
    return localSQLiteDatabase.update("messages", localContentValues, "conversation_id=? AND token<=?", arrayOfString);
  }
  
  public ParticipantInfoEntityImpl j(long paramLong)
  {
    String str = String.format("_id IN (%s)", new Object[] { "SELECT participant_info_id FROM participants WHERE _id=?" });
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ("" + paramLong);
    return i(str, arrayOfString);
  }
  
  public List<MessageEntityImpl> j()
  {
    return a("type=1 AND status IN( 0, 4 )", null, "date ASC");
  }
  
  public Set<String> j(Set<Long> paramSet)
  {
    return this.e.g(paramSet);
  }
  
  public MessageEntityImpl k(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return c("token=?", arrayOfString);
  }
  
  public List<MessageEntityImpl> k()
  {
    return a("type=0 AND ( extra_mime IN ( 'image', 'video') AND extra_uri IS NULL AND status<>'-1') OR ( extra_mime = 'sound' AND extra_status = 4 ) ", null, "date DESC");
  }
  
  public Set<String> k(long paramLong1, long paramLong2)
  {
    return this.e.c(paramLong1, paramLong2);
  }
  
  public Set<String> k(Set<Long> paramSet)
  {
    return this.e.h(paramSet);
  }
  
  public PublicGroupMessageInfoEntityImpl l(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return j("message_token=?", arrayOfString);
  }
  
  public List<MessageEntityImpl> l()
  {
    return a("read>0 AND extra_mime <>'notif' AND extra_mime <>'call' AND extra_mime <>'formatted_follow' AND (extra_flags & 16) = 0", null, "date DESC", "conversation_id");
  }
  
  public Map<Long, Integer> l(Set<Long> paramSet)
  {
    return this.e.c(paramSet);
  }
  
  public MessageEntityImpl m(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return c("_id=?", arrayOfString);
  }
  
  public List<MessageEntityImpl> m()
  {
    return a("read>0 AND extra_mime='notif'", null, "date DESC", "conversation_id");
  }
  
  public List<MessageEntityImpl> n()
  {
    return a("read>0 AND extra_mime ='call'", null, "date DESC", "conversation_id");
  }
  
  public List<MessageEntityImpl> n(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return a("type=1 AND status=-1 AND conversation_id=?", arrayOfString, "date DESC");
  }
  
  public ConversationEntityImpl o()
  {
    MessageEntityImpl localMessageEntityImpl = b("read>0", null, "date DESC, token DESC");
    ConversationEntityImpl localConversationEntityImpl = null;
    if (localMessageEntityImpl != null) {
      localConversationEntityImpl = c(localMessageEntityImpl.getConversationId());
    }
    return localConversationEntityImpl;
  }
  
  public List<MessageEntityImpl> o(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return a("read>0 AND extra_mime='notif' AND conversation_id=?", arrayOfString, "date ASC");
  }
  
  public List<MessageEntityImpl> p(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return a("read>0 AND conversation_id=? AND (extra_mime <>'call' AND extra_mime <>'notif' AND extra_mime <>'formatted_follow')", arrayOfString, "date DESC");
  }
  
  public long[] p()
  {
    return this.e.e(-1L);
  }
  
  public int q()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(0));
    return c().update("messages", localContentValues, "status=3", null);
  }
  
  public MessageEntityImpl q(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return b("conversation_id=?", arrayOfString, "date DESC");
  }
  
  public int r()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(4));
    return c().update("messages", localContentValues, "status=6 OR status=5", null);
  }
  
  public List<MessageCallEntityImpl> r(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return c("message_id=?", arrayOfString, "date ASC");
  }
  
  public List<MessageEntityImpl> s(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return a("conversation_id=?", arrayOfString, "token ASC");
  }
  
  public void s()
  {
    c().beginTransaction();
    try
    {
      c().delete("conversations", "last_message_id<=0 AND conversation_type=0 AND (delete_token=0 OR delete_token IS NULL)", null);
      c().delete("messages", "conversation_id=-1 OR (deleted<>1 AND conversation_id NOT IN (SELECT _id FROM conversations))", null);
      c().delete("messages_calls", "message_id NOT IN (SELECT _id FROM messages)", null);
      c().delete("participants", "conversation_id=-1 OR (conversation_id NOT IN (SELECT _id FROM conversations))", null);
      c().delete("participants_info", "participant_type=1 AND _id NOT IN (SELECT participant_info_id FROM participants)", null);
      c().setTransactionSuccessful();
      return;
    }
    finally
    {
      c().endTransaction();
    }
  }
  
  public int t(long paramLong)
  {
    return this.e.f(paramLong);
  }
  
  public void t()
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(10);
    localSQLiteDatabase.delete("messages", "status = ?", arrayOfString);
    List localList = b("extra_status=6 AND extra_mime='sound'", null);
    PttController localPttController = ViberApplication.getInstance().getPhoneController(true).getPttController();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      MessageEntityImpl localMessageEntityImpl = (MessageEntityImpl)localIterator.next();
      if ((localMessageEntityImpl.isOutgoing()) && (localMessageEntityImpl.getMediaUri() != null))
      {
        long l = localPttController.handleRestorePttDuration(localMessageEntityImpl.getMediaUri());
        localMessageEntityImpl.setDuration(b.d().a(l));
        localMessageEntityImpl.setExtraStatus(3);
        this.e.b(localMessageEntityImpl);
      }
      else if (localMessageEntityImpl.getMediaUri() != null)
      {
        localPttController.handleDeletePtt(localMessageEntityImpl.getMediaUri());
        localPttController.handleDownloadPtt(localMessageEntityImpl.getDownloadId());
      }
    }
  }
  
  public Set<Long> u()
  {
    ContentValues localContentValues1 = new ContentValues();
    localContentValues1.put("last_message_id", Integer.valueOf(0));
    c().update("participants", localContentValues1, null, null);
    ContentValues localContentValues2 = new ContentValues();
    localContentValues2.put("last_message_id", Integer.valueOf(0));
    c().update("conversations", localContentValues2, null, null);
    c().delete("messages", null, null);
    return this.e.a();
  }
  
  public void u(long paramLong)
  {
    this.e.h(paramLong);
  }
  
  public Set<Long> v()
  {
    Set localSet = this.e.a();
    c().delete("conversations", null, null);
    c().delete("participants", null, null);
    c().delete("messages", null, null);
    c().delete("participants_info", null, null);
    return localSet;
  }
  
  public void v(long paramLong)
  {
    this.e.a(paramLong);
    fz.a().a(this.e.e(ViberApplication.getInstance().getPhoneApp().a().g()));
  }
  
  public List<ConversationEntityImpl> w()
  {
    return e(null, null);
  }
  
  public void w(long paramLong)
  {
    this.e.b(paramLong);
  }
  
  public int x(long paramLong)
  {
    return this.e.g(paramLong);
  }
  
  public boolean x()
  {
    return (f(null, null) != null) && (c(null, null) != null);
  }
  
  public int y(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return localSQLiteDatabase.delete("messages", "_id=?", arrayOfString);
  }
  
  public boolean y()
  {
    List localList = a("LOWER(address) = 'viber'", null, "date ASC");
    if (localList == null) {
      return false;
    }
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      String str = ((MessageEntityImpl)localIterator.next()).getBody();
      if ((str != null) && (str.matches(fq.n.pattern()))) {
        return true;
      }
    }
    return false;
  }
  
  public MessageEntityImpl z(long paramLong)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    return b("sync_read=1 AND conversation_id=?", arrayOfString, "token DESC");
  }
  
  public void z()
  {
    c().beginTransaction();
    try
    {
      Cursor localCursor = c().rawQuery("SELECT conversations.group_id, conversations._id FROM conversations LEFT OUTER JOIN group_conversations_extras ON (group_conversations_extras.group_id=conversations.group_id) WHERE group_role = 3 AND conversation_type=2", null);
      if (!al.b(localCursor))
      {
        boolean bool = localCursor.moveToFirst();
        if (bool) {}
      }
      else
      {
        return;
      }
      do
      {
        String str1 = String.valueOf(localCursor.getLong(0));
        String str2 = String.valueOf(localCursor.getLong(1));
        c().delete("messages", "group_id=? AND _id NOT IN (SELECT _id FROM messages WHERE group_id=? ORDER BY message_global_id DESC LIMIT 200)", new String[] { str1, str1 });
        c().delete("public_messages_extras", "group_id=? AND message_token NOT IN (SELECT token FROM messages WHERE group_id=? ORDER BY message_global_id DESC LIMIT 200)", new String[] { str2, str1 });
      } while (localCursor.moveToNext());
      al.a(localCursor);
      c().setTransactionSuccessful();
      return;
    }
    finally
    {
      c().endTransaction();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.as
 * JD-Core Version:    0.7.0.1
 */