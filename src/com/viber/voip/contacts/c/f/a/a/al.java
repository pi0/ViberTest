package com.viber.voip.contacts.c.f.a.a;

import android.database.ContentObserver;
import android.os.Handler;
import com.viber.provider.contacts.e;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.settings.m;
import com.viber.voip.util.fe;
import java.util.concurrent.atomic.AtomicBoolean;

public class al
  extends ContentObserver
  implements aj, m
{
  private static final String a = al.class.getSimpleName();
  private final n b;
  private final ab c;
  private final com.viber.voip.contacts.c.d.at d;
  private final a e;
  private final ViberApplication f;
  private final Handler g = dc.a(dk.c);
  private final fe h;
  private ae i;
  private boolean j;
  private boolean k;
  private AtomicBoolean l = new AtomicBoolean();
  private boolean m;
  private boolean n;
  private boolean o;
  
  public al(ViberApplication paramViberApplication, a parama, fe paramfe)
  {
    super(dc.a(dk.c));
    this.e = parama;
    this.h = paramfe;
    this.f = paramViberApplication;
    this.d = com.viber.voip.contacts.c.f.a.a(paramViberApplication);
    this.c = new ab(paramViberApplication, this, this.g);
    this.b = new n(this.f);
    this.n = ViberApplication.preferences().b(j.t(), j.u());
    f();
  }
  
  private void a(au paramau)
  {
    if ((!ViberApplication.isActivated()) && (paramau == au.a)) {}
    do
    {
      return;
      if ((this.i == null) || (this.j))
      {
        b(paramau);
        return;
      }
      if (paramau == au.a)
      {
        h();
        return;
      }
      if (paramau == au.b)
      {
        this.c.a(this.n, this.i, 0L);
        return;
      }
      if (paramau == au.f)
      {
        this.c.a(this.i);
        return;
      }
      if (paramau == au.d)
      {
        this.c.b(this.i);
        return;
      }
      if (paramau == au.c)
      {
        if (!this.n)
        {
          this.c.c(this.i);
          return;
        }
        a(au.e);
        return;
      }
    } while (paramau != au.e);
    this.d.a(1);
    g();
  }
  
  private void b(au paramau)
  {
    this.h.a(0, null, e.a, new String[] { "COUNT(*)", "GROUP_CONCAT(''''||contact_id||'_'||_id||'_'||version||'_'||starred||'''')", "GROUP_CONCAT(_id)", "GROUP_CONCAT(contact_id)" }, null, null, null, new at(this, paramau), false, false, false);
  }
  
  private void f()
  {
    if (this.n)
    {
      a(true);
      ViberApplication.preferences().a(this);
      return;
    }
    this.c.a(new am(this));
  }
  
  private void g()
  {
    this.g.postDelayed(new an(this), 1000L);
  }
  
  private void h()
  {
    for (;;)
    {
      try
      {
        if (this.l.get())
        {
          this.k = true;
          return;
        }
        this.l.set(true);
        if (this.b.a()) {
          this.b.a(new ao(this));
        } else {
          a(au.b);
        }
      }
      finally {}
    }
  }
  
  /* Error */
  private void i()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 231	com/viber/voip/contacts/c/f/a/a/al:k	Z
    //   6: ifeq +18 -> 24
    //   9: aload_0
    //   10: iconst_0
    //   11: putfield 231	com/viber/voip/contacts/c/f/a/a/al:k	Z
    //   14: aload_0
    //   15: getstatic 141	com/viber/voip/contacts/c/f/a/a/au:b	Lcom/viber/voip/contacts/c/f/a/a/au;
    //   18: invokespecial 125	com/viber/voip/contacts/c/f/a/a/al:a	(Lcom/viber/voip/contacts/c/f/a/a/au;)V
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: aload_0
    //   25: getfield 65	com/viber/voip/contacts/c/f/a/a/al:l	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   28: iconst_0
    //   29: invokevirtual 234	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   32: goto -11 -> 21
    //   35: astore_1
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_1
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	al
    //   35	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	21	35	finally
    //   24	32	35	finally
  }
  
  public void a()
  {
    a(false);
    ViberApplication.preferences().b(this);
  }
  
  public void a(af paramaf)
  {
    this.e.a(paramaf.a, paramaf.b, new ap(this, paramaf));
  }
  
  public void a(ag paramag)
  {
    if (paramag.a)
    {
      this.e.a(true, paramag.b, new ar(this));
      return;
    }
    a(au.c);
  }
  
  public void a(ah paramah)
  {
    if (paramah.a)
    {
      this.e.a(false, paramah.b, new aq(this));
      return;
    }
    a(au.d);
  }
  
  public void a(ai paramai)
  {
    if (paramai.a)
    {
      this.e.a(paramai.b, new as(this));
      return;
    }
    a(au.e);
  }
  
  protected void a(String paramString) {}
  
  /* Error */
  public void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: ifeq +40 -> 43
    //   6: aload_0
    //   7: getfield 296	com/viber/voip/contacts/c/f/a/a/al:m	Z
    //   10: ifne +33 -> 43
    //   13: aload_0
    //   14: iconst_1
    //   15: putfield 296	com/viber/voip/contacts/c/f/a/a/al:m	Z
    //   18: aload_0
    //   19: getfield 73	com/viber/voip/contacts/c/f/a/a/al:f	Lcom/viber/voip/ViberApplication;
    //   22: invokevirtual 300	com/viber/voip/ViberApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   25: getstatic 305	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   28: iconst_1
    //   29: aload_0
    //   30: invokevirtual 311	android/content/ContentResolver:registerContentObserver	(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    //   33: aload_0
    //   34: getstatic 133	com/viber/voip/contacts/c/f/a/a/au:a	Lcom/viber/voip/contacts/c/f/a/a/au;
    //   37: invokespecial 125	com/viber/voip/contacts/c/f/a/a/al:a	(Lcom/viber/voip/contacts/c/f/a/a/au;)V
    //   40: aload_0
    //   41: monitorexit
    //   42: return
    //   43: iload_1
    //   44: ifne -4 -> 40
    //   47: aload_0
    //   48: getfield 296	com/viber/voip/contacts/c/f/a/a/al:m	Z
    //   51: ifeq -11 -> 40
    //   54: aload_0
    //   55: iconst_0
    //   56: putfield 296	com/viber/voip/contacts/c/f/a/a/al:m	Z
    //   59: aload_0
    //   60: getfield 73	com/viber/voip/contacts/c/f/a/a/al:f	Lcom/viber/voip/ViberApplication;
    //   63: invokevirtual 300	com/viber/voip/ViberApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   66: aload_0
    //   67: invokevirtual 315	android/content/ContentResolver:unregisterContentObserver	(Landroid/database/ContentObserver;)V
    //   70: goto -30 -> 40
    //   73: astore_2
    //   74: aload_0
    //   75: monitorexit
    //   76: aload_2
    //   77: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	78	0	this	al
    //   0	78	1	paramBoolean	boolean
    //   73	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   6	40	73	finally
    //   47	70	73	finally
  }
  
  public void b()
  {
    a(au.a);
  }
  
  public boolean c()
  {
    return this.l.get();
  }
  
  public void d()
  {
    this.j = true;
  }
  
  public boolean deliverSelfNotifications()
  {
    return false;
  }
  
  public void onChange(boolean paramBoolean)
  {
    try
    {
      a(au.a);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    boolean bool = paraml.b(j.t(), j.u());
    if (bool != this.n)
    {
      a("onSharedPreferenceChanged: showAll " + bool);
      this.n = bool;
      b();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.al
 * JD-Core Version:    0.7.0.1
 */