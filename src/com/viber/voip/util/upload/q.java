package com.viber.voip.util.upload;

public class q
{
  private final String a = "UploadResponseParser";
  private final String b;
  private int c;
  
  public q()
  {
    this("UploadResponse", 2);
  }
  
  public q(String paramString, int paramInt)
  {
    this.b = paramString;
    this.c = paramInt;
  }
  
  /* Error */
  public r a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore_2
    //   2: aload_1
    //   3: bipush 10
    //   5: ldc 32
    //   7: invokestatic 37	com/viber/voip/util/am:a	(Ljava/io/InputStream;II)[B
    //   10: astore 27
    //   12: aload 27
    //   14: astore 4
    //   16: new 39	java/io/ByteArrayInputStream
    //   19: dup
    //   20: aload 4
    //   22: invokespecial 42	java/io/ByteArrayInputStream:<init>	([B)V
    //   25: astore 5
    //   27: invokestatic 48	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   30: invokevirtual 52	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   33: astore 7
    //   35: aload 7
    //   37: aload 5
    //   39: ldc 54
    //   41: invokeinterface 60 3 0
    //   46: aload 7
    //   48: invokeinterface 64 1 0
    //   53: istore 10
    //   55: aconst_null
    //   56: astore 11
    //   58: aconst_null
    //   59: astore 12
    //   61: aconst_null
    //   62: astore 13
    //   64: aconst_null
    //   65: astore 14
    //   67: iload 10
    //   69: iconst_1
    //   70: if_icmpeq +222 -> 292
    //   73: iload 10
    //   75: iconst_2
    //   76: if_icmpne +114 -> 190
    //   79: aload 7
    //   81: invokeinterface 68 1 0
    //   86: astore 12
    //   88: aload_0
    //   89: getfield 24	com/viber/voip/util/upload/q:b	Ljava/lang/String;
    //   92: aload 12
    //   94: invokevirtual 74	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   97: ifeq +251 -> 348
    //   100: aload 13
    //   102: astore 15
    //   104: ldc 76
    //   106: astore 16
    //   108: aload 14
    //   110: astore 17
    //   112: aload 12
    //   114: astore 18
    //   116: iload_2
    //   117: istore 19
    //   119: aload 18
    //   121: astore 20
    //   123: aload 7
    //   125: invokeinterface 79 1 0
    //   130: istore 21
    //   132: aload 17
    //   134: astore 14
    //   136: aload 16
    //   138: astore 11
    //   140: aload 15
    //   142: astore 13
    //   144: iload 21
    //   146: istore 10
    //   148: aload 20
    //   150: astore 22
    //   152: iload 19
    //   154: istore_2
    //   155: aload 22
    //   157: astore 12
    //   159: goto -92 -> 67
    //   162: astore_3
    //   163: aload_3
    //   164: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   167: iconst_0
    //   168: newarray byte
    //   170: astore 4
    //   172: goto -156 -> 16
    //   175: astore 6
    //   177: new 29	java/io/IOException
    //   180: dup
    //   181: aload 6
    //   183: invokevirtual 85	org/xmlpull/v1/XmlPullParserException:getMessage	()Ljava/lang/String;
    //   186: invokespecial 88	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   189: athrow
    //   190: iload 10
    //   192: iconst_4
    //   193: if_icmpne +207 -> 400
    //   196: aload 7
    //   198: invokeinterface 92 1 0
    //   203: istore 24
    //   205: aload 7
    //   207: invokeinterface 95 1 0
    //   212: astore 25
    //   214: ldc 76
    //   216: aload 12
    //   218: invokevirtual 74	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   221: ifeq +24 -> 245
    //   224: ldc 76
    //   226: aload 11
    //   228: invokevirtual 74	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   231: ifeq +14 -> 245
    //   234: iload 24
    //   236: ifne +9 -> 245
    //   239: aload 25
    //   241: invokestatic 101	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   244: istore_2
    //   245: ldc 103
    //   247: aload 12
    //   249: invokevirtual 74	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   252: ifeq +15 -> 267
    //   255: iload 24
    //   257: ifne +10 -> 267
    //   260: aload 25
    //   262: invokevirtual 106	java/lang/String:trim	()Ljava/lang/String;
    //   265: astore 13
    //   267: ldc 108
    //   269: aload 12
    //   271: invokevirtual 74	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   274: ifeq +100 -> 374
    //   277: iload 24
    //   279: ifne +95 -> 374
    //   282: aload 25
    //   284: invokevirtual 106	java/lang/String:trim	()Ljava/lang/String;
    //   287: astore 14
    //   289: goto +85 -> 374
    //   292: aload 11
    //   294: ifnonnull +37 -> 331
    //   297: new 29	java/io/IOException
    //   300: dup
    //   301: ldc 110
    //   303: invokespecial 88	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   306: athrow
    //   307: astore 9
    //   309: new 29	java/io/IOException
    //   312: dup
    //   313: aload 9
    //   315: invokevirtual 85	org/xmlpull/v1/XmlPullParserException:getMessage	()Ljava/lang/String;
    //   318: invokespecial 88	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   321: athrow
    //   322: astore 8
    //   324: aload_1
    //   325: invokevirtual 115	java/io/InputStream:close	()V
    //   328: aload 8
    //   330: athrow
    //   331: aload_1
    //   332: invokevirtual 115	java/io/InputStream:close	()V
    //   335: new 117	com/viber/voip/util/upload/r
    //   338: dup
    //   339: iload_2
    //   340: aload 14
    //   342: aload 13
    //   344: invokespecial 120	com/viber/voip/util/upload/r:<init>	(ILjava/lang/String;Ljava/lang/String;)V
    //   347: areturn
    //   348: aload 13
    //   350: astore 15
    //   352: aload 11
    //   354: astore 16
    //   356: aload 14
    //   358: astore 17
    //   360: aload 12
    //   362: astore 23
    //   364: iload_2
    //   365: istore 19
    //   367: aload 23
    //   369: astore 20
    //   371: goto -248 -> 123
    //   374: aload 13
    //   376: astore 15
    //   378: aload 11
    //   380: astore 16
    //   382: aload 14
    //   384: astore 17
    //   386: aload 12
    //   388: astore 26
    //   390: iload_2
    //   391: istore 19
    //   393: aload 26
    //   395: astore 20
    //   397: goto -274 -> 123
    //   400: iload 10
    //   402: iconst_3
    //   403: if_icmpne -55 -> 348
    //   406: aload 13
    //   408: astore 15
    //   410: iload_2
    //   411: istore 19
    //   413: aload 11
    //   415: astore 16
    //   417: aload 14
    //   419: astore 17
    //   421: aconst_null
    //   422: astore 20
    //   424: goto -301 -> 123
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	427	0	this	q
    //   0	427	1	paramInputStream	java.io.InputStream
    //   1	410	2	i	int
    //   162	2	3	localIOException	java.io.IOException
    //   14	157	4	arrayOfByte1	byte[]
    //   25	13	5	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   175	7	6	localXmlPullParserException1	org.xmlpull.v1.XmlPullParserException
    //   33	173	7	localXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   322	7	8	localObject1	Object
    //   307	7	9	localXmlPullParserException2	org.xmlpull.v1.XmlPullParserException
    //   53	351	10	j	int
    //   56	358	11	localObject2	Object
    //   59	328	12	localObject3	Object
    //   62	345	13	localObject4	Object
    //   65	353	14	localObject5	Object
    //   102	307	15	localObject6	Object
    //   106	310	16	localObject7	Object
    //   110	310	17	localObject8	Object
    //   114	6	18	localObject9	Object
    //   117	295	19	k	int
    //   121	302	20	localObject10	Object
    //   130	15	21	m	int
    //   150	6	22	localObject11	Object
    //   362	6	23	localObject12	Object
    //   203	75	24	bool	boolean
    //   212	71	25	str	String
    //   388	6	26	localObject13	Object
    //   10	3	27	arrayOfByte2	byte[]
    // Exception table:
    //   from	to	target	type
    //   2	12	162	java/io/IOException
    //   27	46	175	org/xmlpull/v1/XmlPullParserException
    //   46	55	307	org/xmlpull/v1/XmlPullParserException
    //   79	100	307	org/xmlpull/v1/XmlPullParserException
    //   123	132	307	org/xmlpull/v1/XmlPullParserException
    //   196	234	307	org/xmlpull/v1/XmlPullParserException
    //   239	245	307	org/xmlpull/v1/XmlPullParserException
    //   245	255	307	org/xmlpull/v1/XmlPullParserException
    //   260	267	307	org/xmlpull/v1/XmlPullParserException
    //   267	277	307	org/xmlpull/v1/XmlPullParserException
    //   282	289	307	org/xmlpull/v1/XmlPullParserException
    //   297	307	307	org/xmlpull/v1/XmlPullParserException
    //   46	55	322	finally
    //   79	100	322	finally
    //   123	132	322	finally
    //   196	234	322	finally
    //   239	245	322	finally
    //   245	255	322	finally
    //   260	267	322	finally
    //   267	277	322	finally
    //   282	289	322	finally
    //   297	307	322	finally
    //   309	322	322	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.q
 * JD-Core Version:    0.7.0.1
 */