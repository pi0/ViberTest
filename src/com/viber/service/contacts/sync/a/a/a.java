package com.viber.service.contacts.sync.a.a;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.ContactsContract.Groups;
import android.text.TextUtils;
import com.viber.service.contacts.sync.a.c;
import com.viber.voip.util.al;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class a
  implements com.viber.service.contacts.sync.a.b
{
  private final Context a;
  private final String b;
  private final String c;
  private final String d;
  private final com.viber.service.contacts.sync.c.b e;
  private long f;
  private m g;
  private c h;
  
  public a(Context paramContext, com.viber.service.contacts.sync.c.b paramb, String paramString1, String paramString2)
  {
    this(paramContext, paramb, paramString1, paramString2, null);
  }
  
  public a(Context paramContext, com.viber.service.contacts.sync.c.b paramb, String paramString1, String paramString2, String paramString3)
  {
    this.a = paramContext;
    this.c = paramString1;
    this.b = paramString2;
    this.d = paramString3;
    this.e = paramb;
    this.h = new c(this);
  }
  
  private List<l> a(Context paramContext)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    ArrayList localArrayList = new ArrayList();
    try
    {
      Cursor localCursor2 = localContentResolver.query(k.a, k.b, "phonebookcontact.has_number=1", null, null);
      Cursor localCursor1 = localCursor2;
      if (localCursor1 != null) {}
      boolean bool;
      al.a(localCursor1);
    }
    finally
    {
      try
      {
        if (localCursor1.moveToFirst()) {
          do
          {
            localArrayList.add(new l(localCursor1));
            bool = localCursor1.moveToNext();
          } while (bool);
        }
        al.a(localCursor1);
        return localArrayList;
      }
      finally
      {
        break label90;
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    label90:
    throw localObject1;
  }
  
  /* Error */
  private Set<Long> a(Context paramContext, m paramm)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 52	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_3
    //   5: new 100	java/util/HashSet
    //   8: dup
    //   9: invokespecial 101	java/util/HashSet:<init>	()V
    //   12: astore 4
    //   14: getstatic 104	com/viber/service/contacts/sync/a/a/c:a	Landroid/net/Uri;
    //   17: astore 7
    //   19: getstatic 105	com/viber/service/contacts/sync/a/a/c:b	[Ljava/lang/String;
    //   22: astore 8
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: astore 9
    //   30: aload 9
    //   32: iconst_0
    //   33: aload_2
    //   34: getfield 108	com/viber/service/contacts/sync/a/a/m:d	Ljava/lang/String;
    //   37: aastore
    //   38: ldc 110
    //   40: aload 9
    //   42: invokestatic 116	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   45: astore 10
    //   47: iconst_1
    //   48: anewarray 112	java/lang/String
    //   51: astore 11
    //   53: aload 11
    //   55: iconst_0
    //   56: aload_0
    //   57: getfield 34	com/viber/service/contacts/sync/a/a/a:b	Ljava/lang/String;
    //   60: aastore
    //   61: aload_3
    //   62: aload 7
    //   64: aload 8
    //   66: aload 10
    //   68: aload 11
    //   70: aconst_null
    //   71: invokevirtual 71	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   74: astore 12
    //   76: aload 12
    //   78: astore 6
    //   80: aload 6
    //   82: ifnull +87 -> 169
    //   85: aload 6
    //   87: invokeinterface 120 1 0
    //   92: aload_2
    //   93: getfield 123	com/viber/service/contacts/sync/a/a/m:c	Ljava/util/Set;
    //   96: invokeinterface 128 1 0
    //   101: if_icmpeq +68 -> 169
    //   104: aload 4
    //   106: aload_2
    //   107: getfield 123	com/viber/service/contacts/sync/a/a/m:c	Ljava/util/Set;
    //   110: invokeinterface 132 2 0
    //   115: pop
    //   116: aload 6
    //   118: invokeinterface 77 1 0
    //   123: istore 14
    //   125: iload 14
    //   127: ifeq +42 -> 169
    //   130: aload 4
    //   132: aload 6
    //   134: iconst_0
    //   135: invokeinterface 136 2 0
    //   140: invokestatic 142	java/lang/Long:valueOf	(Ljava/lang/String;)Ljava/lang/Long;
    //   143: invokevirtual 146	java/lang/Long:longValue	()J
    //   146: invokestatic 149	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   149: invokeinterface 152 2 0
    //   154: pop
    //   155: aload 6
    //   157: invokeinterface 91 1 0
    //   162: istore 16
    //   164: iload 16
    //   166: ifne -36 -> 130
    //   169: aload 6
    //   171: invokestatic 95	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   174: aload 4
    //   176: areturn
    //   177: astore 5
    //   179: aconst_null
    //   180: astore 6
    //   182: aload 6
    //   184: invokestatic 95	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   187: aload 5
    //   189: athrow
    //   190: astore 5
    //   192: goto -10 -> 182
    //   195: astore 15
    //   197: goto -42 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	200	0	this	a
    //   0	200	1	paramContext	Context
    //   0	200	2	paramm	m
    //   4	58	3	localContentResolver	ContentResolver
    //   12	163	4	localHashSet	HashSet
    //   177	11	5	localObject1	Object
    //   190	1	5	localObject2	Object
    //   78	105	6	localCursor1	Cursor
    //   17	46	7	localUri	Uri
    //   22	43	8	arrayOfString1	String[]
    //   28	13	9	arrayOfObject	Object[]
    //   45	22	10	str	String
    //   51	18	11	arrayOfString2	String[]
    //   74	3	12	localCursor2	Cursor
    //   123	3	14	bool1	boolean
    //   195	1	15	localNumberFormatException	java.lang.NumberFormatException
    //   162	3	16	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   14	76	177	finally
    //   85	125	190	finally
    //   130	155	190	finally
    //   155	164	190	finally
    //   130	155	195	java/lang/NumberFormatException
  }
  
  private void a(Context paramContext, long paramLong, String paramString, Set<Long> paramSet, Map<Long, Long> paramMap, boolean paramBoolean)
  {
    com.viber.service.contacts.a locala = new com.viber.service.contacts.a(paramContext);
    ContentResolver localContentResolver = paramContext.getContentResolver();
    int i = 0;
    label314:
    for (;;)
    {
      try
      {
        Uri localUri = g.a;
        String[] arrayOfString = g.b;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = com.viber.voip.i.a.c(paramSet);
        Cursor localCursor2 = localContentResolver.query(localUri, arrayOfString, String.format("phonebookcontact._id IN (SELECT phonebookrawcontact.contact_id FROM phonebookrawcontact WHERE phonebookrawcontact._id IN (%s)) AND phonebookdata.mime_type=0", arrayOfObject), null, "phonebookcontact._id");
        if (localCursor2 != null) {}
        Object localObject3;
        long l;
        boolean bool2;
        int m;
        int k;
        h localh;
        boolean bool1;
        Cursor localCursor1;
        int j = 0;
      }
      finally
      {
        try
        {
          if (!localCursor2.moveToFirst()) {
            break label314;
          }
          localObject3 = null;
          l = localCursor2.getLong(0);
          if ((localObject3 != null) && (((h)localObject3).b != l))
          {
            if (a(paramContext, paramLong, paramString, locala, (h)localObject3, paramMap, paramBoolean))
            {
              bool2 = this.h.b();
              m = 0;
              if (!bool2)
              {
                k = 1;
                if ((localObject3 != null) && (k == 0)) {
                  a(paramContext, paramLong, paramString, locala, (h)localObject3, paramMap, paramBoolean);
                }
                j = k;
                al.a(localCursor2);
                if (j == 0) {
                  locala.b();
                }
              }
            }
            else
            {
              m = i;
            }
            localObject3 = null;
            i = m;
          }
          if ((localObject3 == null) || (((h)localObject3).b != l))
          {
            localh = new h(l, localCursor2.getLong(1), localCursor2.getInt(2), localCursor2.getString(3));
            i++;
            localObject3 = localh;
          }
          ((h)localObject3).a(localCursor2);
          bool1 = localCursor2.moveToNext();
          if (bool1) {
            continue;
          }
          k = 0;
          continue;
          localObject1 = finally;
          localCursor1 = null;
        }
        finally
        {
          localCursor1 = localCursor2;
          continue;
        }
        al.a(localCursor1);
        throw localObject1;
      }
    }
  }
  
  private boolean a(Context paramContext, long paramLong, String paramString, com.viber.service.contacts.a parama, h paramh, Map<Long, Long> paramMap, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Long localLong = (Long)paramMap.get(Long.valueOf(paramh.a));
      if (localLong != null) {
        this.e.a(paramContext, parama, localLong.longValue(), paramh.e, a(paramh), paramh.g, paramh.f);
      }
    }
    while (parama.a() >= 100)
    {
      parama.b();
      return true;
      this.e.a(paramContext, parama, paramh.a, paramh.e, a(paramh), paramh.g, paramh.f, paramLong, paramString);
    }
    return false;
  }
  
  /* Error */
  private boolean a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 52	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_3
    //   5: getstatic 226	com/viber/service/contacts/sync/a/a/e:a	Landroid/net/Uri;
    //   8: astore 6
    //   10: getstatic 227	com/viber/service/contacts/sync/a/a/e:b	[Ljava/lang/String;
    //   13: astore 7
    //   15: ldc 229
    //   17: iconst_1
    //   18: anewarray 4	java/lang/Object
    //   21: dup
    //   22: iconst_0
    //   23: aload_2
    //   24: aastore
    //   25: invokestatic 116	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   28: astore 8
    //   30: iconst_1
    //   31: anewarray 112	java/lang/String
    //   34: astore 9
    //   36: aload 9
    //   38: iconst_0
    //   39: aload_0
    //   40: getfield 34	com/viber/service/contacts/sync/a/a/a:b	Ljava/lang/String;
    //   43: aastore
    //   44: aload_3
    //   45: aload 6
    //   47: aload 7
    //   49: aload 8
    //   51: aload 9
    //   53: aconst_null
    //   54: invokevirtual 71	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   57: astore 10
    //   59: aload 10
    //   61: astore 5
    //   63: aload 5
    //   65: ifnull +34 -> 99
    //   68: aload 5
    //   70: invokeinterface 120 1 0
    //   75: istore 11
    //   77: iload 11
    //   79: ifle +14 -> 93
    //   82: iconst_1
    //   83: istore 12
    //   85: aload 5
    //   87: invokestatic 95	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   90: iload 12
    //   92: ireturn
    //   93: iconst_0
    //   94: istore 12
    //   96: goto -11 -> 85
    //   99: aload 5
    //   101: invokestatic 95	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   104: iconst_1
    //   105: ireturn
    //   106: astore 4
    //   108: aconst_null
    //   109: astore 5
    //   111: aload 5
    //   113: invokestatic 95	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   116: aload 4
    //   118: athrow
    //   119: astore 4
    //   121: goto -10 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	124	0	this	a
    //   0	124	1	paramContext	Context
    //   0	124	2	paramString	String
    //   4	41	3	localContentResolver	ContentResolver
    //   106	11	4	localObject1	Object
    //   119	1	4	localObject2	Object
    //   61	51	5	localCursor1	Cursor
    //   8	38	6	localUri	Uri
    //   13	35	7	arrayOfString1	String[]
    //   28	22	8	str	String
    //   34	18	9	arrayOfString2	String[]
    //   57	3	10	localCursor2	Cursor
    //   75	3	11	i	int
    //   83	12	12	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   5	59	106	finally
    //   68	77	119	finally
  }
  
  private int b(Context paramContext, m paramm)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    com.viber.service.contacts.a locala = new com.viber.service.contacts.a(paramContext);
    label287:
    for (;;)
    {
      try
      {
        Uri localUri = i.a;
        String[] arrayOfString1 = i.b;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramm.f;
        arrayOfObject[1] = paramm.f;
        String str1 = String.format("account_type=? AND (((mimetype=? OR mimetype=? OR mimetype=?) AND data1 NOT IN (%s)) OR (mimetype=? AND data1 IN (%s)))", arrayOfObject);
        String[] arrayOfString2 = new String[5];
        arrayOfString2[0] = this.b;
        arrayOfString2[1] = "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_viber";
        arrayOfString2[2] = "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call";
        arrayOfString2[3] = "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message";
        arrayOfString2[4] = "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_none_viber";
        Cursor localCursor2 = localContentResolver.query(localUri, arrayOfString1, str1, arrayOfString2, null);
        if (localCursor2 != null) {}
        int j;
        long l1;
        long l2;
        String str2;
        String str3;
        boolean bool2;
        boolean bool1;
        Cursor localCursor1;
        int i = 0;
      }
      finally
      {
        try
        {
          if (!localCursor2.moveToFirst()) {
            break label287;
          }
          j = localCursor2.getCount();
          l1 = localCursor2.getLong(0);
          l2 = localCursor2.getLong(1);
          str2 = localCursor2.getString(3);
          str3 = localCursor2.getString(2);
          this.e.a(this.a, locala, l1, l2, str2, str3);
          if (locala.a() > 100)
          {
            bool2 = this.h.b();
            if (!bool2)
            {
              i = j;
              al.a(localCursor2);
              locala.b();
              return i;
            }
            locala.b();
          }
          bool1 = localCursor2.moveToNext();
          if (bool1) {
            continue;
          }
          i = j;
          continue;
          localObject1 = finally;
          localCursor1 = null;
        }
        finally
        {
          localCursor1 = localCursor2;
          continue;
        }
        al.a(localCursor1);
        throw localObject1;
      }
    }
  }
  
  private int b(Context paramContext, String paramString)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    Uri localUri = e.a;
    String str = String.format("account_type=? AND sourceid NOT IN (%s)", new Object[] { paramString });
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.b;
    return localContentResolver.delete(localUri, str, arrayOfString);
  }
  
  private Set<String> b(Context paramContext)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    HashSet localHashSet = new HashSet();
    try
    {
      Cursor localCursor2 = localContentResolver.query(j.a, j.b, j.c, null, null);
      Cursor localCursor1 = localCursor2;
      if (localCursor1 != null) {}
      boolean bool;
      al.a(localCursor1);
    }
    finally
    {
      try
      {
        if (localCursor1.moveToFirst()) {
          do
          {
            localHashSet.add(localCursor1.getString(0));
            bool = localCursor1.moveToNext();
          } while (bool);
        }
        al.a(localCursor1);
        return localHashSet;
      }
      finally
      {
        break label90;
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    label90:
    throw localObject1;
  }
  
  /* Error */
  private Map<Long, Long> c(Context paramContext, m paramm)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 52	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_3
    //   5: new 264	java/util/HashMap
    //   8: dup
    //   9: invokespecial 265	java/util/HashMap:<init>	()V
    //   12: astore 4
    //   14: getstatic 268	com/viber/service/contacts/sync/a/a/f:a	Landroid/net/Uri;
    //   17: astore 7
    //   19: getstatic 269	com/viber/service/contacts/sync/a/a/f:b	[Ljava/lang/String;
    //   22: astore 8
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: astore 9
    //   30: aload 9
    //   32: iconst_0
    //   33: aload_2
    //   34: getfield 270	com/viber/service/contacts/sync/a/a/m:e	Ljava/lang/String;
    //   37: aastore
    //   38: ldc_w 272
    //   41: aload 9
    //   43: invokestatic 116	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   46: astore 10
    //   48: iconst_1
    //   49: anewarray 112	java/lang/String
    //   52: astore 11
    //   54: aload 11
    //   56: iconst_0
    //   57: aload_0
    //   58: getfield 34	com/viber/service/contacts/sync/a/a/a:b	Ljava/lang/String;
    //   61: aastore
    //   62: aload_3
    //   63: aload 7
    //   65: aload 8
    //   67: aload 10
    //   69: aload 11
    //   71: aconst_null
    //   72: invokevirtual 71	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   75: astore 12
    //   77: aload 12
    //   79: astore 6
    //   81: aload 6
    //   83: ifnull +71 -> 154
    //   86: aload 6
    //   88: invokeinterface 77 1 0
    //   93: istore 13
    //   95: iload 13
    //   97: ifeq +57 -> 154
    //   100: aload 6
    //   102: iconst_0
    //   103: invokeinterface 175 2 0
    //   108: lstore 16
    //   110: aload 4
    //   112: aload 6
    //   114: iconst_1
    //   115: invokeinterface 136 2 0
    //   120: invokestatic 142	java/lang/Long:valueOf	(Ljava/lang/String;)Ljava/lang/Long;
    //   123: invokevirtual 146	java/lang/Long:longValue	()J
    //   126: invokestatic 149	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   129: lload 16
    //   131: invokestatic 149	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   134: invokeinterface 276 3 0
    //   139: pop
    //   140: aload 6
    //   142: invokeinterface 91 1 0
    //   147: istore 15
    //   149: iload 15
    //   151: ifne -51 -> 100
    //   154: aload 6
    //   156: invokestatic 95	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   159: aload 4
    //   161: areturn
    //   162: astore 5
    //   164: aconst_null
    //   165: astore 6
    //   167: aload 6
    //   169: invokestatic 95	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   172: aload 5
    //   174: athrow
    //   175: astore 5
    //   177: goto -10 -> 167
    //   180: astore 14
    //   182: goto -42 -> 140
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	185	0	this	a
    //   0	185	1	paramContext	Context
    //   0	185	2	paramm	m
    //   4	59	3	localContentResolver	ContentResolver
    //   12	148	4	localHashMap	java.util.HashMap
    //   162	11	5	localObject1	Object
    //   175	1	5	localObject2	Object
    //   79	89	6	localCursor1	Cursor
    //   17	47	7	localUri	Uri
    //   22	44	8	arrayOfString1	String[]
    //   28	14	9	arrayOfObject	Object[]
    //   46	22	10	str	String
    //   52	18	11	arrayOfString2	String[]
    //   75	3	12	localCursor2	Cursor
    //   93	3	13	bool1	boolean
    //   180	1	14	localNumberFormatException	java.lang.NumberFormatException
    //   147	3	15	bool2	boolean
    //   108	22	16	l	long
    // Exception table:
    //   from	to	target	type
    //   14	77	162	finally
    //   86	95	175	finally
    //   100	140	175	finally
    //   140	149	175	finally
    //   100	140	180	java/lang/NumberFormatException
  }
  
  private boolean c(Context paramContext)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    try
    {
      Uri localUri = b.a;
      String[] arrayOfString1 = b.b;
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = this.b;
      Cursor localCursor2 = localContentResolver.query(localUri, arrayOfString1, "account_type=? AND dirty=1", arrayOfString2, null);
      Cursor localCursor1 = localCursor2;
      if (localCursor1 != null) {}
      int i;
      boolean bool;
      al.a(localCursor1);
    }
    finally
    {
      try
      {
        i = localCursor1.getCount();
        if (i > 0) {}
        for (bool = true;; bool = false)
        {
          al.a(localCursor1);
          return bool;
        }
        al.a(localCursor1);
        return true;
      }
      finally {}
      localObject1 = finally;
      localCursor1 = null;
    }
    throw localObject1;
  }
  
  private int d(Context paramContext)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("dirty", Integer.valueOf(0));
    Uri localUri = b.a;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.b;
    return localContentResolver.update(localUri, localContentValues, "account_type=? AND dirty=1", arrayOfString);
  }
  
  @TargetApi(11)
  public long a(Context paramContext, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return 0L;
    }
    ContentResolver localContentResolver = paramContext.getContentResolver();
    label206:
    for (;;)
    {
      try
      {
        Uri localUri = d.a;
        String[] arrayOfString1 = d.b;
        String[] arrayOfString2 = new String[3];
        arrayOfString2[0] = paramString2;
        arrayOfString2[1] = this.b;
        arrayOfString2[2] = paramString1;
        Cursor localCursor2 = localContentResolver.query(localUri, arrayOfString1, "account_name=? AND account_type=? AND title=?", arrayOfString2, null);
        if (localCursor2 != null) {}
        long l2;
        ContentValues localContentValues;
        Cursor localCursor1;
        long l1 = 0L;
      }
      finally
      {
        try
        {
          if (!localCursor2.moveToFirst()) {
            break label206;
          }
          l2 = localCursor2.getLong(0);
          l1 = l2;
          al.a(localCursor2);
          if (l1 == 0L)
          {
            localContentValues = new ContentValues();
            localContentValues.put("account_name", paramString2);
            localContentValues.put("account_type", this.b);
            localContentValues.put("title", paramString1);
            if (Build.VERSION.SDK_INT >= 11) {
              localContentValues.put("group_is_read_only", Integer.valueOf(1));
            }
            l1 = ContentUris.parseId(localContentResolver.insert(ContactsContract.Groups.CONTENT_URI, localContentValues));
          }
          return l1;
        }
        finally
        {
          localCursor1 = localCursor2;
        }
        localObject1 = finally;
        localCursor1 = null;
        al.a(localCursor1);
      }
    }
  }
  
  protected abstract String a(h paramh);
  
  protected abstract String a(l paraml);
  
  public boolean a()
  {
    return this.h.a();
  }
  
  public void b()
  {
    this.f = a(this.a, this.d, this.c);
    this.g = new m(this, a(this.a), b(this.a));
  }
  
  public void c()
  {
    if (this.g == null) {}
    while (!a(this.a, this.g.d)) {
      return;
    }
    b(this.a, this.g.d);
  }
  
  public void d()
  {
    if (this.g == null) {}
    Set localSet;
    do
    {
      return;
      localSet = a(this.a, this.g);
    } while (localSet.size() <= 0);
    a(this.a, this.f, this.c, localSet, null, false);
  }
  
  public void e()
  {
    if (c(this.a)) {
      d(this.a);
    }
    this.f = 0L;
    this.g = null;
  }
  
  public void f()
  {
    if (this.g == null) {
      return;
    }
    Map localMap = c(this.a, this.g);
    if (localMap.size() != 0) {
      a(this.a, this.f, this.c, localMap.keySet(), localMap, true);
    }
    b(this.a, this.g);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.sync.a.a.a
 * JD-Core Version:    0.7.0.1
 */