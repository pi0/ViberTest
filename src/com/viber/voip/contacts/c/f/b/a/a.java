package com.viber.voip.contacts.c.f.b.a;

import android.os.Handler;
import com.viber.jni.CAddressBookInfo;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.f.b.q;
import com.viber.voip.contacts.c.f.b.r;
import com.viber.voip.contacts.c.f.b.t;
import com.viber.voip.contacts.c.f.b.u;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.Map;

public class a
  extends r
{
  private static final String k = a.class.getSimpleName();
  private final Runnable A = new e(this);
  private final Runnable B = new f(this);
  private final Runnable C = new g(this);
  private final Runnable D = new h(this);
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p = true;
  private boolean q;
  private boolean r;
  private int s;
  private int t;
  private int u;
  private int v;
  private String w = "";
  private final com.viber.voip.contacts.c.e.b x;
  private final Handler y;
  private final Runnable z = new b(this);
  
  public a(ViberApplication paramViberApplication, q paramq)
  {
    super(paramViberApplication, paramq);
    if (this.b) {
      ViberApplication.preferences().a("sync_vertion", 1);
    }
    this.x = com.viber.voip.contacts.c.e.b.a(paramViberApplication);
    this.y = dc.a(dk.h);
    this.u = this.i.b();
    this.g.a(true, null, new i(this));
  }
  
  private void a(long paramLong, boolean paramBoolean)
  {
    this.x.postDelayed(new k(this), paramLong);
  }
  
  private void a(m paramm)
  {
    for (;;)
    {
      try
      {
        if ((this.j == null) || (!this.o))
        {
          g();
          return;
        }
        if (paramm == m.a)
        {
          if (h()) {
            continue;
          }
          this.y.postDelayed(this.C, 2000L);
          continue;
        }
        if (paramm != m.b) {
          break label85;
        }
      }
      finally {}
      this.y.removeCallbacks(this.C);
      i();
      continue;
      label85:
      if (paramm == m.c)
      {
        if (this.b) {
          this.i.a(2);
        }
        k();
      }
      else if (paramm == m.d)
      {
        a(1000L, true);
      }
      else if (paramm == m.g)
      {
        this.f.b(this.v);
        a(10000L, true);
      }
      else if (paramm == m.e)
      {
        if (this.b) {
          this.i.a(3);
        }
        this.f.a(this.u);
        a(10000L, false);
      }
      else if ((paramm == m.f) && (!this.n))
      {
        this.n = true;
        if (this.b) {
          this.x.postDelayed(this.A, 15000L);
        }
        this.f.a(this.u);
        a(10000L, false);
      }
    }
  }
  
  private void a(boolean paramBoolean, String paramString)
  {
    try
    {
      this.m = false;
      this.g.a(paramBoolean, paramString, new d(this, paramBoolean));
      return;
    }
    finally {}
  }
  
  private void f()
  {
    if (ViberApplication.preferences().b("sync_vertion", -1) != 1)
    {
      ViberApplication.preferences().a("sync_vertion", 1);
      a(true, null);
    }
  }
  
  private void g()
  {
    this.n = false;
    this.l = false;
    this.m = false;
    this.s = 0;
  }
  
  /* Error */
  private boolean h()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 252	com/viber/voip/contacts/c/f/b/a/a:l	Z
    //   8: ifeq +14 -> 22
    //   11: aload_0
    //   12: iconst_1
    //   13: putfield 228	com/viber/voip/contacts/c/f/b/a/a:m	Z
    //   16: iconst_0
    //   17: istore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: iload_1
    //   21: ireturn
    //   22: aload_0
    //   23: getfield 114	com/viber/voip/contacts/c/f/b/a/a:y	Landroid/os/Handler;
    //   26: aload_0
    //   27: getfield 67	com/viber/voip/contacts/c/f/b/a/a:B	Ljava/lang/Runnable;
    //   30: ldc2_w 253
    //   33: invokevirtual 181	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   36: pop
    //   37: aload_0
    //   38: iconst_1
    //   39: putfield 252	com/viber/voip/contacts/c/f/b/a/a:l	Z
    //   42: aload_0
    //   43: getstatic 183	com/viber/voip/contacts/c/f/b/a/m:b	Lcom/viber/voip/contacts/c/f/b/a/m;
    //   46: invokespecial 156	com/viber/voip/contacts/c/f/b/a/a:a	(Lcom/viber/voip/contacts/c/f/b/a/m;)V
    //   49: goto -31 -> 18
    //   52: astore_2
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_2
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	a
    //   1	20	1	bool	boolean
    //   52	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	16	52	finally
    //   22	49	52	finally
  }
  
  private void i()
  {
    for (;;)
    {
      try
      {
        boolean bool = t.a(this.d);
        if (bool)
        {
          this.s = (1 + this.s);
          bool = true;
        }
        if (!this.c)
        {
          a(m.f);
          return;
        }
        if ((bool) && (this.s > 1) && (this.s < 10))
        {
          a(m.e);
          a(m.a);
        }
        else
        {
          a(m.c);
        }
      }
      finally {}
    }
  }
  
  /* Error */
  private void j()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 114	com/viber/voip/contacts/c/f/b/a/a:y	Landroid/os/Handler;
    //   6: aload_0
    //   7: getfield 67	com/viber/voip/contacts/c/f/b/a/a:B	Ljava/lang/Runnable;
    //   10: invokevirtual 187	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   13: aload_0
    //   14: getfield 228	com/viber/voip/contacts/c/f/b/a/a:m	Z
    //   17: ifeq +33 -> 50
    //   20: aload_0
    //   21: iconst_0
    //   22: putfield 228	com/viber/voip/contacts/c/f/b/a/a:m	Z
    //   25: aload_0
    //   26: getfield 114	com/viber/voip/contacts/c/f/b/a/a:y	Landroid/os/Handler;
    //   29: aload_0
    //   30: getfield 67	com/viber/voip/contacts/c/f/b/a/a:B	Ljava/lang/Runnable;
    //   33: ldc2_w 253
    //   36: invokevirtual 181	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   39: pop
    //   40: aload_0
    //   41: getstatic 183	com/viber/voip/contacts/c/f/b/a/m:b	Lcom/viber/voip/contacts/c/f/b/a/m;
    //   44: invokespecial 156	com/viber/voip/contacts/c/f/b/a/a:a	(Lcom/viber/voip/contacts/c/f/b/a/m;)V
    //   47: aload_0
    //   48: monitorexit
    //   49: return
    //   50: aload_0
    //   51: iconst_0
    //   52: putfield 241	com/viber/voip/contacts/c/f/b/a/a:s	I
    //   55: aload_0
    //   56: iconst_0
    //   57: putfield 252	com/viber/voip/contacts/c/f/b/a/a:l	Z
    //   60: goto -13 -> 47
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
    //   2	47	63	finally
    //   50	60	63	finally
  }
  
  private void k()
  {
    this.g.a(false, "contact_hash IN (" + this.w + ")", new l(this));
  }
  
  private void l()
  {
    this.g.a(true, "contact_hash NOT IN (" + this.w + ")", new c(this));
  }
  
  private void m()
  {
    a(true, null);
  }
  
  protected void a(String paramString) {}
  
  /* Error */
  public void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 166	com/viber/voip/contacts/c/f/b/a/a:o	Z
    //   8: ifne +53 -> 61
    //   11: iload_1
    //   12: ifeq +49 -> 61
    //   15: aload_0
    //   16: iload_1
    //   17: putfield 166	com/viber/voip/contacts/c/f/b/a/a:o	Z
    //   20: iload_2
    //   21: ifeq +37 -> 58
    //   24: aload_0
    //   25: getfield 118	com/viber/voip/contacts/c/f/b/a/a:i	Lcom/viber/voip/contacts/c/f/a;
    //   28: invokevirtual 301	com/viber/voip/contacts/c/f/a:d	()I
    //   31: ifeq +27 -> 58
    //   34: aload_0
    //   35: iconst_1
    //   36: putfield 224	com/viber/voip/contacts/c/f/b/a/a:n	Z
    //   39: aload_0
    //   40: getfield 101	com/viber/voip/contacts/c/f/b/a/a:x	Lcom/viber/voip/contacts/c/e/b;
    //   43: new 303	com/viber/voip/contacts/c/f/b/a/j
    //   46: dup
    //   47: aload_0
    //   48: invokespecial 304	com/viber/voip/contacts/c/f/b/a/j:<init>	(Lcom/viber/voip/contacts/c/f/b/a/a;)V
    //   51: ldc2_w 225
    //   54: invokevirtual 149	com/viber/voip/contacts/c/e/b:postDelayed	(Ljava/lang/Runnable;J)Z
    //   57: pop
    //   58: aload_0
    //   59: monitorexit
    //   60: return
    //   61: iconst_0
    //   62: istore_2
    //   63: goto -48 -> 15
    //   66: astore_3
    //   67: aload_0
    //   68: monitorexit
    //   69: aload_3
    //   70: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	this	a
    //   0	71	1	paramBoolean	boolean
    //   1	62	2	i	int
    //   66	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	11	66	finally
    //   15	20	66	finally
    //   24	58	66	finally
  }
  
  /* Error */
  public int b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 245	com/viber/voip/contacts/c/f/b/a/a:q	Z
    //   6: ifeq +43 -> 49
    //   9: aload_0
    //   10: iconst_1
    //   11: putfield 256	com/viber/voip/contacts/c/f/b/a/a:r	Z
    //   14: aload_0
    //   15: getfield 101	com/viber/voip/contacts/c/f/b/a/a:x	Lcom/viber/voip/contacts/c/e/b;
    //   18: aload_0
    //   19: getfield 72	com/viber/voip/contacts/c/f/b/a/a:C	Ljava/lang/Runnable;
    //   22: invokevirtual 305	com/viber/voip/contacts/c/e/b:removeCallbacks	(Ljava/lang/Runnable;)V
    //   25: aload_0
    //   26: getfield 101	com/viber/voip/contacts/c/f/b/a/a:x	Lcom/viber/voip/contacts/c/e/b;
    //   29: aload_0
    //   30: getfield 72	com/viber/voip/contacts/c/f/b/a/a:C	Ljava/lang/Runnable;
    //   33: ldc2_w 177
    //   36: invokevirtual 149	com/viber/voip/contacts/c/e/b:postDelayed	(Ljava/lang/Runnable;J)Z
    //   39: pop
    //   40: aload_0
    //   41: getfield 125	com/viber/voip/contacts/c/f/b/a/a:u	I
    //   44: istore_3
    //   45: aload_0
    //   46: monitorexit
    //   47: iload_3
    //   48: ireturn
    //   49: aload_0
    //   50: iconst_0
    //   51: putfield 140	com/viber/voip/contacts/c/f/b/a/a:t	I
    //   54: aload_0
    //   55: ldc 48
    //   57: putfield 50	com/viber/voip/contacts/c/f/b/a/a:w	Ljava/lang/String;
    //   60: aload_0
    //   61: iconst_0
    //   62: putfield 256	com/viber/voip/contacts/c/f/b/a/a:r	Z
    //   65: aload_0
    //   66: iconst_1
    //   67: putfield 245	com/viber/voip/contacts/c/f/b/a/a:q	Z
    //   70: aload_0
    //   71: getfield 101	com/viber/voip/contacts/c/f/b/a/a:x	Lcom/viber/voip/contacts/c/e/b;
    //   74: aload_0
    //   75: getfield 77	com/viber/voip/contacts/c/f/b/a/a:D	Ljava/lang/Runnable;
    //   78: ldc2_w 306
    //   81: invokevirtual 149	com/viber/voip/contacts/c/e/b:postDelayed	(Ljava/lang/Runnable;J)Z
    //   84: pop
    //   85: aload_0
    //   86: invokevirtual 309	com/viber/voip/contacts/c/f/b/a/a:e	()V
    //   89: goto -49 -> 40
    //   92: astore_1
    //   93: aload_0
    //   94: monitorexit
    //   95: aload_1
    //   96: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	this	a
    //   92	4	1	localObject	Object
    //   44	4	3	i	int
    // Exception table:
    //   from	to	target	type
    //   2	40	92	finally
    //   40	45	92	finally
    //   49	89	92	finally
  }
  
  public void c()
  {
    this.u = this.j.generateSequence();
    int i = ViberApplication.getInstance().getAddressBookVersion();
    if (this.j != null) {
      this.j.shareAddressBookList(new CAddressBookInfo[0], this.u, i);
    }
  }
  
  protected void d()
  {
    if (this.c)
    {
      this.x.removeCallbacks(this.A);
      if (this.n)
      {
        this.n = false;
        a(m.a);
      }
      if (!this.b) {
        f();
      }
    }
  }
  
  public void e()
  {
    a(m.a);
  }
  
  public boolean onRegisteredNumbers(boolean paramBoolean1, boolean paramBoolean2, Map<String, String> paramMap, int paramInt1, boolean paramBoolean3, String paramString1, String paramString2, int paramInt2, int paramInt3)
  {
    super.onRegisteredNumbers(paramBoolean1, paramBoolean2, paramMap, paramInt1, paramBoolean3, paramString1, paramString2, paramInt2, paramInt3);
    if (paramInt1 == 0) {}
    for (int i = 1;; i = 0)
    {
      this.v = paramInt1;
      this.p = true;
      if ((paramBoolean2) && (i == 0))
      {
        a(m.g);
        this.y.removeCallbacks(this.z);
      }
      return true;
    }
  }
  
  public void onShareAddressBook()
  {
    if (!this.f.k()) {
      e();
    }
  }
  
  public void onShareAddressBookReply(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (!paramBoolean)
    {
      this.w = "";
      this.t = 0;
      a(m.e);
      a(m.a);
      return;
    }
    this.p = false;
    this.i.b(paramInt1);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.a.a
 * JD-Core Version:    0.7.0.1
 */