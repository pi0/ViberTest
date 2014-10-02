package com.viber.voip.sound;

import java.lang.reflect.Method;
import java.util.concurrent.Semaphore;

class SoundServiceThreadSafeDelegate$1
  implements Runnable
{
  SoundServiceThreadSafeDelegate$1(SoundServiceThreadSafeDelegate paramSoundServiceThreadSafeDelegate, Method paramMethod, ISoundService paramISoundService, Object[] paramArrayOfObject1, Object[] paramArrayOfObject2, Semaphore paramSemaphore) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: iconst_3
    //   1: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   4: new 49	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   11: ldc 52
    //   13: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: aload_0
    //   17: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   20: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   23: ldc 61
    //   25: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: aload_0
    //   29: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   32: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   41: aload_0
    //   42: getfield 27	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$result	[Ljava/lang/Object;
    //   45: iconst_0
    //   46: aload_0
    //   47: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   50: aload_0
    //   51: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   54: aload_0
    //   55: getfield 29	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$args	[Ljava/lang/Object;
    //   58: invokevirtual 77	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   61: aastore
    //   62: iconst_3
    //   63: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   66: new 49	java/lang/StringBuilder
    //   69: dup
    //   70: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   73: ldc 79
    //   75: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: aload_0
    //   79: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   82: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   85: ldc 61
    //   87: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: aload_0
    //   91: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   94: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   97: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   103: aload_0
    //   104: getfield 31	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$waitableSemaphore	Ljava/util/concurrent/Semaphore;
    //   107: astore 13
    //   109: aload 13
    //   111: monitorenter
    //   112: aload_0
    //   113: getfield 31	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$waitableSemaphore	Ljava/util/concurrent/Semaphore;
    //   116: invokevirtual 84	java/util/concurrent/Semaphore:release	()V
    //   119: aload 13
    //   121: monitorexit
    //   122: iconst_3
    //   123: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   126: new 49	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   133: ldc 86
    //   135: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: aload_0
    //   139: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   142: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   145: ldc 61
    //   147: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: aload_0
    //   151: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   154: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   163: return
    //   164: astore 14
    //   166: aload 13
    //   168: monitorexit
    //   169: aload 14
    //   171: athrow
    //   172: astore 10
    //   174: aload 10
    //   176: invokevirtual 89	java/lang/IllegalArgumentException:printStackTrace	()V
    //   179: iconst_3
    //   180: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   183: new 49	java/lang/StringBuilder
    //   186: dup
    //   187: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   190: ldc 79
    //   192: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload_0
    //   196: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   199: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   202: ldc 61
    //   204: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: aload_0
    //   208: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   211: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   214: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   217: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   220: aload_0
    //   221: getfield 31	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$waitableSemaphore	Ljava/util/concurrent/Semaphore;
    //   224: astore 11
    //   226: aload 11
    //   228: monitorenter
    //   229: aload_0
    //   230: getfield 31	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$waitableSemaphore	Ljava/util/concurrent/Semaphore;
    //   233: invokevirtual 84	java/util/concurrent/Semaphore:release	()V
    //   236: aload 11
    //   238: monitorexit
    //   239: iconst_3
    //   240: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   243: new 49	java/lang/StringBuilder
    //   246: dup
    //   247: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   250: ldc 86
    //   252: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: aload_0
    //   256: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   259: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   262: ldc 61
    //   264: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: aload_0
    //   268: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   271: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   274: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   280: return
    //   281: astore 12
    //   283: aload 11
    //   285: monitorexit
    //   286: aload 12
    //   288: athrow
    //   289: astore 7
    //   291: aload 7
    //   293: invokevirtual 90	java/lang/IllegalAccessException:printStackTrace	()V
    //   296: iconst_3
    //   297: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   300: new 49	java/lang/StringBuilder
    //   303: dup
    //   304: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   307: ldc 79
    //   309: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: aload_0
    //   313: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   316: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   319: ldc 61
    //   321: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: aload_0
    //   325: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   328: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   331: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   337: aload_0
    //   338: getfield 31	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$waitableSemaphore	Ljava/util/concurrent/Semaphore;
    //   341: astore 8
    //   343: aload 8
    //   345: monitorenter
    //   346: aload_0
    //   347: getfield 31	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$waitableSemaphore	Ljava/util/concurrent/Semaphore;
    //   350: invokevirtual 84	java/util/concurrent/Semaphore:release	()V
    //   353: aload 8
    //   355: monitorexit
    //   356: iconst_3
    //   357: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   360: new 49	java/lang/StringBuilder
    //   363: dup
    //   364: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   367: ldc 86
    //   369: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: aload_0
    //   373: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   376: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   379: ldc 61
    //   381: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: aload_0
    //   385: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   388: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   391: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   394: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   397: return
    //   398: astore 9
    //   400: aload 8
    //   402: monitorexit
    //   403: aload 9
    //   405: athrow
    //   406: astore 4
    //   408: aload 4
    //   410: invokevirtual 91	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   413: iconst_3
    //   414: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   417: new 49	java/lang/StringBuilder
    //   420: dup
    //   421: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   424: ldc 79
    //   426: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: aload_0
    //   430: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   433: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   436: ldc 61
    //   438: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: aload_0
    //   442: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   445: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   448: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   451: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   454: aload_0
    //   455: getfield 31	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$waitableSemaphore	Ljava/util/concurrent/Semaphore;
    //   458: astore 5
    //   460: aload 5
    //   462: monitorenter
    //   463: aload_0
    //   464: getfield 31	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$waitableSemaphore	Ljava/util/concurrent/Semaphore;
    //   467: invokevirtual 84	java/util/concurrent/Semaphore:release	()V
    //   470: aload 5
    //   472: monitorexit
    //   473: iconst_3
    //   474: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   477: new 49	java/lang/StringBuilder
    //   480: dup
    //   481: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   484: ldc 86
    //   486: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   489: aload_0
    //   490: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   493: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   496: ldc 61
    //   498: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: aload_0
    //   502: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   505: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   508: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   511: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   514: return
    //   515: astore 6
    //   517: aload 5
    //   519: monitorexit
    //   520: aload 6
    //   522: athrow
    //   523: astore_1
    //   524: iconst_3
    //   525: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   528: new 49	java/lang/StringBuilder
    //   531: dup
    //   532: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   535: ldc 79
    //   537: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   540: aload_0
    //   541: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   544: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   547: ldc 61
    //   549: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   552: aload_0
    //   553: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   556: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   559: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   562: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   565: aload_0
    //   566: getfield 31	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$waitableSemaphore	Ljava/util/concurrent/Semaphore;
    //   569: astore_2
    //   570: aload_2
    //   571: monitorenter
    //   572: aload_0
    //   573: getfield 31	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$waitableSemaphore	Ljava/util/concurrent/Semaphore;
    //   576: invokevirtual 84	java/util/concurrent/Semaphore:release	()V
    //   579: aload_2
    //   580: monitorexit
    //   581: iconst_3
    //   582: getstatic 47	com/viber/voip/sound/SoundServiceThreadSafeDelegate:TAG	Ljava/lang/String;
    //   585: new 49	java/lang/StringBuilder
    //   588: dup
    //   589: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   592: ldc 86
    //   594: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   597: aload_0
    //   598: getfield 23	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$method	Ljava/lang/reflect/Method;
    //   601: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   604: ldc 61
    //   606: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   609: aload_0
    //   610: getfield 25	com/viber/voip/sound/SoundServiceThreadSafeDelegate$1:val$target	Lcom/viber/voip/sound/ISoundService;
    //   613: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   616: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   619: invokestatic 71	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   622: aload_1
    //   623: athrow
    //   624: astore_3
    //   625: aload_2
    //   626: monitorexit
    //   627: aload_3
    //   628: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	629	0	this	1
    //   523	100	1	localObject1	Object
    //   624	4	3	localObject2	Object
    //   406	3	4	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   515	6	6	localObject3	Object
    //   289	3	7	localIllegalAccessException	java.lang.IllegalAccessException
    //   398	6	9	localObject4	Object
    //   172	3	10	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   281	6	12	localObject5	Object
    //   164	6	14	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   112	122	164	finally
    //   166	169	164	finally
    //   41	62	172	java/lang/IllegalArgumentException
    //   229	239	281	finally
    //   283	286	281	finally
    //   41	62	289	java/lang/IllegalAccessException
    //   346	356	398	finally
    //   400	403	398	finally
    //   41	62	406	java/lang/reflect/InvocationTargetException
    //   463	473	515	finally
    //   517	520	515	finally
    //   41	62	523	finally
    //   174	179	523	finally
    //   291	296	523	finally
    //   408	413	523	finally
    //   572	581	624	finally
    //   625	627	624	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.SoundServiceThreadSafeDelegate.1
 * JD-Core Version:    0.7.0.1
 */