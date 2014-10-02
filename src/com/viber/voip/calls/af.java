package com.viber.voip.calls;

import android.database.ContentObserver;
import android.util.Pair;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.entities.impl.CallEntityImpl;
import com.viber.voip.calls.entities.impl.e;
import com.viber.voip.calls.entities.impl.g;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public class af
  extends ContentObserver
{
  private static final String a = af.class.getSimpleName();
  private static Set<Long> i = new HashSet();
  private ViberApplication b;
  private t c;
  private a d;
  private am e;
  private boolean f;
  private boolean g;
  private boolean h;
  private Queue<Pair<CallEntityImpl, g>> j = new LinkedList();
  private Map<Object, w> k = new HashMap();
  
  public af(ViberApplication paramViberApplication, am paramam)
  {
    super(dc.a(dk.c));
    e.a(paramViberApplication);
    this.b = paramViberApplication;
    this.e = paramam;
    this.d = new a(this.b);
    a(true);
  }
  
  private void a(al paramal, an paraman)
  {
    this.h = false;
    this.d.a(new ag(this, paramal, paraman));
  }
  
  public static void a(Set<Long> paramSet)
  {
    i = paramSet;
  }
  
  private void b(al paramal, an paraman)
  {
    for (;;)
    {
      try
      {
        if ((this.c == null) || (this.h))
        {
          a(paramal, paraman);
          return;
        }
        if (paramal == al.a)
        {
          this.d.a(new ai(this, paraman));
          continue;
        }
        if (paramal != al.b) {
          break label93;
        }
      }
      finally {}
      this.d.a(i, paraman.a(), new aj(this, paraman), this.c);
      continue;
      label93:
      if (paramal == al.c) {
        this.d.a(new ak(this), this.c);
      }
    }
  }
  
  private void b(CallEntityImpl paramCallEntityImpl, g paramg, w paramw)
  {
    ah localah = new ah(this, paramw, paramCallEntityImpl);
    this.d.a(paramCallEntityImpl, paramg, localah);
  }
  
  private void c()
  {
    for (;;)
    {
      try
      {
        if (this.j.size() > 0)
        {
          Pair localPair = (Pair)this.j.poll();
          w localw = (w)this.k.remove(localPair);
          b((CallEntityImpl)localPair.first, (g)localPair.second, localw);
          return;
        }
        if (this.g)
        {
          this.g = false;
          d();
        }
        else
        {
          this.f = false;
        }
      }
      finally {}
    }
  }
  
  private void d()
  {
    try
    {
      b(al.a, new an(this, null));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a()
  {
    a(false);
  }
  
  /* Error */
  public void a(CallEntityImpl paramCallEntityImpl, g paramg, w paramw)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 192	com/viber/voip/calls/af:f	Z
    //   6: ifeq +42 -> 48
    //   9: new 165	android/util/Pair
    //   12: dup
    //   13: aload_1
    //   14: aload_2
    //   15: invokespecial 198	android/util/Pair:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   18: astore 5
    //   20: aload_0
    //   21: getfield 63	com/viber/voip/calls/af:j	Ljava/util/Queue;
    //   24: aload 5
    //   26: invokeinterface 202 2 0
    //   31: pop
    //   32: aload_0
    //   33: getfield 68	com/viber/voip/calls/af:k	Ljava/util/Map;
    //   36: aload 5
    //   38: aload_3
    //   39: invokeinterface 206 3 0
    //   44: pop
    //   45: aload_0
    //   46: monitorexit
    //   47: return
    //   48: aload_0
    //   49: iconst_1
    //   50: putfield 192	com/viber/voip/calls/af:f	Z
    //   53: aload_0
    //   54: aload_1
    //   55: aload_2
    //   56: aload_3
    //   57: invokespecial 186	com/viber/voip/calls/af:b	(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;Lcom/viber/voip/calls/entities/impl/g;Lcom/viber/voip/calls/w;)V
    //   60: goto -15 -> 45
    //   63: astore 4
    //   65: aload_0
    //   66: monitorexit
    //   67: aload 4
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	af
    //   0	70	1	paramCallEntityImpl	CallEntityImpl
    //   0	70	2	paramg	g
    //   0	70	3	paramw	w
    //   63	5	4	localObject	Object
    //   18	19	5	localPair	Pair
    // Exception table:
    //   from	to	target	type
    //   2	45	63	finally
    //   48	60	63	finally
  }
  
  public void a(boolean paramBoolean) {}
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 192	com/viber/voip/calls/af:f	Z
    //   6: ifeq +11 -> 17
    //   9: aload_0
    //   10: iconst_1
    //   11: putfield 188	com/viber/voip/calls/af:g	Z
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 192	com/viber/voip/calls/af:f	Z
    //   22: aload_0
    //   23: invokespecial 190	com/viber/voip/calls/af:d	()V
    //   26: goto -12 -> 14
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	af
    //   29	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	29	finally
    //   17	26	29	finally
  }
  
  public boolean deliverSelfNotifications()
  {
    return false;
  }
  
  public void onChange(boolean paramBoolean)
  {
    b();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.af
 * JD-Core Version:    0.7.0.1
 */