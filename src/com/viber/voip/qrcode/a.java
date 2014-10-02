package com.viber.voip.qrcode;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.Parameters;
import com.viber.voip.util.b.j;
import java.util.ArrayList;
import java.util.Collection;

final class a
  implements Camera.AutoFocusCallback
{
  private static final String a = a.class.getSimpleName();
  private static final Collection<String> b = new ArrayList(2);
  private boolean c;
  private boolean d;
  private final boolean e;
  private final Camera f;
  private com.viber.voip.util.b.a<?, ?, ?> g;
  
  static
  {
    b.add("auto");
    b.add("macro");
  }
  
  a(Context paramContext, Camera paramCamera)
  {
    this.f = paramCamera;
    String str = paramCamera.getParameters().getFocusMode();
    this.e = b.contains(str);
    a();
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 75	com/viber/voip/qrcode/a:c	Z
    //   6: ifne +37 -> 43
    //   9: aload_0
    //   10: getfield 77	com/viber/voip/qrcode/a:g	Lcom/viber/voip/util/b/a;
    //   13: ifnonnull +30 -> 43
    //   16: new 79	com/viber/voip/qrcode/c
    //   19: dup
    //   20: aload_0
    //   21: aconst_null
    //   22: invokespecial 82	com/viber/voip/qrcode/c:<init>	(Lcom/viber/voip/qrcode/a;Lcom/viber/voip/qrcode/b;)V
    //   25: astore_2
    //   26: aload_2
    //   27: getstatic 87	com/viber/voip/util/b/a:b	Ljava/util/concurrent/Executor;
    //   30: iconst_0
    //   31: anewarray 4	java/lang/Object
    //   34: invokevirtual 90	com/viber/voip/qrcode/c:a	(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/viber/voip/util/b/a;
    //   37: pop
    //   38: aload_0
    //   39: aload_2
    //   40: putfield 77	com/viber/voip/qrcode/a:g	Lcom/viber/voip/util/b/a;
    //   43: aload_0
    //   44: monitorexit
    //   45: return
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    //   51: astore_3
    //   52: goto -9 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	a
    //   46	4	1	localObject	Object
    //   25	15	2	localc	c
    //   51	1	3	localRejectedExecutionException	java.util.concurrent.RejectedExecutionException
    // Exception table:
    //   from	to	target	type
    //   2	26	46	finally
    //   26	43	46	finally
    //   26	43	51	java/util/concurrent/RejectedExecutionException
  }
  
  private void d()
  {
    try
    {
      if (this.g != null)
      {
        if (this.g.a() != j.c) {
          this.g.a(true);
        }
        this.g = null;
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 69	com/viber/voip/qrcode/a:e	Z
    //   6: ifeq +37 -> 43
    //   9: aload_0
    //   10: aconst_null
    //   11: putfield 77	com/viber/voip/qrcode/a:g	Lcom/viber/voip/util/b/a;
    //   14: aload_0
    //   15: getfield 75	com/viber/voip/qrcode/a:c	Z
    //   18: ifne +25 -> 43
    //   21: aload_0
    //   22: getfield 105	com/viber/voip/qrcode/a:d	Z
    //   25: istore_2
    //   26: iload_2
    //   27: ifne +16 -> 43
    //   30: aload_0
    //   31: getfield 53	com/viber/voip/qrcode/a:f	Landroid/hardware/Camera;
    //   34: aload_0
    //   35: invokevirtual 109	android/hardware/Camera:autoFocus	(Landroid/hardware/Camera$AutoFocusCallback;)V
    //   38: aload_0
    //   39: iconst_1
    //   40: putfield 105	com/viber/voip/qrcode/a:d	Z
    //   43: aload_0
    //   44: monitorexit
    //   45: return
    //   46: astore_3
    //   47: aload_0
    //   48: invokespecial 111	com/viber/voip/qrcode/a:c	()V
    //   51: goto -8 -> 43
    //   54: astore_1
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	a
    //   54	4	1	localObject	Object
    //   25	2	2	bool	boolean
    //   46	1	3	localRuntimeException	java.lang.RuntimeException
    // Exception table:
    //   from	to	target	type
    //   30	43	46	java/lang/RuntimeException
    //   2	26	54	finally
    //   30	43	54	finally
    //   47	51	54	finally
  }
  
  /* Error */
  void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 75	com/viber/voip/qrcode/a:c	Z
    //   7: aload_0
    //   8: getfield 69	com/viber/voip/qrcode/a:e	Z
    //   11: ifeq +14 -> 25
    //   14: aload_0
    //   15: invokespecial 113	com/viber/voip/qrcode/a:d	()V
    //   18: aload_0
    //   19: getfield 53	com/viber/voip/qrcode/a:f	Landroid/hardware/Camera;
    //   22: invokevirtual 116	android/hardware/Camera:cancelAutoFocus	()V
    //   25: aload_0
    //   26: monitorexit
    //   27: return
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    //   33: astore_2
    //   34: goto -9 -> 25
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	a
    //   28	4	1	localObject	Object
    //   33	1	2	localRuntimeException	java.lang.RuntimeException
    // Exception table:
    //   from	to	target	type
    //   2	18	28	finally
    //   18	25	28	finally
    //   18	25	33	java/lang/RuntimeException
  }
  
  public void onAutoFocus(boolean paramBoolean, Camera paramCamera)
  {
    try
    {
      this.d = false;
      c();
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
 * Qualified Name:     com.viber.voip.qrcode.a
 * JD-Core Version:    0.7.0.1
 */