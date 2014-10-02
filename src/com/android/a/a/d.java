package com.android.a.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

class d
  extends Handler
{
  private static final Object b = new Object();
  private static final Message c = null;
  private boolean a = false;
  private Message d;
  private h e = new h();
  private boolean f;
  private g[] g;
  private int h = -1;
  private g[] i;
  private int j;
  private e k = new e(this, null);
  private f l = new f(this, null);
  private b m;
  private HashMap<a, g> n = new HashMap();
  private a o;
  private a p;
  private ArrayList<Message> q = new ArrayList();
  
  private d(Looper paramLooper, b paramb)
  {
    super(paramLooper);
    this.m = paramb;
    a(this.k, null);
    a(this.l, null);
  }
  
  private final g a(a parama)
  {
    this.j = 0;
    g localg = (g)this.n.get(parama);
    do
    {
      g[] arrayOfg = this.i;
      int i1 = this.j;
      this.j = (i1 + 1);
      arrayOfg[i1] = localg;
      localg = localg.b;
    } while ((localg != null) && (!localg.c));
    if (this.a) {
      Log.d("HierarchicalStateMachine", "setupTempStateStackWithStatesToEnter: X mTempStateStackCount=" + this.j + ",curStateInfo: " + localg);
    }
    return localg;
  }
  
  private final g a(a parama1, a parama2)
  {
    String str;
    g localg3;
    g localg1;
    if (this.a)
    {
      StringBuilder localStringBuilder = new StringBuilder().append("addStateInternal: E state=").append(parama1.c()).append(",parent=");
      if (parama2 == null)
      {
        str = "";
        Log.d("HierarchicalStateMachine", str);
      }
    }
    else
    {
      if (parama2 == null) {
        break label222;
      }
      localg3 = (g)this.n.get(parama2);
      if (localg3 != null) {
        break label216;
      }
      localg1 = a(parama2, null);
    }
    for (;;)
    {
      g localg2 = (g)this.n.get(parama1);
      if (localg2 == null)
      {
        localg2 = new g(this, null);
        this.n.put(parama1, localg2);
      }
      if ((localg2.b != null) && (localg2.b != localg1))
      {
        throw new RuntimeException("state already added");
        str = parama2.c();
        break;
      }
      localg2.a = parama1;
      localg2.b = localg1;
      localg2.c = false;
      if (this.a) {
        Log.d("HierarchicalStateMachine", "addStateInternal: X stateInfo: " + localg2);
      }
      return localg2;
      label216:
      localg1 = localg3;
      continue;
      label222:
      localg1 = null;
    }
  }
  
  private void a()
  {
    a locala = null;
    while (this.p != null)
    {
      if (this.a) {
        Log.d("HierarchicalStateMachine", "handleMessage: new destination call exit");
      }
      locala = this.p;
      this.p = null;
      a(a(locala));
      a(d());
      c();
    }
    if (locala != null)
    {
      if (locala != this.l) {
        break label95;
      }
      this.m.b();
      if (b.a(this.m) != null) {
        getLooper().quit();
      }
    }
    label95:
    while (locala != this.k) {
      return;
    }
    this.m.a();
  }
  
  private final void a(int paramInt)
  {
    while (paramInt <= this.h)
    {
      if (this.a) {
        Log.d("HierarchicalStateMachine", "invokeEnterMethods: " + this.g[paramInt].a.c());
      }
      this.g[paramInt].a.a();
      this.g[paramInt].c = true;
      paramInt++;
    }
  }
  
  private final void a(Message paramMessage)
  {
    g localg = this.g[this.h];
    if (this.a) {
      Log.d("HierarchicalStateMachine", "processMsg: " + localg.a.c());
    }
    for (;;)
    {
      if (!localg.a.a(paramMessage))
      {
        localg = localg.b;
        if (localg != null) {
          break label123;
        }
        this.m.a(paramMessage);
        if (b(paramMessage)) {
          c(this.l);
        }
      }
      if (localg == null) {
        break;
      }
      a locala = this.g[this.h].a;
      this.e.a(paramMessage, localg.a, locala);
      return;
      label123:
      if (this.a) {
        Log.d("HierarchicalStateMachine", "processMsg: " + localg.a.c());
      }
    }
    this.e.a(paramMessage, null, null);
  }
  
  private final void a(g paramg)
  {
    while ((this.h >= 0) && (this.g[this.h] != paramg))
    {
      a locala = this.g[this.h].a;
      if (this.a) {
        Log.d("HierarchicalStateMachine", "invokeExitMethods: " + locala.c());
      }
      locala.b();
      this.g[this.h].c = false;
      this.h = (-1 + this.h);
    }
  }
  
  private final void b()
  {
    if (this.a) {
      Log.d("HierarchicalStateMachine", "completeConstruction: E");
    }
    Iterator localIterator = this.n.values().iterator();
    int i1 = 0;
    int i2;
    if (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      for (i2 = 0; localg != null; i2++) {
        localg = localg.b;
      }
      if (i1 >= i2) {
        break label175;
      }
    }
    for (;;)
    {
      i1 = i2;
      break;
      if (this.a) {
        Log.d("HierarchicalStateMachine", "completeConstruction: maxDepth=" + i1);
      }
      this.g = new g[i1];
      this.i = new g[i1];
      e();
      this.f = true;
      this.d = obtainMessage(-1);
      a(0);
      a();
      if (this.a) {
        Log.d("HierarchicalStateMachine", "completeConstruction: X");
      }
      return;
      label175:
      i2 = i1;
    }
  }
  
  private final void b(a parama)
  {
    if (this.a) {
      Log.d("HierarchicalStateMachine", "setInitialState: initialState" + parama.c());
    }
    this.o = parama;
  }
  
  private final boolean b(Message paramMessage)
  {
    return (paramMessage.what == -1) && (paramMessage.obj == b);
  }
  
  private final void c()
  {
    for (int i1 = -1 + this.q.size(); i1 >= 0; i1--)
    {
      Message localMessage = (Message)this.q.get(i1);
      if (this.a) {
        Log.d("HierarchicalStateMachine", "moveDeferredMessageAtFrontOfQueue; what=" + localMessage.what);
      }
      sendMessageAtFrontOfQueue(localMessage);
    }
    this.q.clear();
  }
  
  private final void c(a parama)
  {
    if (this.a) {
      Log.d("HierarchicalStateMachine", "StateMachine.transitionTo EX destState" + parama.c());
    }
    this.p = parama;
  }
  
  private final int d()
  {
    int i1 = 1 + this.h;
    int i2 = -1 + this.j;
    int i3 = i1;
    while (i2 >= 0)
    {
      if (this.a) {
        Log.d("HierarchicalStateMachine", "moveTempStackToStateStack: i=" + i2 + ",j=" + i3);
      }
      this.g[i3] = this.i[i2];
      i3++;
      i2--;
    }
    this.h = (i3 - 1);
    if (this.a) {
      Log.d("HierarchicalStateMachine", "moveTempStackToStateStack: X mStateStackTop=" + this.h + ",startingIndex=" + i1 + ",Top=" + this.g[this.h].a.c());
    }
    return i1;
  }
  
  private final void e()
  {
    if (this.a) {
      Log.d("HierarchicalStateMachine", "setupInitialStateStack: E mInitialState=" + this.o.c());
    }
    g localg = (g)this.n.get(this.o);
    for (this.j = 0; localg != null; this.j = (1 + this.j))
    {
      this.i[this.j] = localg;
      localg = localg.b;
    }
    this.h = -1;
    d();
  }
  
  public final void handleMessage(Message paramMessage)
  {
    if (this.a) {
      Log.d("HierarchicalStateMachine", "handleMessage: E msg.what=" + paramMessage.what);
    }
    this.d = paramMessage;
    if (!this.f) {
      Log.e("HierarchicalStateMachine", "The start method not called, ignore msg: " + paramMessage);
    }
    do
    {
      return;
      a(paramMessage);
      a();
    } while (!this.a);
    Log.d("HierarchicalStateMachine", "handleMessage: X");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.a.a.d
 * JD-Core Version:    0.7.0.1
 */