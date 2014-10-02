package com.viber.voip;

import android.os.Looper;
import android.os.Message;

public class az
  extends ao
{
  final Object b = new Object();
  private boolean c;
  
  public az(dk paramdk, Looper paramLooper)
  {
    super(paramdk, paramLooper);
  }
  
  public void a()
  {
    try
    {
      ViberApplication.log(3, this.a, "pause");
      this.c = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_3
    //   3: aload_0
    //   4: getfield 23	com/viber/voip/az:a	Ljava/lang/String;
    //   7: ldc 35
    //   9: invokestatic 31	com/viber/voip/ViberApplication:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   12: aload_0
    //   13: getfield 19	com/viber/voip/az:b	Ljava/lang/Object;
    //   16: astore_2
    //   17: aload_2
    //   18: monitorenter
    //   19: aload_0
    //   20: iconst_0
    //   21: putfield 33	com/viber/voip/az:c	Z
    //   24: aload_0
    //   25: getfield 19	com/viber/voip/az:b	Ljava/lang/Object;
    //   28: invokevirtual 38	java/lang/Object:notify	()V
    //   31: aload_2
    //   32: monitorexit
    //   33: aload_0
    //   34: monitorexit
    //   35: return
    //   36: astore_3
    //   37: aload_2
    //   38: monitorexit
    //   39: aload_3
    //   40: athrow
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	this	az
    //   41	4	1	localObject1	Object
    //   36	4	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   19	33	36	finally
    //   37	39	36	finally
    //   2	19	41	finally
    //   39	41	41	finally
  }
  
  public void dispatchMessage(Message paramMessage)
  {
    if (this.c)
    {
      ViberApplication.log(3, this.a, "WAIT!!!");
      try
      {
        synchronized (this.b)
        {
          this.b.wait();
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
    super.dispatchMessage(paramMessage);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.az
 * JD-Core Version:    0.7.0.1
 */