package com.viber.voip.i.a;

import android.database.sqlite.SQLiteQueryBuilder;

public class c
  extends SQLiteQueryBuilder
{
  private void a(String paramString) {}
  
  private String[] a(String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[-1 + paramArrayOfString.length];
    for (int i = 1; i < paramArrayOfString.length; i++) {
      arrayOfString[(i - 1)] = paramArrayOfString[i];
    }
    return arrayOfString;
  }
  
  /* Error */
  public android.database.Cursor query(android.database.sqlite.SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 22	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   4: aload_3
    //   5: invokestatic 28	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   8: ifeq +96 -> 104
    //   11: ldc 30
    //   13: astore 9
    //   15: aload 4
    //   17: iconst_4
    //   18: invokestatic 35	com/viber/voip/i/a:a	([Ljava/lang/String;I)[Ljava/lang/String;
    //   21: astore 10
    //   23: aload_2
    //   24: invokestatic 39	com/viber/voip/i/a:b	([Ljava/lang/String;)Ljava/lang/String;
    //   27: astore 11
    //   29: ldc 41
    //   31: bipush 8
    //   33: anewarray 43	java/lang/Object
    //   36: dup
    //   37: iconst_0
    //   38: aload 11
    //   40: aastore
    //   41: dup
    //   42: iconst_1
    //   43: aload 9
    //   45: aastore
    //   46: dup
    //   47: iconst_2
    //   48: aload 11
    //   50: aastore
    //   51: dup
    //   52: iconst_3
    //   53: aload 9
    //   55: aastore
    //   56: dup
    //   57: iconst_4
    //   58: aload 11
    //   60: aastore
    //   61: dup
    //   62: iconst_5
    //   63: aload 9
    //   65: aastore
    //   66: dup
    //   67: bipush 6
    //   69: aload 11
    //   71: aastore
    //   72: dup
    //   73: bipush 7
    //   75: aload 9
    //   77: aastore
    //   78: invokestatic 47	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   81: astore 12
    //   83: aload_1
    //   84: aload 12
    //   86: aload 10
    //   88: invokevirtual 51	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   91: astore 14
    //   93: aload_1
    //   94: invokevirtual 54	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   97: aload_1
    //   98: invokevirtual 57	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   101: aload 14
    //   103: areturn
    //   104: invokestatic 63	com/viber/voip/ViberApplication:isTablet	()Z
    //   107: ifne +68 -> 175
    //   110: aload 4
    //   112: ifnull +63 -> 175
    //   115: aload 4
    //   117: arraylength
    //   118: ifeq +57 -> 175
    //   121: new 65	java/util/HashSet
    //   124: dup
    //   125: invokespecial 66	java/util/HashSet:<init>	()V
    //   128: astore 15
    //   130: aload 4
    //   132: iconst_0
    //   133: aaload
    //   134: invokevirtual 70	java/lang/String:trim	()Ljava/lang/String;
    //   137: invokevirtual 73	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   140: invokestatic 78	com/viber/voip/util/a/g:a	(Ljava/lang/String;)Ljava/lang/String;
    //   143: astore 16
    //   145: aload 16
    //   147: invokestatic 28	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   150: ifeq +54 -> 204
    //   153: aload_3
    //   154: iconst_1
    //   155: anewarray 43	java/lang/Object
    //   158: dup
    //   159: iconst_0
    //   160: ldc 80
    //   162: aastore
    //   163: invokestatic 47	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   166: astore_3
    //   167: aload_0
    //   168: aload 4
    //   170: invokespecial 82	com/viber/voip/i/a/c:a	([Ljava/lang/String;)[Ljava/lang/String;
    //   173: astore 4
    //   175: new 84	java/lang/StringBuilder
    //   178: dup
    //   179: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   182: ldc 87
    //   184: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: aload_3
    //   188: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: ldc 93
    //   193: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   199: astore 9
    //   201: goto -186 -> 15
    //   204: aload 16
    //   206: invokestatic 102	com/viber/voip/util/a/f:l	(Ljava/lang/String;)Z
    //   209: istore 17
    //   211: aconst_null
    //   212: astore 18
    //   214: iload 17
    //   216: ifeq +140 -> 356
    //   219: new 84	java/lang/StringBuilder
    //   222: dup
    //   223: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   226: ldc 104
    //   228: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: aload 16
    //   233: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: ldc 104
    //   238: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   244: astore 19
    //   246: iconst_3
    //   247: anewarray 13	java/lang/String
    //   250: dup
    //   251: iconst_0
    //   252: ldc 106
    //   254: aastore
    //   255: dup
    //   256: iconst_1
    //   257: aload 19
    //   259: aastore
    //   260: dup
    //   261: iconst_2
    //   262: aload 19
    //   264: aastore
    //   265: astore 20
    //   267: invokestatic 110	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   270: invokevirtual 114	com/viber/voip/ViberApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   273: getstatic 120	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   276: iconst_1
    //   277: anewarray 13	java/lang/String
    //   280: dup
    //   281: iconst_0
    //   282: ldc 122
    //   284: aastore
    //   285: ldc 124
    //   287: aload 20
    //   289: aconst_null
    //   290: invokevirtual 129	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   293: astore 23
    //   295: aload 23
    //   297: astore 22
    //   299: aload 22
    //   301: ifnull +46 -> 347
    //   304: aload 22
    //   306: invokeinterface 134 1 0
    //   311: ifeq +36 -> 347
    //   314: aload 15
    //   316: aload 22
    //   318: iconst_0
    //   319: invokeinterface 138 2 0
    //   324: invokestatic 144	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   327: invokeinterface 150 2 0
    //   332: pop
    //   333: aload 22
    //   335: invokeinterface 153 1 0
    //   340: istore 34
    //   342: iload 34
    //   344: ifne -30 -> 314
    //   347: aload 22
    //   349: invokestatic 158	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   352: aload 22
    //   354: astore 18
    //   356: getstatic 163	android/provider/ContactsContract$Contacts:CONTENT_FILTER_URI	Landroid/net/Uri;
    //   359: invokevirtual 169	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   362: astore 24
    //   364: aload 24
    //   366: aload 16
    //   368: invokevirtual 175	android/net/Uri$Builder:appendPath	(Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   371: pop
    //   372: invokestatic 110	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   375: invokevirtual 114	com/viber/voip/ViberApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   378: aload 24
    //   380: invokevirtual 179	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   383: iconst_1
    //   384: anewarray 13	java/lang/String
    //   387: dup
    //   388: iconst_0
    //   389: ldc 181
    //   391: aastore
    //   392: aconst_null
    //   393: aconst_null
    //   394: aconst_null
    //   395: invokevirtual 129	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   398: astore 29
    //   400: aload 29
    //   402: astore 27
    //   404: aload 27
    //   406: ifnull +100 -> 506
    //   409: aload 27
    //   411: invokeinterface 134 1 0
    //   416: ifeq +90 -> 506
    //   419: aload 15
    //   421: aload 27
    //   423: iconst_0
    //   424: invokeinterface 138 2 0
    //   429: invokestatic 144	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   432: invokeinterface 150 2 0
    //   437: pop
    //   438: aload 27
    //   440: invokeinterface 153 1 0
    //   445: ifne -26 -> 419
    //   448: aload_3
    //   449: iconst_1
    //   450: anewarray 43	java/lang/Object
    //   453: dup
    //   454: iconst_0
    //   455: aload 15
    //   457: invokestatic 185	com/viber/voip/i/a:c	(Ljava/util/Collection;)Ljava/lang/String;
    //   460: aastore
    //   461: invokestatic 47	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   464: astore 32
    //   466: aload 32
    //   468: astore_3
    //   469: aload 27
    //   471: invokestatic 158	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   474: aload_0
    //   475: aload 4
    //   477: invokespecial 82	com/viber/voip/i/a/c:a	([Ljava/lang/String;)[Ljava/lang/String;
    //   480: astore 4
    //   482: goto -307 -> 175
    //   485: aload 22
    //   487: invokestatic 158	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   490: aload 21
    //   492: athrow
    //   493: astore 8
    //   495: aload_1
    //   496: invokevirtual 54	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   499: aload_1
    //   500: invokevirtual 57	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   503: aload 8
    //   505: athrow
    //   506: aload 15
    //   508: invokeinterface 189 1 0
    //   513: ifne +20 -> 533
    //   516: aload_3
    //   517: iconst_1
    //   518: anewarray 43	java/lang/Object
    //   521: dup
    //   522: iconst_0
    //   523: ldc 80
    //   525: aastore
    //   526: invokestatic 47	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   529: astore_3
    //   530: goto -61 -> 469
    //   533: aload_3
    //   534: iconst_1
    //   535: anewarray 43	java/lang/Object
    //   538: dup
    //   539: iconst_0
    //   540: aload 15
    //   542: invokestatic 185	com/viber/voip/i/a:c	(Ljava/util/Collection;)Ljava/lang/String;
    //   545: aastore
    //   546: invokestatic 47	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   549: astore 30
    //   551: aload 30
    //   553: astore_3
    //   554: goto -85 -> 469
    //   557: astore 26
    //   559: aload 18
    //   561: astore 27
    //   563: aload 27
    //   565: invokestatic 158	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   568: aload_0
    //   569: aload 4
    //   571: invokespecial 82	com/viber/voip/i/a/c:a	([Ljava/lang/String;)[Ljava/lang/String;
    //   574: pop
    //   575: aload 26
    //   577: athrow
    //   578: astore 13
    //   580: aload_0
    //   581: aload 13
    //   583: invokevirtual 192	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   586: invokespecial 194	com/viber/voip/i/a/c:a	(Ljava/lang/String;)V
    //   589: aload_1
    //   590: invokevirtual 54	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   593: aload_1
    //   594: invokevirtual 57	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   597: aconst_null
    //   598: areturn
    //   599: astore 26
    //   601: goto -38 -> 563
    //   604: astore 21
    //   606: goto -121 -> 485
    //   609: astore 21
    //   611: aconst_null
    //   612: astore 22
    //   614: goto -129 -> 485
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	617	0	this	c
    //   0	617	1	paramSQLiteDatabase	android.database.sqlite.SQLiteDatabase
    //   0	617	2	paramArrayOfString1	String[]
    //   0	617	3	paramString1	String
    //   0	617	4	paramArrayOfString2	String[]
    //   0	617	5	paramString2	String
    //   0	617	6	paramString3	String
    //   0	617	7	paramString4	String
    //   493	11	8	localObject1	java.lang.Object
    //   13	187	9	str1	String
    //   21	66	10	arrayOfString1	String[]
    //   27	43	11	str2	String
    //   81	4	12	str3	String
    //   578	4	13	localException	java.lang.Exception
    //   91	11	14	localCursor1	android.database.Cursor
    //   128	413	15	localHashSet	java.util.HashSet
    //   143	224	16	str4	String
    //   209	6	17	bool1	boolean
    //   212	348	18	localObject2	java.lang.Object
    //   244	19	19	str5	String
    //   265	23	20	arrayOfString2	String[]
    //   490	1	21	localObject3	java.lang.Object
    //   604	1	21	localObject4	java.lang.Object
    //   609	1	21	localObject5	java.lang.Object
    //   297	316	22	localCursor2	android.database.Cursor
    //   293	3	23	localCursor3	android.database.Cursor
    //   362	17	24	localBuilder	android.net.Uri.Builder
    //   557	19	26	localObject6	java.lang.Object
    //   599	1	26	localObject7	java.lang.Object
    //   402	162	27	localObject8	java.lang.Object
    //   398	3	29	localCursor4	android.database.Cursor
    //   549	3	30	str6	String
    //   464	3	32	str7	String
    //   340	3	34	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   4	11	493	finally
    //   15	83	493	finally
    //   83	93	493	finally
    //   104	110	493	finally
    //   115	175	493	finally
    //   175	201	493	finally
    //   204	211	493	finally
    //   219	267	493	finally
    //   347	352	493	finally
    //   356	372	493	finally
    //   469	482	493	finally
    //   485	493	493	finally
    //   563	578	493	finally
    //   580	589	493	finally
    //   372	400	557	finally
    //   83	93	578	java/lang/Exception
    //   409	419	599	finally
    //   419	466	599	finally
    //   506	530	599	finally
    //   533	551	599	finally
    //   304	314	604	finally
    //   314	342	604	finally
    //   267	295	609	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.i.a.c
 * JD-Core Version:    0.7.0.1
 */