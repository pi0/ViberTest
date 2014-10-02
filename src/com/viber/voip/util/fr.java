package com.viber.voip.util;

import android.os.Handler;

public class fr
{
  private static String e = "PeriodicMon";
  private Handler a;
  private Runnable b;
  private long c;
  private volatile boolean d = false;
  private Runnable f = new fs(this);
  
  public fr(Handler paramHandler, Runnable paramRunnable, long paramLong)
  {
    this.a = paramHandler;
    this.b = paramRunnable;
    this.c = paramLong;
    if ((this.a == null) || (this.b == null)) {
      throw new RuntimeException("Invalid params");
    }
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 27	com/viber/voip/util/fr:d	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 36	com/viber/voip/util/fr:a	Landroid/os/Handler;
    //   18: aload_0
    //   19: getfield 34	com/viber/voip/util/fr:f	Ljava/lang/Runnable;
    //   22: invokevirtual 57	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   25: aload_0
    //   26: iconst_1
    //   27: putfield 27	com/viber/voip/util/fr:d	Z
    //   30: aload_0
    //   31: getfield 36	com/viber/voip/util/fr:a	Landroid/os/Handler;
    //   34: aload_0
    //   35: getfield 34	com/viber/voip/util/fr:f	Ljava/lang/Runnable;
    //   38: invokevirtual 61	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   41: pop
    //   42: goto -31 -> 11
    //   45: astore_1
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_1
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	fr
    //   45	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	45	finally
    //   14	42	45	finally
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 27	com/viber/voip/util/fr:d	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_0
    //   16: putfield 27	com/viber/voip/util/fr:d	Z
    //   19: aload_0
    //   20: getfield 36	com/viber/voip/util/fr:a	Landroid/os/Handler;
    //   23: aload_0
    //   24: getfield 34	com/viber/voip/util/fr:f	Ljava/lang/Runnable;
    //   27: invokevirtual 57	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   30: goto -19 -> 11
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	38	0	this	fr
    //   33	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	33	finally
    //   14	30	33	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.fr
 * JD-Core Version:    0.7.0.1
 */