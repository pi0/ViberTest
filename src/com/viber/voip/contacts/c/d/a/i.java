package com.viber.voip.contacts.c.d.a;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.e.b;

public class i
  extends ContentObserver
{
  private static final String a = i.class.getSimpleName();
  private static final Uri b = Uri.parse("content://sms");
  private static final String[] c = { "address", "COUNT(*) as total" };
  private ViberApplication d;
  private boolean e;
  private boolean f;
  private Handler g;
  private b h;
  private m i;
  
  public i(m paramm, Handler paramHandler, ViberApplication paramViberApplication)
  {
    super(paramHandler);
    this.d = paramViberApplication;
    this.g = paramHandler;
    this.i = paramm;
    this.h = b.a(paramViberApplication);
    c();
    g();
  }
  
  private void c()
  {
    this.d.getContentResolver().registerContentObserver(b, true, this);
  }
  
  private void d()
  {
    this.d.getContentResolver().unregisterContentObserver(this);
  }
  
  /* Error */
  private void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 96	com/viber/voip/contacts/c/d/a/i:e	Z
    //   6: ifeq +20 -> 26
    //   9: aload_0
    //   10: iconst_0
    //   11: putfield 96	com/viber/voip/contacts/c/d/a/i:e	Z
    //   14: aload_0
    //   15: iconst_0
    //   16: putfield 98	com/viber/voip/contacts/c/d/a/i:f	Z
    //   19: aload_0
    //   20: invokevirtual 100	com/viber/voip/contacts/c/d/a/i:b	()V
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: aload_0
    //   27: iconst_0
    //   28: putfield 98	com/viber/voip/contacts/c/d/a/i:f	Z
    //   31: goto -8 -> 23
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	i
    //   34	4	1	localObject	java.lang.Object
    // Exception table:
    //   from	to	target	type
    //   2	23	34	finally
    //   26	31	34	finally
  }
  
  private void f()
  {
    this.g.postDelayed(new j(this), 1200000L);
  }
  
  private void g()
  {
    b localb = this.h;
    Uri localUri = b;
    String[] arrayOfString1 = c;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(System.currentTimeMillis() - 1209600000L);
    localb.a(1597, null, localUri, arrayOfString1, "date> ?) Group By (address", arrayOfString2, null, new k(this), false, false);
  }
  
  public void a()
  {
    d();
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      c();
      return;
    }
    d();
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 98	com/viber/voip/contacts/c/d/a/i:f	Z
    //   6: ifeq +11 -> 17
    //   9: aload_0
    //   10: iconst_1
    //   11: putfield 96	com/viber/voip/contacts/c/d/a/i:e	Z
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 98	com/viber/voip/contacts/c/d/a/i:f	Z
    //   22: aload_0
    //   23: invokespecial 71	com/viber/voip/contacts/c/d/a/i:g	()V
    //   26: goto -12 -> 14
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	i
    //   29	4	1	localObject	java.lang.Object
    // Exception table:
    //   from	to	target	type
    //   2	14	29	finally
    //   17	26	29	finally
  }
  
  public void onChange(boolean paramBoolean)
  {
    b();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.a.i
 * JD-Core Version:    0.7.0.1
 */