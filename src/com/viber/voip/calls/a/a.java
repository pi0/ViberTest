package com.viber.voip.calls.a;

import android.os.Handler;
import android.support.v4.util.LruCache;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.entities.AggregatedCallEntity;
import com.viber.voip.calls.entities.impl.AggregatedCallEntityImpl;
import com.viber.voip.calls.u;
import com.viber.voip.calls.x;
import com.viber.voip.contacts.c.d.e;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.service.EntityService;
import com.viber.voip.messages.orm.service.ServiceCallback;
import java.util.ArrayList;
import java.util.List;

public class a
  implements x, e, AsyncEntityManager.FillCursorCompleteCallback, EntityService<AggregatedCallEntity>
{
  private static final String a = a.class.getSimpleName();
  private final ServiceCallback b;
  private AsyncEntityManager c;
  private String d;
  private boolean e;
  private int f;
  private int g;
  private Handler h = dc.a(dk.h);
  private LruCache<Integer, AggregatedCallEntity> i = new b(this, 20);
  private Runnable j = new c(this);
  
  public a(ServiceCallback paramServiceCallback)
  {
    this.b = paramServiceCallback;
    this.c = d.a(AggregatedCallEntityImpl.a, this);
  }
  
  /* Error */
  private void b(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: putfield 89	com/viber/voip/calls/a/a:g	I
    //   7: aload_0
    //   8: getfield 94	com/viber/voip/calls/a/a:e	Z
    //   11: ifne +27 -> 38
    //   14: invokestatic 100	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   17: invokevirtual 104	com/viber/voip/ViberApplication:getContactManager	()Lcom/viber/voip/contacts/c/d/b;
    //   20: aload_0
    //   21: invokeinterface 109 2 0
    //   26: invokestatic 100	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   29: invokevirtual 113	com/viber/voip/ViberApplication:getRecentCallsManager	()Lcom/viber/voip/calls/u;
    //   32: aload_0
    //   33: invokeinterface 118 2 0
    //   38: iload_1
    //   39: ifne +17 -> 56
    //   42: aload_0
    //   43: getfield 86	com/viber/voip/calls/a/a:c	Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;
    //   46: aload_0
    //   47: getfield 120	com/viber/voip/calls/a/a:d	Ljava/lang/String;
    //   50: invokestatic 123	com/viber/voip/calls/a/d:a	(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;)V
    //   53: aload_0
    //   54: monitorexit
    //   55: return
    //   56: iload_1
    //   57: iconst_1
    //   58: if_icmpne -5 -> 53
    //   61: aload_0
    //   62: getfield 86	com/viber/voip/calls/a/a:c	Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;
    //   65: aload_0
    //   66: getfield 120	com/viber/voip/calls/a/a:d	Ljava/lang/String;
    //   69: invokestatic 125	com/viber/voip/calls/a/d:b	(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;)V
    //   72: goto -19 -> 53
    //   75: astore_2
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_2
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	a
    //   0	80	1	paramInt	int
    //   75	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	38	75	finally
    //   42	53	75	finally
    //   61	72	75	finally
  }
  
  public AggregatedCallEntity a(int paramInt)
  {
    AggregatedCallEntity localAggregatedCallEntity = (AggregatedCallEntity)this.i.get(Integer.valueOf(paramInt));
    if (localAggregatedCallEntity == null)
    {
      localAggregatedCallEntity = (AggregatedCallEntity)this.c.getEntity(paramInt);
      if (localAggregatedCallEntity != null) {
        this.i.put(Integer.valueOf(paramInt), localAggregatedCallEntity);
      }
    }
    return localAggregatedCallEntity;
  }
  
  public void a()
  {
    if (this.e) {
      b(this.g);
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    this.d = paramString;
    b(paramInt);
  }
  
  public void a(String paramString)
  {
    this.d = paramString;
    b(this.g);
    this.h.removeCallbacks(this.j);
    this.h.postDelayed(this.j, 300L);
  }
  
  public int b()
  {
    return this.f;
  }
  
  public String c()
  {
    return this.d;
  }
  
  public void d()
  {
    if (this.c != null) {
      this.c.closeCursor();
    }
    this.e = false;
    ViberApplication.getInstance().getContactManager().b(this);
    ViberApplication.getInstance().getRecentCallsManager().b(this);
  }
  
  public List<Integer> e()
  {
    ArrayList localArrayList = new ArrayList();
    for (int k = 0; k < this.c.getPositionsSize(); k++) {
      localArrayList.add(Integer.valueOf(k));
    }
    return localArrayList;
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
    return this.c.getCount();
  }
  
  public boolean isInit()
  {
    return this.e;
  }
  
  /* Error */
  public void onDataReady(com.viber.voip.messages.orm.manager.EntityManager paramEntityManager, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 65	com/viber/voip/calls/a/a:i	Landroid/support/v4/util/LruCache;
    //   6: invokevirtual 206	android/support/v4/util/LruCache:evictAll	()V
    //   9: aload_0
    //   10: iconst_1
    //   11: aload_0
    //   12: getfield 167	com/viber/voip/calls/a/a:f	I
    //   15: iadd
    //   16: putfield 167	com/viber/voip/calls/a/a:f	I
    //   19: aload_0
    //   20: getfield 74	com/viber/voip/calls/a/a:b	Lcom/viber/voip/messages/orm/service/ServiceCallback;
    //   23: ifnull +25 -> 48
    //   26: aload_0
    //   27: getfield 94	com/viber/voip/calls/a/a:e	Z
    //   30: ifne +21 -> 51
    //   33: aload_0
    //   34: iconst_1
    //   35: putfield 94	com/viber/voip/calls/a/a:e	Z
    //   38: aload_0
    //   39: getfield 74	com/viber/voip/calls/a/a:b	Lcom/viber/voip/messages/orm/service/ServiceCallback;
    //   42: aload_0
    //   43: invokeinterface 211 2 0
    //   48: aload_0
    //   49: monitorexit
    //   50: return
    //   51: aload_0
    //   52: getfield 74	com/viber/voip/calls/a/a:b	Lcom/viber/voip/messages/orm/service/ServiceCallback;
    //   55: aload_0
    //   56: iload_2
    //   57: iconst_0
    //   58: anewarray 213	com/viber/voip/messages/orm/entity/Entity
    //   61: invokeinterface 217 4 0
    //   66: goto -18 -> 48
    //   69: astore_3
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_3
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	a
    //   0	74	1	paramEntityManager	com.viber.voip.messages.orm.manager.EntityManager
    //   0	74	2	paramInt	int
    //   69	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	48	69	finally
    //   51	66	69	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.a.a
 * JD-Core Version:    0.7.0.1
 */