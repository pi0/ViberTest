package com.viber.voip.stickers;

import android.graphics.Bitmap;
import android.os.Handler;
import com.viber.voip.stickers.c.a;

class bf
{
  private static final String a = bf.class.getSimpleName();
  private final b b;
  private final Handler c;
  private final bi d;
  private volatile bg e;
  private volatile bg f;
  
  bf(b paramb, Handler paramHandler, bi parambi)
  {
    this.b = paramb;
    this.c = paramHandler;
    this.d = parambi;
  }
  
  private void a(bg parambg)
  {
    try
    {
      if (this.e == parambg) {
        this.e = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Bitmap a(a parama)
  {
    for (;;)
    {
      Bitmap localBitmap;
      boolean bool;
      synchronized (this.d)
      {
        localBitmap = this.d.a(parama);
        if (localBitmap == null)
        {
          b localb = this.b;
          if (parama.g()) {
            break label88;
          }
          bool = true;
          localBitmap = localb.c(parama, bool, true, ba.c);
        }
      }
      synchronized (this.d)
      {
        this.d.a(parama, localBitmap);
        return localBitmap;
        localObject1 = finally;
        throw localObject1;
        label88:
        bool = false;
      }
    }
  }
  
  public void a()
  {
    synchronized (this.d)
    {
      this.d.a();
      return;
    }
  }
  
  public void a(Iterable<a> paramIterable)
  {
    new bg(this, paramIterable, null).run();
  }
  
  /* Error */
  public void a(int[] paramArrayOfInt, bj parambj)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: arraylength
    //   4: istore 4
    //   6: iconst_0
    //   7: istore 5
    //   9: iconst_0
    //   10: istore 6
    //   12: iload 5
    //   14: iload 4
    //   16: if_icmpge +13 -> 29
    //   19: aload_1
    //   20: iload 5
    //   22: iaload
    //   23: ifle +49 -> 72
    //   26: iconst_1
    //   27: istore 6
    //   29: iload 6
    //   31: ifeq +38 -> 69
    //   34: aload_0
    //   35: getfield 82	com/viber/voip/stickers/bf:f	Lcom/viber/voip/stickers/bg;
    //   38: ifnull +10 -> 48
    //   41: aload_0
    //   42: getfield 82	com/viber/voip/stickers/bf:f	Lcom/viber/voip/stickers/bg;
    //   45: invokevirtual 83	com/viber/voip/stickers/bg:a	()V
    //   48: aload_0
    //   49: new 73	com/viber/voip/stickers/bg
    //   52: dup
    //   53: aload_0
    //   54: aload_1
    //   55: aload_2
    //   56: invokespecial 86	com/viber/voip/stickers/bg:<init>	(Lcom/viber/voip/stickers/bf;[ILcom/viber/voip/stickers/bj;)V
    //   59: putfield 82	com/viber/voip/stickers/bf:f	Lcom/viber/voip/stickers/bg;
    //   62: aload_0
    //   63: getfield 82	com/viber/voip/stickers/bf:f	Lcom/viber/voip/stickers/bg;
    //   66: invokevirtual 88	com/viber/voip/stickers/bg:b	()V
    //   69: aload_0
    //   70: monitorexit
    //   71: return
    //   72: iinc 5 1
    //   75: goto -66 -> 9
    //   78: astore_3
    //   79: aload_0
    //   80: monitorexit
    //   81: aload_3
    //   82: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	this	bf
    //   0	83	1	paramArrayOfInt	int[]
    //   0	83	2	parambj	bj
    //   78	4	3	localObject	Object
    //   4	13	4	i	int
    //   7	66	5	j	int
    //   10	20	6	k	int
    // Exception table:
    //   from	to	target	type
    //   2	6	78	finally
    //   19	26	78	finally
    //   34	48	78	finally
    //   48	69	78	finally
  }
  
  public void b(a parama)
  {
    if (this.d.a(parama) != null)
    {
      Bitmap localBitmap = this.b.c(parama, false, true, ba.c);
      if (localBitmap != null) {
        synchronized (this.d)
        {
          this.d.a(parama, localBitmap);
          return;
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.bf
 * JD-Core Version:    0.7.0.1
 */