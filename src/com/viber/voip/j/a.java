package com.viber.voip.j;

import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.voip.ViberApplication;
import java.util.HashSet;
import java.util.Set;

public class a
  extends PhoneControllerDelegateAdapter
{
  public static final String a = a.class.getSimpleName();
  private static a b = new a();
  private int c = 0;
  private Set<c> d = new HashSet(10);
  
  static
  {
    ViberApplication.getViberApp(new b());
  }
  
  public static a a()
  {
    try
    {
      a locala = b;
      return locala;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static void b(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  public static boolean f()
  {
    return ViberApplication.isTablet();
  }
  
  public void a(int paramInt)
  {
    ViberApplication.log("enable vibes state=" + paramInt);
    a(paramInt, false);
  }
  
  /* Error */
  public void a(int paramInt, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 63	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 64	java/lang/StringBuilder:<init>	()V
    //   9: ldc 66
    //   11: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: iload_1
    //   15: invokevirtual 73	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   18: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   21: invokestatic 78	com/viber/voip/ViberApplication:log	(Ljava/lang/String;)V
    //   24: aload_0
    //   25: getfield 40	com/viber/voip/j/a:c	I
    //   28: iload_1
    //   29: if_icmpeq +54 -> 83
    //   32: iload_2
    //   33: ifne +53 -> 86
    //   36: iload_1
    //   37: aload_0
    //   38: getfield 40	com/viber/voip/j/a:c	I
    //   41: if_icmpge +45 -> 86
    //   44: new 63	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 64	java/lang/StringBuilder:<init>	()V
    //   51: ldc 83
    //   53: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: iload_1
    //   57: invokevirtual 73	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   60: ldc 85
    //   62: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: aload_0
    //   66: getfield 40	com/viber/voip/j/a:c	I
    //   69: invokevirtual 73	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   72: ldc 87
    //   74: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokestatic 51	com/viber/voip/j/a:b	(Ljava/lang/String;)V
    //   83: aload_0
    //   84: monitorexit
    //   85: return
    //   86: aload_0
    //   87: iload_1
    //   88: putfield 40	com/viber/voip/j/a:c	I
    //   91: invokestatic 91	com/viber/voip/ViberApplication:preferences	()Lcom/viber/voip/settings/l;
    //   94: ldc 93
    //   96: aload_0
    //   97: getfield 40	com/viber/voip/j/a:c	I
    //   100: invokeinterface 98 3 0
    //   105: pop
    //   106: aload_0
    //   107: getfield 47	com/viber/voip/j/a:d	Ljava/util/Set;
    //   110: invokeinterface 104 1 0
    //   115: astore 5
    //   117: aload 5
    //   119: invokeinterface 109 1 0
    //   124: ifeq -41 -> 83
    //   127: aload 5
    //   129: invokeinterface 113 1 0
    //   134: checkcast 115	com/viber/voip/j/c
    //   137: iload_1
    //   138: invokeinterface 117 2 0
    //   143: goto -26 -> 117
    //   146: astore_3
    //   147: aload_0
    //   148: monitorexit
    //   149: aload_3
    //   150: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	this	a
    //   0	151	1	paramInt	int
    //   0	151	2	paramBoolean	boolean
    //   146	4	3	localObject	Object
    //   115	13	5	localIterator	java.util.Iterator
    // Exception table:
    //   from	to	target	type
    //   2	32	146	finally
    //   36	83	146	finally
    //   86	117	146	finally
    //   117	143	146	finally
  }
  
  public void a(c paramc)
  {
    this.d.add(paramc);
  }
  
  public void b()
  {
    ViberApplication.log("onVibesInviteReceived");
    if (c() == 0) {
      a(1);
    }
  }
  
  public void b(int paramInt)
  {
    ViberApplication.log("enable vibes state=" + paramInt);
    a(paramInt, false);
  }
  
  public void b(c paramc)
  {
    this.d.remove(paramc);
  }
  
  public int c()
  {
    if (f()) {
      return 0;
    }
    return this.c;
  }
  
  public boolean d()
  {
    return c() == 2;
  }
  
  public boolean e()
  {
    return c() != 0;
  }
  
  public void onPublicChatSupported(int paramInt)
  {
    ViberApplication.log("onPublicChatSupported");
    a(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.j.a
 * JD-Core Version:    0.7.0.1
 */