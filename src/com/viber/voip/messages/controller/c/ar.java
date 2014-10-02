package com.viber.voip.messages.controller.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.viber.provider.messages.b.g;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageCallEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityHelper;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupMessageInfoEntityImpl;
import com.viber.voip.util.al;
import java.util.List;

public abstract class ar
{
  private static final String a = ar.class.getSimpleName();
  
  protected int a(long paramLong, String paramString, ContentValues paramContentValues)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      int i = localSQLiteDatabase.update(paramString, paramContentValues, "_id=?", arrayOfString);
      return i;
    }
    catch (SQLException localSQLException) {}
    return 0;
  }
  
  protected long a(String paramString, ContentValues paramContentValues)
  {
    try
    {
      long l = c().insertOrThrow(paramString, null, paramContentValues);
      return l;
    }
    catch (SQLException localSQLException) {}
    return -1L;
  }
  
  protected List<ParticipantInfoEntityImpl> a(Cursor paramCursor, List<ParticipantInfoEntityImpl> paramList)
  {
    if ((paramCursor != null) && (paramCursor.moveToFirst())) {
      do
      {
        paramList.add(ParticipantInfoEntityHelper.createEntity(new ParticipantInfoEntityImpl(), paramCursor, 0));
      } while (paramCursor.moveToNext());
    }
    return paramList;
  }
  
  protected List<MessageEntityImpl> a(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    return a(paramString1, paramArrayOfString, paramString2, null);
  }
  
  /* Error */
  protected List<MessageEntityImpl> a(String paramString1, String[] paramArrayOfString, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: new 78	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 79	java/util/ArrayList:<init>	()V
    //   7: astore 5
    //   9: aload_0
    //   10: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 81
    //   15: getstatic 87	com/viber/voip/messages/orm/entity/impl/MessageEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   18: aload_1
    //   19: aload_2
    //   20: aload 4
    //   22: aconst_null
    //   23: aload_3
    //   24: aconst_null
    //   25: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   28: astore 8
    //   30: aload 8
    //   32: astore 7
    //   34: aload 7
    //   36: ifnull +48 -> 84
    //   39: aload 7
    //   41: invokeinterface 54 1 0
    //   46: ifeq +38 -> 84
    //   49: aload 5
    //   51: new 93	com/viber/voip/messages/orm/entity/impl/MessageEntityImpl
    //   54: dup
    //   55: invokespecial 94	com/viber/voip/messages/orm/entity/impl/MessageEntityImpl:<init>	()V
    //   58: aload 7
    //   60: iconst_0
    //   61: invokestatic 97	com/viber/voip/messages/orm/entity/impl/MessageEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    //   64: invokeinterface 69 2 0
    //   69: pop
    //   70: aload 7
    //   72: invokeinterface 72 1 0
    //   77: istore 10
    //   79: iload 10
    //   81: ifne -32 -> 49
    //   84: aload_0
    //   85: aload 7
    //   87: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   90: aload 5
    //   92: areturn
    //   93: astore 6
    //   95: aconst_null
    //   96: astore 7
    //   98: aload_0
    //   99: aload 7
    //   101: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   104: aload 6
    //   106: athrow
    //   107: astore 6
    //   109: goto -11 -> 98
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	ar
    //   0	112	1	paramString1	String
    //   0	112	2	paramArrayOfString	String[]
    //   0	112	3	paramString2	String
    //   0	112	4	paramString3	String
    //   7	84	5	localArrayList	java.util.ArrayList
    //   93	12	6	localObject1	Object
    //   107	1	6	localObject2	Object
    //   32	68	7	localCursor1	Cursor
    //   28	3	8	localCursor2	Cursor
    //   77	3	10	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   9	30	93	finally
    //   39	49	107	finally
    //   49	79	107	finally
  }
  
  protected void a(Cursor paramCursor)
  {
    al.a(paramCursor);
  }
  
  public boolean a(BaseEntity paramBaseEntity)
  {
    if (paramBaseEntity == null) {
      throw new IllegalArgumentException("Can update entity, entity is null");
    }
    if (paramBaseEntity.getContentValues() == null) {
      throw new IllegalArgumentException("Can update entity, content values is null");
    }
    if (paramBaseEntity.getTable() == null) {
      throw new IllegalArgumentException("Can update entity, table is null");
    }
    long l = a(paramBaseEntity.getTable(), paramBaseEntity.getContentValues());
    if (l > 0L)
    {
      paramBaseEntity.setId(l);
      return true;
    }
    return false;
  }
  
  /* Error */
  protected MessageEntityImpl b(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc 81
    //   9: getstatic 87	com/viber/voip/messages/orm/entity/impl/MessageEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   12: aload_1
    //   13: aload_2
    //   14: aconst_null
    //   15: aconst_null
    //   16: aload_3
    //   17: ldc 134
    //   19: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   22: astore 6
    //   24: aload 6
    //   26: ifnull +41 -> 67
    //   29: aload 6
    //   31: invokeinterface 54 1 0
    //   36: ifeq +31 -> 67
    //   39: new 93	com/viber/voip/messages/orm/entity/impl/MessageEntityImpl
    //   42: dup
    //   43: invokespecial 94	com/viber/voip/messages/orm/entity/impl/MessageEntityImpl:<init>	()V
    //   46: aload 6
    //   48: iconst_0
    //   49: invokestatic 97	com/viber/voip/messages/orm/entity/impl/MessageEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    //   52: astore 8
    //   54: aload 8
    //   56: astore 7
    //   58: aload_0
    //   59: aload 6
    //   61: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   64: aload 7
    //   66: areturn
    //   67: aconst_null
    //   68: astore 7
    //   70: goto -12 -> 58
    //   73: astore 5
    //   75: aload_0
    //   76: aload 4
    //   78: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   81: aload 5
    //   83: athrow
    //   84: astore 5
    //   86: aload 6
    //   88: astore 4
    //   90: goto -15 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	ar
    //   0	93	1	paramString1	String
    //   0	93	2	paramArrayOfString	String[]
    //   0	93	3	paramString2	String
    //   1	88	4	localObject1	Object
    //   73	9	5	localObject2	Object
    //   84	1	5	localObject3	Object
    //   22	65	6	localCursor	Cursor
    //   56	13	7	localMessageEntityImpl1	MessageEntityImpl
    //   52	3	8	localMessageEntityImpl2	MessageEntityImpl
    // Exception table:
    //   from	to	target	type
    //   3	24	73	finally
    //   29	54	84	finally
  }
  
  protected List<MessageEntityImpl> b(String paramString, String[] paramArrayOfString)
  {
    return a(paramString, paramArrayOfString, null);
  }
  
  /* Error */
  protected List<MessageCallEntityImpl> b(String paramString1, String[] paramArrayOfString, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: new 78	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 79	java/util/ArrayList:<init>	()V
    //   7: astore 5
    //   9: aload_0
    //   10: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 139
    //   15: getstatic 142	com/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   18: aload_1
    //   19: aload_2
    //   20: aload 4
    //   22: aconst_null
    //   23: aload_3
    //   24: aconst_null
    //   25: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   28: astore 8
    //   30: aload 8
    //   32: astore 7
    //   34: aload 7
    //   36: ifnull +48 -> 84
    //   39: aload 7
    //   41: invokeinterface 54 1 0
    //   46: ifeq +38 -> 84
    //   49: aload 5
    //   51: new 144	com/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl
    //   54: dup
    //   55: invokespecial 145	com/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl:<init>	()V
    //   58: aload 7
    //   60: iconst_0
    //   61: invokestatic 148	com/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;
    //   64: invokeinterface 69 2 0
    //   69: pop
    //   70: aload 7
    //   72: invokeinterface 72 1 0
    //   77: istore 10
    //   79: iload 10
    //   81: ifne -32 -> 49
    //   84: aload_0
    //   85: aload 7
    //   87: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   90: aload 5
    //   92: areturn
    //   93: astore 6
    //   95: aconst_null
    //   96: astore 7
    //   98: aload_0
    //   99: aload 7
    //   101: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   104: aload 6
    //   106: athrow
    //   107: astore 6
    //   109: goto -11 -> 98
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	ar
    //   0	112	1	paramString1	String
    //   0	112	2	paramArrayOfString	String[]
    //   0	112	3	paramString2	String
    //   0	112	4	paramString3	String
    //   7	84	5	localArrayList	java.util.ArrayList
    //   93	12	6	localObject1	Object
    //   107	1	6	localObject2	Object
    //   32	68	7	localCursor1	Cursor
    //   28	3	8	localCursor2	Cursor
    //   77	3	10	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   9	30	93	finally
    //   39	49	107	finally
    //   49	79	107	finally
  }
  
  public boolean b(BaseEntity paramBaseEntity)
  {
    if (paramBaseEntity == null) {
      throw new IllegalArgumentException("Can update entity, entity is null");
    }
    if (paramBaseEntity.getContentValues() == null) {
      throw new IllegalArgumentException("Can update entity, content values is null");
    }
    if (paramBaseEntity.getTable() == null) {
      throw new IllegalArgumentException("Can update entity, table is null");
    }
    if (paramBaseEntity.getId() <= 0L) {
      throw new IllegalArgumentException("Can update entity, invalid entity id=" + paramBaseEntity.getId());
    }
    return a(paramBaseEntity.getId(), paramBaseEntity.getTable(), paramBaseEntity.getContentValues()) > 0;
  }
  
  public SQLiteDatabase c()
  {
    return g.a(ViberApplication.getInstance()).getWritableDatabase();
  }
  
  protected MessageEntityImpl c(String paramString, String[] paramArrayOfString)
  {
    return b(paramString, paramArrayOfString, null);
  }
  
  protected List<MessageCallEntityImpl> c(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    return b(paramString1, paramArrayOfString, paramString2, null);
  }
  
  /* Error */
  protected List<ParticipantEntityImpl> c(String paramString1, String[] paramArrayOfString, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: new 78	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 79	java/util/ArrayList:<init>	()V
    //   7: astore 5
    //   9: aload_0
    //   10: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 192
    //   15: getstatic 195	com/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   18: aload_1
    //   19: aload_2
    //   20: aload 4
    //   22: aconst_null
    //   23: aload_3
    //   24: aconst_null
    //   25: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   28: astore 8
    //   30: aload 8
    //   32: astore 7
    //   34: aload 7
    //   36: ifnull +48 -> 84
    //   39: aload 7
    //   41: invokeinterface 54 1 0
    //   46: ifeq +38 -> 84
    //   49: aload 5
    //   51: new 197	com/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl
    //   54: dup
    //   55: invokespecial 198	com/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl:<init>	()V
    //   58: aload 7
    //   60: iconst_0
    //   61: invokestatic 201	com/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    //   64: invokeinterface 69 2 0
    //   69: pop
    //   70: aload 7
    //   72: invokeinterface 72 1 0
    //   77: istore 10
    //   79: iload 10
    //   81: ifne -32 -> 49
    //   84: aload_0
    //   85: aload 7
    //   87: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   90: aload 5
    //   92: areturn
    //   93: astore 6
    //   95: aconst_null
    //   96: astore 7
    //   98: aload_0
    //   99: aload 7
    //   101: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   104: aload 6
    //   106: athrow
    //   107: astore 6
    //   109: goto -11 -> 98
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	ar
    //   0	112	1	paramString1	String
    //   0	112	2	paramArrayOfString	String[]
    //   0	112	3	paramString2	String
    //   0	112	4	paramString3	String
    //   7	84	5	localArrayList	java.util.ArrayList
    //   93	12	6	localObject1	Object
    //   107	1	6	localObject2	Object
    //   32	68	7	localCursor1	Cursor
    //   28	3	8	localCursor2	Cursor
    //   77	3	10	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   9	30	93	finally
    //   39	49	107	finally
    //   49	79	107	finally
  }
  
  protected List<MessageCallEntityImpl> d(String paramString, String[] paramArrayOfString)
  {
    return c(paramString, paramArrayOfString, null);
  }
  
  /* Error */
  protected List<ConversationEntityImpl> d(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    // Byte code:
    //   0: new 78	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 79	java/util/ArrayList:<init>	()V
    //   7: astore 4
    //   9: aload_0
    //   10: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 206
    //   15: getstatic 209	com/viber/voip/messages/orm/entity/impl/ConversationEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   18: aload_1
    //   19: aload_2
    //   20: aconst_null
    //   21: aconst_null
    //   22: aload_3
    //   23: aconst_null
    //   24: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   27: astore 7
    //   29: aload 7
    //   31: astore 6
    //   33: aload 6
    //   35: ifnull +48 -> 83
    //   38: aload 6
    //   40: invokeinterface 54 1 0
    //   45: ifeq +38 -> 83
    //   48: aload 4
    //   50: new 211	com/viber/voip/messages/orm/entity/impl/ConversationEntityImpl
    //   53: dup
    //   54: invokespecial 212	com/viber/voip/messages/orm/entity/impl/ConversationEntityImpl:<init>	()V
    //   57: aload 6
    //   59: iconst_0
    //   60: invokestatic 215	com/viber/voip/messages/orm/entity/impl/ConversationEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    //   63: invokeinterface 69 2 0
    //   68: pop
    //   69: aload 6
    //   71: invokeinterface 72 1 0
    //   76: istore 9
    //   78: iload 9
    //   80: ifne -32 -> 48
    //   83: aload_0
    //   84: aload 6
    //   86: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   89: aload 4
    //   91: areturn
    //   92: astore 5
    //   94: aconst_null
    //   95: astore 6
    //   97: aload_0
    //   98: aload 6
    //   100: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   103: aload 5
    //   105: athrow
    //   106: astore 5
    //   108: goto -11 -> 97
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	ar
    //   0	111	1	paramString1	String
    //   0	111	2	paramArrayOfString	String[]
    //   0	111	3	paramString2	String
    //   7	83	4	localArrayList	java.util.ArrayList
    //   92	12	5	localObject1	Object
    //   106	1	5	localObject2	Object
    //   31	68	6	localCursor1	Cursor
    //   27	3	7	localCursor2	Cursor
    //   76	3	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   9	29	92	finally
    //   38	48	106	finally
    //   48	78	106	finally
  }
  
  /* Error */
  protected ConversationEntityImpl e(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc 206
    //   9: getstatic 209	com/viber/voip/messages/orm/entity/impl/ConversationEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   12: aload_1
    //   13: aload_2
    //   14: aconst_null
    //   15: aconst_null
    //   16: aload_3
    //   17: ldc 134
    //   19: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   22: astore 6
    //   24: aload 6
    //   26: ifnull +41 -> 67
    //   29: aload 6
    //   31: invokeinterface 54 1 0
    //   36: ifeq +31 -> 67
    //   39: new 211	com/viber/voip/messages/orm/entity/impl/ConversationEntityImpl
    //   42: dup
    //   43: invokespecial 212	com/viber/voip/messages/orm/entity/impl/ConversationEntityImpl:<init>	()V
    //   46: aload 6
    //   48: iconst_0
    //   49: invokestatic 215	com/viber/voip/messages/orm/entity/impl/ConversationEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    //   52: astore 8
    //   54: aload 8
    //   56: astore 7
    //   58: aload_0
    //   59: aload 6
    //   61: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   64: aload 7
    //   66: areturn
    //   67: aconst_null
    //   68: astore 7
    //   70: goto -12 -> 58
    //   73: astore 5
    //   75: aload_0
    //   76: aload 4
    //   78: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   81: aload 5
    //   83: athrow
    //   84: astore 5
    //   86: aload 6
    //   88: astore 4
    //   90: goto -15 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	ar
    //   0	93	1	paramString1	String
    //   0	93	2	paramArrayOfString	String[]
    //   0	93	3	paramString2	String
    //   1	88	4	localObject1	Object
    //   73	9	5	localObject2	Object
    //   84	1	5	localObject3	Object
    //   22	65	6	localCursor	Cursor
    //   56	13	7	localConversationEntityImpl1	ConversationEntityImpl
    //   52	3	8	localConversationEntityImpl2	ConversationEntityImpl
    // Exception table:
    //   from	to	target	type
    //   3	24	73	finally
    //   29	54	84	finally
  }
  
  protected List<ConversationEntityImpl> e(String paramString, String[] paramArrayOfString)
  {
    return d(paramString, paramArrayOfString, null);
  }
  
  protected ConversationEntityImpl f(String paramString, String[] paramArrayOfString)
  {
    return e(paramString, paramArrayOfString, null);
  }
  
  protected List<ParticipantEntityImpl> f(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    return c(paramString1, paramArrayOfString, paramString2, null);
  }
  
  /* Error */
  protected ParticipantEntityImpl g(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc 192
    //   9: getstatic 195	com/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   12: aload_1
    //   13: aload_2
    //   14: aconst_null
    //   15: aconst_null
    //   16: aload_3
    //   17: ldc 134
    //   19: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   22: astore 6
    //   24: aload 6
    //   26: ifnull +41 -> 67
    //   29: aload 6
    //   31: invokeinterface 54 1 0
    //   36: ifeq +31 -> 67
    //   39: new 197	com/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl
    //   42: dup
    //   43: invokespecial 198	com/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl:<init>	()V
    //   46: aload 6
    //   48: iconst_0
    //   49: invokestatic 201	com/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    //   52: astore 8
    //   54: aload 8
    //   56: astore 7
    //   58: aload_0
    //   59: aload 6
    //   61: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   64: aload 7
    //   66: areturn
    //   67: aconst_null
    //   68: astore 7
    //   70: goto -12 -> 58
    //   73: astore 5
    //   75: aload_0
    //   76: aload 4
    //   78: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   81: aload 5
    //   83: athrow
    //   84: astore 5
    //   86: aload 6
    //   88: astore 4
    //   90: goto -15 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	ar
    //   0	93	1	paramString1	String
    //   0	93	2	paramArrayOfString	String[]
    //   0	93	3	paramString2	String
    //   1	88	4	localObject1	Object
    //   73	9	5	localObject2	Object
    //   84	1	5	localObject3	Object
    //   22	65	6	localCursor	Cursor
    //   56	13	7	localParticipantEntityImpl1	ParticipantEntityImpl
    //   52	3	8	localParticipantEntityImpl2	ParticipantEntityImpl
    // Exception table:
    //   from	to	target	type
    //   3	24	73	finally
    //   29	54	84	finally
  }
  
  protected List<ParticipantEntityImpl> g(String paramString, String[] paramArrayOfString)
  {
    return f(paramString, paramArrayOfString, null);
  }
  
  protected ParticipantEntityImpl h(String paramString, String[] paramArrayOfString)
  {
    return g(paramString, paramArrayOfString, null);
  }
  
  /* Error */
  protected List<ParticipantInfoEntityImpl> h(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    // Byte code:
    //   0: new 78	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 79	java/util/ArrayList:<init>	()V
    //   7: astore 4
    //   9: aload_0
    //   10: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 235
    //   15: getstatic 236	com/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   18: aload_1
    //   19: aload_2
    //   20: aconst_null
    //   21: aconst_null
    //   22: aload_3
    //   23: aconst_null
    //   24: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   27: astore 7
    //   29: aload 7
    //   31: astore 6
    //   33: aload_0
    //   34: aload 6
    //   36: aload 4
    //   38: invokevirtual 238	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;Ljava/util/List;)Ljava/util/List;
    //   41: astore 8
    //   43: aload_0
    //   44: aload 6
    //   46: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   49: aload 8
    //   51: areturn
    //   52: astore 5
    //   54: aconst_null
    //   55: astore 6
    //   57: aload_0
    //   58: aload 6
    //   60: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   63: aload 5
    //   65: athrow
    //   66: astore 5
    //   68: goto -11 -> 57
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	this	ar
    //   0	71	1	paramString1	String
    //   0	71	2	paramArrayOfString	String[]
    //   0	71	3	paramString2	String
    //   7	30	4	localArrayList	java.util.ArrayList
    //   52	12	5	localObject1	Object
    //   66	1	5	localObject2	Object
    //   31	28	6	localCursor1	Cursor
    //   27	3	7	localCursor2	Cursor
    //   41	9	8	localList	List
    // Exception table:
    //   from	to	target	type
    //   9	29	52	finally
    //   33	43	66	finally
  }
  
  protected ParticipantInfoEntityImpl i(String paramString, String[] paramArrayOfString)
  {
    return i(paramString, paramArrayOfString, null);
  }
  
  /* Error */
  protected ParticipantInfoEntityImpl i(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc 235
    //   9: getstatic 236	com/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   12: aload_1
    //   13: aload_2
    //   14: aconst_null
    //   15: aconst_null
    //   16: aload_3
    //   17: ldc 134
    //   19: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   22: astore 6
    //   24: aload 6
    //   26: ifnull +41 -> 67
    //   29: aload 6
    //   31: invokeinterface 54 1 0
    //   36: ifeq +31 -> 67
    //   39: new 56	com/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl
    //   42: dup
    //   43: invokespecial 57	com/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl:<init>	()V
    //   46: aload 6
    //   48: iconst_0
    //   49: invokestatic 63	com/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    //   52: astore 8
    //   54: aload 8
    //   56: astore 7
    //   58: aload_0
    //   59: aload 6
    //   61: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   64: aload 7
    //   66: areturn
    //   67: aconst_null
    //   68: astore 7
    //   70: goto -12 -> 58
    //   73: astore 5
    //   75: aload_0
    //   76: aload 4
    //   78: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   81: aload 5
    //   83: athrow
    //   84: astore 5
    //   86: aload 6
    //   88: astore 4
    //   90: goto -15 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	ar
    //   0	93	1	paramString1	String
    //   0	93	2	paramArrayOfString	String[]
    //   0	93	3	paramString2	String
    //   1	88	4	localObject1	Object
    //   73	9	5	localObject2	Object
    //   84	1	5	localObject3	Object
    //   22	65	6	localCursor	Cursor
    //   56	13	7	localParticipantInfoEntityImpl1	ParticipantInfoEntityImpl
    //   52	3	8	localParticipantInfoEntityImpl2	ParticipantInfoEntityImpl
    // Exception table:
    //   from	to	target	type
    //   3	24	73	finally
    //   29	54	84	finally
  }
  
  protected PublicGroupMessageInfoEntityImpl j(String paramString, String[] paramArrayOfString)
  {
    return j(paramString, paramArrayOfString, null);
  }
  
  /* Error */
  protected PublicGroupMessageInfoEntityImpl j(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc 250
    //   9: getstatic 253	com/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   12: aload_1
    //   13: aload_2
    //   14: aconst_null
    //   15: aconst_null
    //   16: aload_3
    //   17: ldc 134
    //   19: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   22: astore 6
    //   24: aload 6
    //   26: ifnull +41 -> 67
    //   29: aload 6
    //   31: invokeinterface 54 1 0
    //   36: ifeq +31 -> 67
    //   39: new 255	com/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl
    //   42: dup
    //   43: invokespecial 256	com/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl:<init>	()V
    //   46: aload 6
    //   48: iconst_0
    //   49: invokestatic 259	com/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;
    //   52: astore 8
    //   54: aload 8
    //   56: astore 7
    //   58: aload_0
    //   59: aload 6
    //   61: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   64: aload 7
    //   66: areturn
    //   67: aconst_null
    //   68: astore 7
    //   70: goto -12 -> 58
    //   73: astore 5
    //   75: aload_0
    //   76: aload 4
    //   78: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   81: aload 5
    //   83: athrow
    //   84: astore 5
    //   86: aload 6
    //   88: astore 4
    //   90: goto -15 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	ar
    //   0	93	1	paramString1	String
    //   0	93	2	paramArrayOfString	String[]
    //   0	93	3	paramString2	String
    //   1	88	4	localObject1	Object
    //   73	9	5	localObject2	Object
    //   84	1	5	localObject3	Object
    //   22	65	6	localCursor	Cursor
    //   56	13	7	localPublicGroupMessageInfoEntityImpl1	PublicGroupMessageInfoEntityImpl
    //   52	3	8	localPublicGroupMessageInfoEntityImpl2	PublicGroupMessageInfoEntityImpl
    // Exception table:
    //   from	to	target	type
    //   3	24	73	finally
    //   29	54	84	finally
  }
  
  protected PublicGroupConversationEntityImpl k(String paramString, String[] paramArrayOfString)
  {
    return k(paramString, paramArrayOfString, null);
  }
  
  /* Error */
  protected PublicGroupConversationEntityImpl k(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc_w 266
    //   10: getstatic 269	com/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   13: aload_1
    //   14: aload_2
    //   15: aconst_null
    //   16: aconst_null
    //   17: aload_3
    //   18: ldc 134
    //   20: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore 6
    //   25: aload 6
    //   27: ifnull +41 -> 68
    //   30: aload 6
    //   32: invokeinterface 54 1 0
    //   37: ifeq +31 -> 68
    //   40: new 271	com/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl
    //   43: dup
    //   44: invokespecial 272	com/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl:<init>	()V
    //   47: aload 6
    //   49: iconst_0
    //   50: invokestatic 275	com/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
    //   53: astore 8
    //   55: aload 8
    //   57: astore 7
    //   59: aload_0
    //   60: aload 6
    //   62: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   65: aload 7
    //   67: areturn
    //   68: aconst_null
    //   69: astore 7
    //   71: goto -12 -> 59
    //   74: astore 5
    //   76: aload_0
    //   77: aload 4
    //   79: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   82: aload 5
    //   84: athrow
    //   85: astore 5
    //   87: aload 6
    //   89: astore 4
    //   91: goto -15 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	ar
    //   0	94	1	paramString1	String
    //   0	94	2	paramArrayOfString	String[]
    //   0	94	3	paramString2	String
    //   1	89	4	localObject1	Object
    //   74	9	5	localObject2	Object
    //   85	1	5	localObject3	Object
    //   23	65	6	localCursor	Cursor
    //   57	13	7	localPublicGroupConversationEntityImpl1	PublicGroupConversationEntityImpl
    //   53	3	8	localPublicGroupConversationEntityImpl2	PublicGroupConversationEntityImpl
    // Exception table:
    //   from	to	target	type
    //   3	25	74	finally
    //   30	55	85	finally
  }
  
  /* Error */
  protected List<PublicGroupConversationEntityImpl> l(String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: new 78	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 79	java/util/ArrayList:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: invokevirtual 26	com/viber/voip/messages/controller/c/ar:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   12: ldc_w 266
    //   15: getstatic 269	com/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper:PROJECTIONS	[Ljava/lang/String;
    //   18: aload_1
    //   19: aload_2
    //   20: aconst_null
    //   21: aconst_null
    //   22: aconst_null
    //   23: aconst_null
    //   24: invokevirtual 91	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   27: astore 6
    //   29: aload 6
    //   31: astore 5
    //   33: aload 5
    //   35: ifnull +47 -> 82
    //   38: aload 5
    //   40: invokeinterface 54 1 0
    //   45: ifeq +37 -> 82
    //   48: aload_3
    //   49: new 271	com/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl
    //   52: dup
    //   53: invokespecial 272	com/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl:<init>	()V
    //   56: aload 5
    //   58: iconst_0
    //   59: invokestatic 275	com/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper:createEntity	(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
    //   62: invokeinterface 69 2 0
    //   67: pop
    //   68: aload 5
    //   70: invokeinterface 72 1 0
    //   75: istore 8
    //   77: iload 8
    //   79: ifne -31 -> 48
    //   82: aload_0
    //   83: aload 5
    //   85: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   88: aload_3
    //   89: areturn
    //   90: astore 4
    //   92: aconst_null
    //   93: astore 5
    //   95: aload_0
    //   96: aload 5
    //   98: invokevirtual 100	com/viber/voip/messages/controller/c/ar:a	(Landroid/database/Cursor;)V
    //   101: aload 4
    //   103: athrow
    //   104: astore 4
    //   106: goto -11 -> 95
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	ar
    //   0	109	1	paramString	String
    //   0	109	2	paramArrayOfString	String[]
    //   7	82	3	localArrayList	java.util.ArrayList
    //   90	12	4	localObject1	Object
    //   104	1	4	localObject2	Object
    //   31	66	5	localCursor1	Cursor
    //   27	3	6	localCursor2	Cursor
    //   75	3	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   8	29	90	finally
    //   38	48	104	finally
    //   48	77	104	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.ar
 * JD-Core Version:    0.7.0.1
 */