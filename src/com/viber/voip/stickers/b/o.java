package com.viber.voip.stickers.b;

import android.os.SystemClock;
import com.viber.voip.stickers.r;
import com.viber.voip.util.upload.d;

public abstract class o
  extends a
  implements Runnable
{
  private com.viber.voip.stickers.c.a b;
  private d c;
  private com.viber.voip.stickers.b d;
  private r e;
  private long f;
  
  public o(com.viber.voip.stickers.c.a parama, r paramr, com.viber.voip.stickers.b paramb, com.viber.voip.stickers.d.b paramb1)
  {
    super(paramb1);
    a("StickerDownloadTask " + parama.b);
    this.d = paramb;
    this.e = paramr;
    this.b = parama;
    this.f = SystemClock.elapsedRealtime();
  }
  
  long a()
  {
    return this.f;
  }
  
  public void b()
  {
    if (this.c != null) {
      this.c.f();
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: new 23	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   7: ldc 77
    //   9: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   12: aload_0
    //   13: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   16: getfield 37	com/viber/voip/stickers/c/a:b	I
    //   19: invokevirtual 40	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   22: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: invokestatic 48	com/viber/voip/stickers/b/o:a	(Ljava/lang/String;)V
    //   28: aload_0
    //   29: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   32: getfield 37	com/viber/voip/stickers/c/a:b	I
    //   35: ldc 79
    //   37: invokestatic 84	com/viber/voip/stickers/b/h:a	(ILjava/lang/String;)Ljava/lang/String;
    //   40: astore 4
    //   42: invokestatic 90	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   45: invokevirtual 94	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   48: aload 4
    //   50: invokevirtual 99	com/viber/voip/util/bb:b	(Ljava/lang/String;)Z
    //   53: istore 5
    //   55: iconst_0
    //   56: istore 6
    //   58: iload 5
    //   60: ifeq +46 -> 106
    //   63: aload 4
    //   65: invokestatic 102	com/viber/voip/stickers/b/h:b	(Ljava/lang/String;)I
    //   68: istore 12
    //   70: invokestatic 90	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   73: invokevirtual 94	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   76: aload 4
    //   78: iload 12
    //   80: invokevirtual 105	com/viber/voip/util/bb:a	(Ljava/lang/String;I)V
    //   83: iconst_0
    //   84: istore 6
    //   86: iload 12
    //   88: sipush 200
    //   91: if_icmpne +6 -> 97
    //   94: iconst_1
    //   95: istore 6
    //   97: aload_0
    //   98: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   101: iload 6
    //   103: invokevirtual 108	com/viber/voip/stickers/c/a:b	(Z)V
    //   106: aload_0
    //   107: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   110: getfield 37	com/viber/voip/stickers/c/a:b	I
    //   113: istore 7
    //   115: iload 6
    //   117: ifeq +216 -> 333
    //   120: ldc 79
    //   122: astore 8
    //   124: iload 7
    //   126: aload 8
    //   128: invokestatic 84	com/viber/voip/stickers/b/h:a	(ILjava/lang/String;)Ljava/lang/String;
    //   131: astore 9
    //   133: invokestatic 90	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   136: invokevirtual 94	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   139: aload 9
    //   141: invokevirtual 99	com/viber/voip/util/bb:b	(Ljava/lang/String;)Z
    //   144: ifne +200 -> 344
    //   147: new 71	com/viber/voip/util/upload/e
    //   150: dup
    //   151: new 75	java/lang/Exception
    //   154: dup
    //   155: new 23	java/lang/StringBuilder
    //   158: dup
    //   159: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   162: ldc 110
    //   164: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload 9
    //   169: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   175: invokespecial 112	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   178: invokespecial 115	com/viber/voip/util/upload/e:<init>	(Ljava/lang/Throwable;)V
    //   181: athrow
    //   182: astore_3
    //   183: ldc 117
    //   185: aload_3
    //   186: invokestatic 120	com/viber/voip/stickers/b/o:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   189: aload_0
    //   190: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   193: ifnull +36 -> 229
    //   196: aload_0
    //   197: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   200: invokevirtual 124	com/viber/voip/util/upload/d:h	()I
    //   203: ifeq +26 -> 229
    //   206: invokestatic 90	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   209: invokevirtual 94	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   212: aload_0
    //   213: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   216: invokevirtual 126	com/viber/voip/util/upload/d:a	()Ljava/lang/String;
    //   219: aload_0
    //   220: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   223: invokevirtual 124	com/viber/voip/util/upload/d:h	()I
    //   226: invokevirtual 105	com/viber/voip/util/bb:a	(Ljava/lang/String;I)V
    //   229: aload_0
    //   230: aload_0
    //   231: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   234: getfield 37	com/viber/voip/stickers/c/a:b	I
    //   237: invokevirtual 129	com/viber/voip/stickers/b/o:a	(I)V
    //   240: return
    //   241: astore 11
    //   243: new 23	java/lang/StringBuilder
    //   246: dup
    //   247: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   250: ldc 131
    //   252: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: aload 4
    //   257: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: aload 11
    //   265: invokestatic 120	com/viber/voip/stickers/b/o:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   268: iconst_0
    //   269: istore 6
    //   271: goto -174 -> 97
    //   274: astore_2
    //   275: ldc 133
    //   277: aload_2
    //   278: invokestatic 120	com/viber/voip/stickers/b/o:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   281: aload_0
    //   282: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   285: ifnull +36 -> 321
    //   288: aload_0
    //   289: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   292: invokevirtual 124	com/viber/voip/util/upload/d:h	()I
    //   295: ifeq +26 -> 321
    //   298: invokestatic 90	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   301: invokevirtual 94	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   304: aload_0
    //   305: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   308: invokevirtual 126	com/viber/voip/util/upload/d:a	()Ljava/lang/String;
    //   311: aload_0
    //   312: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   315: invokevirtual 124	com/viber/voip/util/upload/d:h	()I
    //   318: invokevirtual 105	com/viber/voip/util/bb:a	(Ljava/lang/String;I)V
    //   321: aload_0
    //   322: aload_0
    //   323: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   326: getfield 37	com/viber/voip/stickers/c/a:b	I
    //   329: invokevirtual 129	com/viber/voip/stickers/b/o:a	(I)V
    //   332: return
    //   333: getstatic 138	com/viber/voip/stickers/an:j	I
    //   336: invokestatic 144	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   339: astore 8
    //   341: goto -217 -> 124
    //   344: aload_0
    //   345: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   348: getfield 148	com/viber/voip/stickers/c/a:u	Ljava/lang/String;
    //   351: astore 10
    //   353: aload_0
    //   354: new 66	com/viber/voip/util/upload/d
    //   357: dup
    //   358: aload 9
    //   360: aload 10
    //   362: new 23	java/lang/StringBuilder
    //   365: dup
    //   366: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   369: aload 10
    //   371: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: ldc 150
    //   376: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   379: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   382: invokespecial 153	com/viber/voip/util/upload/d:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   385: putfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   388: aload_0
    //   389: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   392: invokevirtual 154	com/viber/voip/stickers/c/a:f	()V
    //   395: aload_0
    //   396: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   399: invokevirtual 156	com/viber/voip/util/upload/d:d	()V
    //   402: invokestatic 90	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   405: invokevirtual 94	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   408: aload 9
    //   410: invokevirtual 158	com/viber/voip/util/bb:c	(Ljava/lang/String;)V
    //   413: aload_0
    //   414: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   417: invokevirtual 160	com/viber/voip/stickers/c/a:h	()V
    //   420: aload_0
    //   421: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   424: invokevirtual 163	com/viber/voip/stickers/c/a:e	()Z
    //   427: ifne +10 -> 437
    //   430: aload_0
    //   431: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   434: invokevirtual 165	com/viber/voip/stickers/c/a:a	()V
    //   437: aload_0
    //   438: getfield 50	com/viber/voip/stickers/b/o:d	Lcom/viber/voip/stickers/b;
    //   441: aload_0
    //   442: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   445: invokevirtual 170	com/viber/voip/stickers/b:c	(Lcom/viber/voip/stickers/c/a;)V
    //   448: aload_0
    //   449: getfield 52	com/viber/voip/stickers/b/o:e	Lcom/viber/voip/stickers/r;
    //   452: invokevirtual 175	com/viber/voip/stickers/r:d	()Lcom/viber/voip/stickers/b;
    //   455: aload_0
    //   456: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   459: invokevirtual 177	com/viber/voip/stickers/b:b	(Lcom/viber/voip/stickers/c/a;)V
    //   462: aload_0
    //   463: getfield 52	com/viber/voip/stickers/b/o:e	Lcom/viber/voip/stickers/r;
    //   466: aload_0
    //   467: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   470: invokevirtual 178	com/viber/voip/stickers/r:b	(Lcom/viber/voip/stickers/c/a;)V
    //   473: aload_0
    //   474: getfield 181	com/viber/voip/stickers/b/o:a	Lcom/viber/voip/stickers/d/b;
    //   477: aload_0
    //   478: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   481: invokeinterface 185 2 0
    //   486: aload_0
    //   487: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   490: ifnull +36 -> 526
    //   493: aload_0
    //   494: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   497: invokevirtual 124	com/viber/voip/util/upload/d:h	()I
    //   500: ifeq +26 -> 526
    //   503: invokestatic 90	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   506: invokevirtual 94	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   509: aload_0
    //   510: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   513: invokevirtual 126	com/viber/voip/util/upload/d:a	()Ljava/lang/String;
    //   516: aload_0
    //   517: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   520: invokevirtual 124	com/viber/voip/util/upload/d:h	()I
    //   523: invokevirtual 105	com/viber/voip/util/bb:a	(Ljava/lang/String;I)V
    //   526: aload_0
    //   527: aload_0
    //   528: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   531: getfield 37	com/viber/voip/stickers/c/a:b	I
    //   534: invokevirtual 129	com/viber/voip/stickers/b/o:a	(I)V
    //   537: return
    //   538: astore_1
    //   539: aload_0
    //   540: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   543: ifnull +36 -> 579
    //   546: aload_0
    //   547: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   550: invokevirtual 124	com/viber/voip/util/upload/d:h	()I
    //   553: ifeq +26 -> 579
    //   556: invokestatic 90	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   559: invokevirtual 94	com/viber/voip/ViberApplication:getDownloadValve	()Lcom/viber/voip/util/bb;
    //   562: aload_0
    //   563: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   566: invokevirtual 126	com/viber/voip/util/upload/d:a	()Ljava/lang/String;
    //   569: aload_0
    //   570: getfield 64	com/viber/voip/stickers/b/o:c	Lcom/viber/voip/util/upload/d;
    //   573: invokevirtual 124	com/viber/voip/util/upload/d:h	()I
    //   576: invokevirtual 105	com/viber/voip/util/bb:a	(Ljava/lang/String;I)V
    //   579: aload_0
    //   580: aload_0
    //   581: getfield 54	com/viber/voip/stickers/b/o:b	Lcom/viber/voip/stickers/c/a;
    //   584: getfield 37	com/viber/voip/stickers/c/a:b	I
    //   587: invokevirtual 129	com/viber/voip/stickers/b/o:a	(I)V
    //   590: aload_1
    //   591: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	592	0	this	o
    //   538	53	1	localObject	java.lang.Object
    //   274	4	2	localak	com.viber.voip.stickers.ak
    //   182	4	3	locale	com.viber.voip.util.upload.e
    //   40	216	4	str1	java.lang.String
    //   53	6	5	bool1	boolean
    //   56	214	6	bool2	boolean
    //   113	12	7	i	int
    //   122	218	8	str2	java.lang.String
    //   131	278	9	str3	java.lang.String
    //   351	19	10	str4	java.lang.String
    //   241	23	11	localException	java.lang.Exception
    //   68	24	12	j	int
    // Exception table:
    //   from	to	target	type
    //   0	55	182	com/viber/voip/util/upload/e
    //   63	83	182	com/viber/voip/util/upload/e
    //   97	106	182	com/viber/voip/util/upload/e
    //   106	115	182	com/viber/voip/util/upload/e
    //   124	182	182	com/viber/voip/util/upload/e
    //   243	268	182	com/viber/voip/util/upload/e
    //   333	341	182	com/viber/voip/util/upload/e
    //   344	437	182	com/viber/voip/util/upload/e
    //   437	486	182	com/viber/voip/util/upload/e
    //   63	83	241	java/lang/Exception
    //   0	55	274	com/viber/voip/stickers/ak
    //   63	83	274	com/viber/voip/stickers/ak
    //   97	106	274	com/viber/voip/stickers/ak
    //   106	115	274	com/viber/voip/stickers/ak
    //   124	182	274	com/viber/voip/stickers/ak
    //   243	268	274	com/viber/voip/stickers/ak
    //   333	341	274	com/viber/voip/stickers/ak
    //   344	437	274	com/viber/voip/stickers/ak
    //   437	486	274	com/viber/voip/stickers/ak
    //   0	55	538	finally
    //   63	83	538	finally
    //   97	106	538	finally
    //   106	115	538	finally
    //   124	182	538	finally
    //   183	189	538	finally
    //   243	268	538	finally
    //   275	281	538	finally
    //   333	341	538	finally
    //   344	437	538	finally
    //   437	486	538	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.b.o
 * JD-Core Version:    0.7.0.1
 */