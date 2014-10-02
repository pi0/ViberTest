package com.viber.voip.contacts.c.d.a;

import com.viber.voip.util.fl;

class k
  implements fl
{
  k(i parami) {}
  
  /* Error */
  public void onQueryComplete(int paramInt, Object paramObject, android.database.Cursor paramCursor)
  {
    // Byte code:
    //   0: new 19	java/util/HashMap
    //   3: dup
    //   4: invokespecial 20	java/util/HashMap:<init>	()V
    //   7: astore 4
    //   9: new 22	java/util/ArrayList
    //   12: dup
    //   13: invokespecial 23	java/util/ArrayList:<init>	()V
    //   16: astore 5
    //   18: new 25	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   25: astore 6
    //   27: aload_3
    //   28: ifnull +131 -> 159
    //   31: aload_3
    //   32: invokeinterface 32 1 0
    //   37: ifeq +122 -> 159
    //   40: aload_3
    //   41: ldc 34
    //   43: invokeinterface 38 2 0
    //   48: istore 16
    //   50: aload_3
    //   51: ldc 40
    //   53: invokeinterface 38 2 0
    //   58: istore 17
    //   60: aload_3
    //   61: iload 16
    //   63: invokeinterface 44 2 0
    //   68: istore 18
    //   70: aload_3
    //   71: iload 17
    //   73: invokeinterface 48 2 0
    //   78: astore 19
    //   80: aload 19
    //   82: ifnull +64 -> 146
    //   85: aload 19
    //   87: invokevirtual 54	java/lang/String:trim	()Ljava/lang/String;
    //   90: invokestatic 60	android/telephony/PhoneNumberUtils:stripSeparators	(Ljava/lang/String;)Ljava/lang/String;
    //   93: astore 20
    //   95: aload 20
    //   97: invokestatic 66	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   100: ifne +46 -> 146
    //   103: aload 4
    //   105: aload 20
    //   107: invokeinterface 72 2 0
    //   112: ifeq +212 -> 324
    //   115: aload 4
    //   117: aload 20
    //   119: iload 18
    //   121: aload 4
    //   123: aload 20
    //   125: invokeinterface 76 2 0
    //   130: checkcast 78	java/lang/Integer
    //   133: invokevirtual 82	java/lang/Integer:intValue	()I
    //   136: iadd
    //   137: invokestatic 86	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   140: invokeinterface 90 3 0
    //   145: pop
    //   146: aload_3
    //   147: invokeinterface 93 1 0
    //   152: istore 21
    //   154: iload 21
    //   156: ifne -96 -> 60
    //   159: aload_3
    //   160: ifnull +7 -> 167
    //   163: aload_3
    //   164: invokestatic 98	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   167: aload 4
    //   169: invokeinterface 102 1 0
    //   174: invokeinterface 108 1 0
    //   179: astore 7
    //   181: aload 7
    //   183: invokeinterface 113 1 0
    //   188: ifeq +167 -> 355
    //   191: aload 7
    //   193: invokeinterface 117 1 0
    //   198: checkcast 119	java/util/Map$Entry
    //   201: astore 9
    //   203: getstatic 124	com/viber/provider/contacts/f:a	Landroid/net/Uri;
    //   206: invokestatic 130	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   209: ldc 132
    //   211: aload 9
    //   213: invokeinterface 135 1 0
    //   218: invokevirtual 141	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   221: astore 10
    //   223: iconst_2
    //   224: anewarray 50	java/lang/String
    //   227: astore 11
    //   229: aload 11
    //   231: iconst_0
    //   232: aload 9
    //   234: invokeinterface 144 1 0
    //   239: checkcast 50	java/lang/String
    //   242: aastore
    //   243: aload 11
    //   245: iconst_1
    //   246: aload 9
    //   248: invokeinterface 144 1 0
    //   253: checkcast 50	java/lang/String
    //   256: aastore
    //   257: aload 5
    //   259: aload 10
    //   261: ldc 146
    //   263: aload 11
    //   265: invokevirtual 150	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   268: iconst_1
    //   269: invokevirtual 154	android/content/ContentProviderOperation$Builder:withYieldAllowed	(Z)Landroid/content/ContentProviderOperation$Builder;
    //   272: invokevirtual 158	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   275: invokevirtual 161	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   278: pop
    //   279: aload 6
    //   281: invokevirtual 164	java/lang/StringBuilder:length	()I
    //   284: ifle +11 -> 295
    //   287: aload 6
    //   289: bipush 44
    //   291: invokevirtual 168	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   294: pop
    //   295: aload 6
    //   297: bipush 39
    //   299: invokevirtual 168	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   302: aload 9
    //   304: invokeinterface 144 1 0
    //   309: checkcast 50	java/lang/String
    //   312: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: bipush 39
    //   317: invokevirtual 168	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   320: pop
    //   321: goto -140 -> 181
    //   324: aload 4
    //   326: aload 20
    //   328: iload 18
    //   330: invokestatic 86	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   333: invokeinterface 90 3 0
    //   338: pop
    //   339: goto -193 -> 146
    //   342: astore 15
    //   344: aload_3
    //   345: ifnull +7 -> 352
    //   348: aload_3
    //   349: invokestatic 98	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   352: aload 15
    //   354: athrow
    //   355: aload 5
    //   357: getstatic 124	com/viber/provider/contacts/f:a	Landroid/net/Uri;
    //   360: invokestatic 130	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   363: ldc 132
    //   365: iconst_0
    //   366: invokestatic 86	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   369: invokevirtual 141	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   372: ldc 173
    //   374: iconst_2
    //   375: anewarray 4	java/lang/Object
    //   378: dup
    //   379: iconst_0
    //   380: aload 6
    //   382: aastore
    //   383: dup
    //   384: iconst_1
    //   385: aload 6
    //   387: aastore
    //   388: invokestatic 177	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   391: aconst_null
    //   392: invokevirtual 150	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   395: invokevirtual 158	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   398: invokevirtual 161	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   401: pop
    //   402: aload_0
    //   403: getfield 12	com/viber/voip/contacts/c/d/a/k:a	Lcom/viber/voip/contacts/c/d/a/i;
    //   406: invokestatic 183	com/viber/voip/contacts/c/d/a/i:d	(Lcom/viber/voip/contacts/c/d/a/i;)Lcom/viber/voip/contacts/c/e/b;
    //   409: sipush 1598
    //   412: ldc 185
    //   414: aconst_null
    //   415: aload 5
    //   417: new 187	com/viber/voip/contacts/c/d/a/l
    //   420: dup
    //   421: aload_0
    //   422: invokespecial 190	com/viber/voip/contacts/c/d/a/l:<init>	(Lcom/viber/voip/contacts/c/d/a/k;)V
    //   425: invokevirtual 195	com/viber/voip/contacts/c/e/b:a	(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;)V
    //   428: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	429	0	this	k
    //   0	429	1	paramInt	int
    //   0	429	2	paramObject	Object
    //   0	429	3	paramCursor	android.database.Cursor
    //   7	318	4	localHashMap	java.util.HashMap
    //   16	400	5	localArrayList	java.util.ArrayList
    //   25	361	6	localStringBuilder	java.lang.StringBuilder
    //   179	13	7	localIterator	java.util.Iterator
    //   201	102	9	localEntry	java.util.Map.Entry
    //   221	39	10	localBuilder	android.content.ContentProviderOperation.Builder
    //   227	37	11	arrayOfString	java.lang.String[]
    //   342	11	15	localObject	Object
    //   48	14	16	i	int
    //   58	14	17	j	int
    //   68	261	18	k	int
    //   78	8	19	str1	java.lang.String
    //   93	234	20	str2	java.lang.String
    //   152	3	21	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   31	60	342	finally
    //   60	80	342	finally
    //   85	146	342	finally
    //   146	154	342	finally
    //   324	339	342	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.a.k
 * JD-Core Version:    0.7.0.1
 */