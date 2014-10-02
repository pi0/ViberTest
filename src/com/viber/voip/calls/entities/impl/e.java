package com.viber.voip.calls.entities.impl;

public class e
{
  private static final String a = e.class.getSimpleName();
  private static String[] b = { "_id", "name", "numberlabel", "numbertype", "number", "date", "duration", "type" };
  private static int c = 7;
  private static int d;
  private static int e;
  private static boolean f = false;
  private static boolean g = false;
  private static boolean h = true;
  private static boolean i;
  
  /* Error */
  public static void a(com.viber.voip.ViberApplication paramViberApplication)
  {
    // Byte code:
    //   0: getstatic 63	com/viber/voip/calls/entities/impl/e:i	Z
    //   3: ifeq +4 -> 7
    //   6: return
    //   7: iconst_1
    //   8: putstatic 63	com/viber/voip/calls/entities/impl/e:i	Z
    //   11: aload_0
    //   12: invokevirtual 69	com/viber/voip/ViberApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   15: getstatic 75	android/provider/CallLog$Calls:CONTENT_URI	Landroid/net/Uri;
    //   18: aconst_null
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 81	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   25: astore 5
    //   27: aload 5
    //   29: astore_2
    //   30: aload_2
    //   31: ifnull +107 -> 138
    //   34: aload_2
    //   35: invokeinterface 87 1 0
    //   40: invokestatic 93	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   43: astore 7
    //   45: aload 7
    //   47: ldc 95
    //   49: invokeinterface 101 2 0
    //   54: istore 8
    //   56: iconst_0
    //   57: istore 9
    //   59: iload 8
    //   61: ifeq +34 -> 95
    //   64: iconst_1
    //   65: putstatic 53	com/viber/voip/calls/entities/impl/e:g	Z
    //   68: iconst_1
    //   69: getstatic 49	com/viber/voip/calls/entities/impl/e:c	I
    //   72: iadd
    //   73: putstatic 103	com/viber/voip/calls/entities/impl/e:d	I
    //   76: getstatic 47	com/viber/voip/calls/entities/impl/e:b	[Ljava/lang/String;
    //   79: ldc 95
    //   81: ldc 29
    //   83: invokestatic 108	com/viber/voip/util/e:a	([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    //   86: checkcast 109	[Ljava/lang/String;
    //   89: putstatic 47	com/viber/voip/calls/entities/impl/e:b	[Ljava/lang/String;
    //   92: iconst_1
    //   93: istore 9
    //   95: aload 7
    //   97: ldc 111
    //   99: invokeinterface 101 2 0
    //   104: ifeq +34 -> 138
    //   107: iconst_1
    //   108: putstatic 51	com/viber/voip/calls/entities/impl/e:f	Z
    //   111: iload 9
    //   113: iconst_1
    //   114: iadd
    //   115: getstatic 49	com/viber/voip/calls/entities/impl/e:c	I
    //   118: iadd
    //   119: putstatic 113	com/viber/voip/calls/entities/impl/e:e	I
    //   122: getstatic 47	com/viber/voip/calls/entities/impl/e:b	[Ljava/lang/String;
    //   125: ldc 111
    //   127: ldc 29
    //   129: invokestatic 108	com/viber/voip/util/e:a	([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    //   132: checkcast 109	[Ljava/lang/String;
    //   135: putstatic 47	com/viber/voip/calls/entities/impl/e:b	[Ljava/lang/String;
    //   138: aload_2
    //   139: invokestatic 118	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   142: return
    //   143: astore_3
    //   144: aconst_null
    //   145: astore 4
    //   147: aload 4
    //   149: invokestatic 118	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   152: return
    //   153: astore_1
    //   154: aconst_null
    //   155: astore_2
    //   156: aload_2
    //   157: invokestatic 118	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   160: aload_1
    //   161: athrow
    //   162: astore_1
    //   163: goto -7 -> 156
    //   166: astore 6
    //   168: aload_2
    //   169: astore 4
    //   171: goto -24 -> 147
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	174	0	paramViberApplication	com.viber.voip.ViberApplication
    //   153	8	1	localObject1	Object
    //   162	1	1	localObject2	Object
    //   29	140	2	localCursor1	android.database.Cursor
    //   143	1	3	localException1	java.lang.Exception
    //   145	25	4	localCursor2	android.database.Cursor
    //   25	3	5	localCursor3	android.database.Cursor
    //   166	1	6	localException2	java.lang.Exception
    //   43	53	7	localList	java.util.List
    //   54	6	8	bool	boolean
    //   57	58	9	j	int
    // Exception table:
    //   from	to	target	type
    //   11	27	143	java/lang/Exception
    //   11	27	153	finally
    //   34	56	162	finally
    //   64	92	162	finally
    //   95	138	162	finally
    //   34	56	166	java/lang/Exception
    //   64	92	166	java/lang/Exception
    //   95	138	166	java/lang/Exception
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.entities.impl.e
 * JD-Core Version:    0.7.0.1
 */