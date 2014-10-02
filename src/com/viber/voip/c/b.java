package com.viber.voip.c;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.process.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Semaphore;

public class b
{
  private String a;
  private Semaphore b = new Semaphore(0);
  private h c;
  private ArrayList<e> d = new ArrayList();
  private ArrayList<ClassLoader> e = new ArrayList();
  private HashMap<String, Class<?>> f = new HashMap();
  private List<f> g = new ArrayList();
  
  b(h paramh, String paramString)
  {
    this.c = paramh;
    this.a = (b.class.getSimpleName() + '[' + k.a() + '/' + paramString + ']');
  }
  
  private void a(String paramString, Throwable paramThrowable)
  {
    ViberApplication.log(3, this.a, paramString, paramThrowable);
  }
  
  private boolean a()
  {
    return this.g == null;
  }
  
  private void b()
  {
    if (Looper.getMainLooper().getThread() == Thread.currentThread())
    {
      c();
      return;
    }
    dc.a(dk.a).post(new d(this));
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 47	com/viber/voip/c/b:g	Ljava/util/List;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: new 51	java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   16: ldc 133
    //   18: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: aload_0
    //   22: getfield 47	com/viber/voip/c/b:g	Ljava/util/List;
    //   25: invokeinterface 139 1 0
    //   30: invokevirtual 142	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   33: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   36: invokespecial 145	com/viber/voip/c/b:c	(Ljava/lang/String;)V
    //   39: aload_0
    //   40: monitorenter
    //   41: aload_0
    //   42: getfield 47	com/viber/voip/c/b:g	Ljava/util/List;
    //   45: astore_2
    //   46: aload_0
    //   47: aconst_null
    //   48: putfield 47	com/viber/voip/c/b:g	Ljava/util/List;
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_2
    //   54: invokeinterface 149 1 0
    //   59: astore_3
    //   60: aload_3
    //   61: invokeinterface 154 1 0
    //   66: ifeq -59 -> 7
    //   69: aload_3
    //   70: invokeinterface 158 1 0
    //   75: checkcast 160	com/viber/voip/c/f
    //   78: invokeinterface 163 1 0
    //   83: goto -23 -> 60
    //   86: astore_1
    //   87: aload_0
    //   88: monitorexit
    //   89: aload_1
    //   90: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	this	b
    //   86	4	1	localObject	Object
    //   45	9	2	localList	List
    //   59	11	3	localIterator	Iterator
    // Exception table:
    //   from	to	target	type
    //   41	53	86	finally
    //   87	89	86	finally
  }
  
  private void c(Context paramContext)
  {
    c("doLoad");
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      try
      {
        if (!locale.a) {
          break label88;
        }
        this.c.a(paramContext, locale.b);
      }
      catch (Throwable localThrowable)
      {
        a("error loading " + locale.b, localThrowable);
      }
      continue;
      label88:
      this.e.add(this.c.a(paramContext, locale.b, locale.c));
    }
  }
  
  private void c(String paramString)
  {
    ViberApplication.log(3, this.a, paramString);
  }
  
  public Class<?> a(String paramString)
  {
    c("loadClass: " + paramString);
    Object localObject2;
    for (;;)
    {
      try
      {
        this.b.acquire();
        try
        {
          localObject2 = (Class)this.f.get(paramString);
          if (localObject2 == null)
          {
            c("loadClass, new class: " + paramString);
            Iterator localIterator = this.e.iterator();
            localObject3 = null;
            localObject4 = localObject2;
            if (localIterator.hasNext()) {
              localClassLoader = (ClassLoader)localIterator.next();
            }
          }
        }
        finally
        {
          Object localObject3;
          ClassLoader localClassLoader;
          Object localObject8;
          Object localObject5;
          this.b.release();
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        return null;
      }
      try
      {
        localClass = localClassLoader.loadClass(paramString);
      }
      catch (ClassNotFoundException localClassNotFoundException1)
      {
        localObject7 = localObject4;
        continue;
      }
      try
      {
        this.f.put(paramString, localClass);
        localObject8 = localObject3;
        localObject7 = localClass;
        localObject5 = localObject8;
      }
      catch (ClassNotFoundException localClassNotFoundException2)
      {
        localObject7 = localClass;
        Object localObject6 = localClassNotFoundException2;
        continue;
      }
      localObject4 = localObject7;
      localObject3 = localObject5;
      continue;
      if (localObject4 == null)
      {
        if (this.e.size() > 0) {
          throw localObject3;
        }
        throw new ClassNotFoundException(this.a + " No class loaders! Class not found: " + paramString);
      }
      localObject2 = localObject4;
    }
    this.b.release();
    return localObject2;
  }
  
  void a(Context paramContext)
  {
    c("load");
    try
    {
      c(paramContext);
      return;
    }
    finally
    {
      this.b.release();
      b();
    }
  }
  
  /* Error */
  public void a(f paramf)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: new 51	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   10: ldc 234
    //   12: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_1
    //   16: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   19: ldc 236
    //   21: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: aload_0
    //   25: invokespecial 238	com/viber/voip/c/b:a	()Z
    //   28: invokevirtual 241	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   31: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokespecial 145	com/viber/voip/c/b:c	(Ljava/lang/String;)V
    //   37: aload_0
    //   38: invokespecial 238	com/viber/voip/c/b:a	()Z
    //   41: ifeq +12 -> 53
    //   44: aload_1
    //   45: invokeinterface 163 1 0
    //   50: aload_0
    //   51: monitorexit
    //   52: return
    //   53: aload_0
    //   54: getfield 47	com/viber/voip/c/b:g	Ljava/util/List;
    //   57: aload_1
    //   58: invokeinterface 242 2 0
    //   63: pop
    //   64: goto -14 -> 50
    //   67: astore_2
    //   68: aload_0
    //   69: monitorexit
    //   70: aload_2
    //   71: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	b
    //   0	72	1	paramf	f
    //   67	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	50	67	finally
    //   53	64	67	finally
  }
  
  void a(String paramString1, String paramString2)
  {
    this.d.add(new e(paramString1, false, paramString2));
  }
  
  void b(Context paramContext)
  {
    c("loadAsync");
    dc.a(dk.g).post(new c(this, paramContext));
  }
  
  void b(String paramString)
  {
    this.d.add(new e(paramString, true, null));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.c.b
 * JD-Core Version:    0.7.0.1
 */