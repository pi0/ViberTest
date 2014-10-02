package com.viber.service.contacts.sync;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.at;
import com.viber.voip.contacts.c.d.au;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public final class a
  implements au
{
  private static final String a = a.class.getSimpleName();
  private static long b = 10000L;
  private static long c = 120000L;
  private static long d = 10000L;
  private static long e = 20000L;
  private Context f = ViberApplication.getInstance();
  private Handler g = dc.a(dk.c);
  private at h = ViberApplication.getInstance().getContactManager().d();
  private boolean i;
  private boolean j;
  private boolean k;
  private Runnable l = new b(this);
  private Runnable m = new c(this);
  private Runnable n = new d(this);
  private Runnable o = new e(this);
  
  private a()
  {
    this.h.a(this);
  }
  
  public static a a()
  {
    return f.a();
  }
  
  /* Error */
  private void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 124	com/viber/service/contacts/sync/a:i	Z
    //   6: ifeq +37 -> 43
    //   9: aload_0
    //   10: getfield 97	com/viber/service/contacts/sync/a:g	Landroid/os/Handler;
    //   13: aload_0
    //   14: getfield 62	com/viber/service/contacts/sync/a:l	Ljava/lang/Runnable;
    //   17: invokevirtual 137	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   20: aload_0
    //   21: getfield 97	com/viber/service/contacts/sync/a:g	Landroid/os/Handler;
    //   24: aload_0
    //   25: getfield 62	com/viber/service/contacts/sync/a:l	Ljava/lang/Runnable;
    //   28: getstatic 42	com/viber/service/contacts/sync/a:b	J
    //   31: invokevirtual 141	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   34: pop
    //   35: aload_0
    //   36: iconst_0
    //   37: putfield 131	com/viber/service/contacts/sync/a:k	Z
    //   40: aload_0
    //   41: monitorexit
    //   42: return
    //   43: aload_0
    //   44: iconst_1
    //   45: putfield 131	com/viber/service/contacts/sync/a:k	Z
    //   48: goto -8 -> 40
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	a
    //   51	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	40	51	finally
    //   43	48	51	finally
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (paramInt == 4)
    {
      this.g.removeCallbacks(this.o);
      this.g.postDelayed(this.o, e);
      this.h.b(this);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      ViberApplication.preferences().a(j.R(), paramBoolean);
      d();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b() {}
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 149	com/viber/voip/ViberApplication:preferences	()Lcom/viber/voip/settings/l;
    //   5: ldc 163
    //   7: iconst_1
    //   8: invokeinterface 159 3 0
    //   13: pop
    //   14: aload_0
    //   15: getfield 124	com/viber/service/contacts/sync/a:i	Z
    //   18: ifeq +37 -> 55
    //   21: aload_0
    //   22: getfield 97	com/viber/service/contacts/sync/a:g	Landroid/os/Handler;
    //   25: aload_0
    //   26: getfield 67	com/viber/service/contacts/sync/a:m	Ljava/lang/Runnable;
    //   29: invokevirtual 137	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   32: aload_0
    //   33: getfield 97	com/viber/service/contacts/sync/a:g	Landroid/os/Handler;
    //   36: aload_0
    //   37: getfield 67	com/viber/service/contacts/sync/a:m	Ljava/lang/Runnable;
    //   40: getstatic 46	com/viber/service/contacts/sync/a:c	J
    //   43: invokevirtual 141	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   46: pop
    //   47: aload_0
    //   48: iconst_0
    //   49: putfield 131	com/viber/service/contacts/sync/a:k	Z
    //   52: aload_0
    //   53: monitorexit
    //   54: return
    //   55: aload_0
    //   56: iconst_1
    //   57: putfield 131	com/viber/service/contacts/sync/a:k	Z
    //   60: goto -8 -> 52
    //   63: astore_1
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_1
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	a
    //   63	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	52	63	finally
    //   55	60	63	finally
  }
  
  /* Error */
  public void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 124	com/viber/service/contacts/sync/a:i	Z
    //   6: ifeq +37 -> 43
    //   9: aload_0
    //   10: getfield 97	com/viber/service/contacts/sync/a:g	Landroid/os/Handler;
    //   13: aload_0
    //   14: getfield 72	com/viber/service/contacts/sync/a:n	Ljava/lang/Runnable;
    //   17: invokevirtual 137	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   20: aload_0
    //   21: getfield 97	com/viber/service/contacts/sync/a:g	Landroid/os/Handler;
    //   24: aload_0
    //   25: getfield 72	com/viber/service/contacts/sync/a:n	Ljava/lang/Runnable;
    //   28: getstatic 48	com/viber/service/contacts/sync/a:d	J
    //   31: invokevirtual 141	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   34: pop
    //   35: aload_0
    //   36: iconst_0
    //   37: putfield 127	com/viber/service/contacts/sync/a:j	Z
    //   40: aload_0
    //   41: monitorexit
    //   42: return
    //   43: aload_0
    //   44: iconst_1
    //   45: putfield 127	com/viber/service/contacts/sync/a:j	Z
    //   48: goto -8 -> 40
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	a
    //   51	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	40	51	finally
    //   43	48	51	finally
  }
  
  public void e()
  {
    try
    {
      Intent localIntent = new Intent("com.viber.voip.action.ACTION_REMOVE_ACCOUNT");
      this.f.startService(localIntent);
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
 * Qualified Name:     com.viber.service.contacts.sync.a
 * JD-Core Version:    0.7.0.1
 */