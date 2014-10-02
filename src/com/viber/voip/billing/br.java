package com.viber.voip.billing;

import android.os.SystemClock;
import java.util.HashMap;

public class br
{
  private HashMap<bn, bs> a = new HashMap();
  
  private long a()
  {
    return SystemClock.elapsedRealtime();
  }
  
  /* Error */
  public bq a(bn parambn)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 16	com/viber/voip/billing/br:a	Ljava/util/HashMap;
    //   6: aload_1
    //   7: invokevirtual 27	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: checkcast 29	com/viber/voip/billing/bs
    //   13: astore_3
    //   14: aload_3
    //   15: ifnull +28 -> 43
    //   18: aload_0
    //   19: invokespecial 31	com/viber/voip/billing/br:a	()J
    //   22: aload_3
    //   23: getfield 35	com/viber/voip/billing/bs:b	J
    //   26: lsub
    //   27: ldc2_w 36
    //   30: lcmp
    //   31: ifle +20 -> 51
    //   34: aload_0
    //   35: getfield 16	com/viber/voip/billing/br:a	Ljava/util/HashMap;
    //   38: aload_1
    //   39: invokevirtual 40	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   42: pop
    //   43: aconst_null
    //   44: astore 4
    //   46: aload_0
    //   47: monitorexit
    //   48: aload 4
    //   50: areturn
    //   51: aload_3
    //   52: getfield 43	com/viber/voip/billing/bs:a	Lcom/viber/voip/billing/bq;
    //   55: astore 4
    //   57: goto -11 -> 46
    //   60: astore_2
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_2
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	br
    //   0	65	1	parambn	bn
    //   60	4	2	localObject	Object
    //   13	39	3	localbs	bs
    //   44	12	4	localbq	bq
    // Exception table:
    //   from	to	target	type
    //   2	14	60	finally
    //   18	43	60	finally
    //   51	57	60	finally
  }
  
  public void a(bq parambq)
  {
    try
    {
      bs localbs = new bs(this, parambq, a());
      this.a.put(parambq.a(), localbs);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.br
 * JD-Core Version:    0.7.0.1
 */