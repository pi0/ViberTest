package com.viber.voip.contacts.e;

import android.os.Handler;
import android.support.v4.util.LruCache;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.u;
import com.viber.voip.calls.x;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.service.EntityService;
import com.viber.voip.messages.orm.service.ServiceCallback;

public class a
  implements x, com.viber.voip.contacts.a, com.viber.voip.contacts.c.d.e, AsyncEntityManager.FillCursorCompleteCallback, EntityService<com.viber.voip.contacts.b.b>
{
  private static final String b = a.class.getSimpleName();
  final Runnable a = new e(this);
  private ServiceCallback c;
  private h d;
  private h e;
  private AsyncEntityManager f;
  private boolean g;
  private int h;
  private int i;
  private int j;
  private String k;
  private String l;
  private String m;
  private Handler n = dc.a(dk.a);
  private Handler o = dc.a(dk.g);
  private Handler p = dc.a(dk.c);
  private Handler q = dc.a(dk.h);
  private LruCache<Integer, com.viber.voip.contacts.b.b> r = new b(this, 100);
  private Runnable s = new g(this);
  
  public a(ServiceCallback paramServiceCallback)
  {
    this.c = paramServiceCallback;
    this.f = j.a(com.viber.voip.contacts.b.b.e.e, this);
    this.d = new c(this);
    this.e = new d(this);
  }
  
  private void a(boolean paramBoolean)
  {
    if ((this.f != null) && (this.f.closeCursor()) && (paramBoolean)) {
      onDataReady(this.f, this.h);
    }
  }
  
  /* Error */
  private void d(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: putfield 140	com/viber/voip/contacts/e/a:h	I
    //   7: aload_0
    //   8: getfield 147	com/viber/voip/contacts/e/a:g	Z
    //   11: ifne +37 -> 48
    //   14: invokestatic 157	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   17: invokevirtual 161	com/viber/voip/ViberApplication:getContactManager	()Lcom/viber/voip/contacts/c/d/b;
    //   20: aload_0
    //   21: invokeinterface 166 2 0
    //   26: iload_1
    //   27: iconst_2
    //   28: if_icmpeq +8 -> 36
    //   31: iload_1
    //   32: iconst_4
    //   33: if_icmpne +15 -> 48
    //   36: invokestatic 157	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   39: invokevirtual 170	com/viber/voip/ViberApplication:getRecentCallsManager	()Lcom/viber/voip/calls/u;
    //   42: aload_0
    //   43: invokeinterface 175 2 0
    //   48: aload_0
    //   49: getfield 74	com/viber/voip/contacts/e/a:o	Landroid/os/Handler;
    //   52: aload_0
    //   53: getfield 96	com/viber/voip/contacts/e/a:a	Ljava/lang/Runnable;
    //   56: invokevirtual 181	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   59: aload_0
    //   60: getfield 78	com/viber/voip/contacts/e/a:p	Landroid/os/Handler;
    //   63: aload_0
    //   64: getfield 96	com/viber/voip/contacts/e/a:a	Ljava/lang/Runnable;
    //   67: invokevirtual 181	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   70: aload_0
    //   71: getfield 103	com/viber/voip/contacts/e/a:c	Lcom/viber/voip/messages/orm/service/ServiceCallback;
    //   74: ifnull +30 -> 104
    //   77: aload_0
    //   78: getfield 103	com/viber/voip/contacts/e/a:c	Lcom/viber/voip/messages/orm/service/ServiceCallback;
    //   81: invokeinterface 186 1 0
    //   86: ifne +18 -> 104
    //   89: aload_0
    //   90: getfield 78	com/viber/voip/contacts/e/a:p	Landroid/os/Handler;
    //   93: aload_0
    //   94: getfield 96	com/viber/voip/contacts/e/a:a	Ljava/lang/Runnable;
    //   97: invokevirtual 190	android/os/Handler:postAtFrontOfQueue	(Ljava/lang/Runnable;)Z
    //   100: pop
    //   101: aload_0
    //   102: monitorexit
    //   103: return
    //   104: aload_0
    //   105: getfield 78	com/viber/voip/contacts/e/a:p	Landroid/os/Handler;
    //   108: aload_0
    //   109: getfield 96	com/viber/voip/contacts/e/a:a	Ljava/lang/Runnable;
    //   112: invokevirtual 193	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   115: pop
    //   116: goto -15 -> 101
    //   119: astore_2
    //   120: aload_0
    //   121: monitorexit
    //   122: aload_2
    //   123: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	124	0	this	a
    //   0	124	1	paramInt	int
    //   119	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	119	finally
    //   36	48	119	finally
    //   48	101	119	finally
    //   104	116	119	finally
  }
  
  public void a()
  {
    if (this.g) {
      d(this.h);
    }
  }
  
  public void a(String paramString)
  {
    if (paramString != null) {}
    for (String str = PhoneNumberUtils.stripSeparators(paramString);; str = "")
    {
      this.m = str;
      if ((!TextUtils.isEmpty(this.m)) || ((this.h != 2) && (this.h != 4))) {
        break;
      }
      a(true);
      return;
    }
    this.q.removeCallbacks(this.s);
    this.q.postDelayed(this.s, 300L);
  }
  
  public com.viber.voip.contacts.b.e b(int paramInt)
  {
    com.viber.voip.contacts.b.b localb = (com.viber.voip.contacts.b.b)this.r.get(Integer.valueOf(paramInt));
    if (localb != null) {}
    do
    {
      return localb;
      localb = (com.viber.voip.contacts.b.b)this.f.getEntity(paramInt);
    } while (localb == null);
    this.r.put(Integer.valueOf(paramInt), localb);
    return localb;
  }
  
  public void c(int paramInt)
  {
    d(paramInt);
  }
  
  public int c_()
  {
    return 0;
  }
  
  public int d()
  {
    return this.j;
  }
  
  public boolean d_()
  {
    return !TextUtils.isEmpty(this.l);
  }
  
  public void e()
  {
    if (this.f != null) {
      this.f.closeCursor();
    }
    this.g = false;
    ViberApplication.getInstance().getContactManager().b(this);
    ViberApplication.getInstance().getRecentCallsManager().b(this);
  }
  
  public CreatorHelper f()
  {
    return null;
  }
  
  public Entity findEntity(long paramLong)
  {
    return null;
  }
  
  public int getCount()
  {
    return this.f.getCount();
  }
  
  public boolean isInit()
  {
    return this.g;
  }
  
  /* Error */
  public void onDataReady(com.viber.voip.messages.orm.manager.EntityManager paramEntityManager, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 89	com/viber/voip/contacts/e/a:r	Landroid/support/v4/util/LruCache;
    //   6: invokevirtual 270	android/support/v4/util/LruCache:evictAll	()V
    //   9: aload_0
    //   10: iload_2
    //   11: putfield 272	com/viber/voip/contacts/e/a:i	I
    //   14: aload_0
    //   15: iconst_1
    //   16: aload_0
    //   17: getfield 251	com/viber/voip/contacts/e/a:j	I
    //   20: iadd
    //   21: putfield 251	com/viber/voip/contacts/e/a:j	I
    //   24: aload_0
    //   25: getfield 103	com/viber/voip/contacts/e/a:c	Lcom/viber/voip/messages/orm/service/ServiceCallback;
    //   28: ifnull +25 -> 53
    //   31: aload_0
    //   32: getfield 147	com/viber/voip/contacts/e/a:g	Z
    //   35: ifne +21 -> 56
    //   38: aload_0
    //   39: iconst_1
    //   40: putfield 147	com/viber/voip/contacts/e/a:g	Z
    //   43: aload_0
    //   44: getfield 103	com/viber/voip/contacts/e/a:c	Lcom/viber/voip/messages/orm/service/ServiceCallback;
    //   47: aload_0
    //   48: invokeinterface 275 2 0
    //   53: aload_0
    //   54: monitorexit
    //   55: return
    //   56: aload_0
    //   57: getfield 103	com/viber/voip/contacts/e/a:c	Lcom/viber/voip/messages/orm/service/ServiceCallback;
    //   60: aload_0
    //   61: aload_0
    //   62: getfield 272	com/viber/voip/contacts/e/a:i	I
    //   65: iconst_0
    //   66: anewarray 277	com/viber/voip/messages/orm/entity/Entity
    //   69: invokeinterface 281 4 0
    //   74: goto -21 -> 53
    //   77: astore_3
    //   78: aload_0
    //   79: monitorexit
    //   80: aload_3
    //   81: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	82	0	this	a
    //   0	82	1	paramEntityManager	com.viber.voip.messages.orm.manager.EntityManager
    //   0	82	2	paramInt	int
    //   77	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	53	77	finally
    //   56	74	77	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.e.a
 * JD-Core Version:    0.7.0.1
 */