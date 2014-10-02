package com.viber.voip.c;

import com.viber.voip.ViberApplication;

public class g
{
  private static h a = new h();
  private static b b = e();
  private static b c = f();
  private static boolean d;
  
  public static b a()
  {
    try
    {
      b localb = b;
      return localb;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  private static void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 34	com/viber/voip/c/g:d	Z
    //   6: ifne +20 -> 26
    //   9: iload_0
    //   10: ifeq +20 -> 30
    //   13: getstatic 31	com/viber/voip/c/g:c	Lcom/viber/voip/c/b;
    //   16: invokestatic 40	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   19: invokevirtual 45	com/viber/voip/c/b:b	(Landroid/content/Context;)V
    //   22: iconst_1
    //   23: putstatic 34	com/viber/voip/c/g:d	Z
    //   26: ldc 2
    //   28: monitorexit
    //   29: return
    //   30: getstatic 31	com/viber/voip/c/g:c	Lcom/viber/voip/c/b;
    //   33: invokestatic 40	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   36: invokevirtual 47	com/viber/voip/c/b:a	(Landroid/content/Context;)V
    //   39: goto -17 -> 22
    //   42: astore_1
    //   43: ldc 2
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	paramBoolean	boolean
    //   42	5	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	9	42	finally
    //   13	22	42	finally
    //   22	26	42	finally
    //   30	39	42	finally
  }
  
  public static b b()
  {
    a(true);
    return c;
  }
  
  public static void c()
  {
    b.b(ViberApplication.getInstance());
  }
  
  public static void d()
  {
    a(false);
  }
  
  private static b e()
  {
    b localb = new b(a, "dexlib");
    localb.a("DexLib.zip", "com.viber.voip.util.http.HttpRequestFactoryImpl");
    return localb;
  }
  
  private static b f()
  {
    b localb = new b(a, "zoobe");
    localb.b("Zoobe.zip");
    return localb;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.c.g
 * JD-Core Version:    0.7.0.1
 */