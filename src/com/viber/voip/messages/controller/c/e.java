package com.viber.voip.messages.controller.c;

import android.os.Handler;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.cx;
import com.viber.voip.messages.controller.cy;
import com.viber.voip.messages.controller.cz;
import com.viber.voip.messages.controller.da;
import com.viber.voip.messages.controller.db;
import com.viber.voip.messages.controller.dd;
import com.viber.voip.messages.controller.de;
import com.viber.voip.messages.controller.df;
import com.viber.voip.messages.controller.dg;
import com.viber.voip.messages.controller.dh;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class e
  implements cx
{
  private static e a;
  private Set<da> b = new HashSet();
  private Set<de> c = new HashSet();
  private Set<dg> d = new HashSet();
  private Set<com.viber.voip.messages.controller.dc> e = new HashSet();
  private Set<cz> f = new HashSet();
  private Map<Long, Boolean> g = new HashMap();
  private Handler h = com.viber.voip.dc.a(dk.d);
  
  public static e a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new e();
      }
      return a;
    }
    finally {}
  }
  
  private void a(aj paramaj)
  {
    Iterator localIterator = h().iterator();
    while (localIterator.hasNext())
    {
      cz localcz = (cz)localIterator.next();
      if ((localcz instanceof cy)) {
        paramaj.a(localcz);
      } else {
        this.h.post(new ac(this, paramaj, localcz));
      }
    }
  }
  
  private void a(ak paramak)
  {
    Iterator localIterator = d().iterator();
    while (localIterator.hasNext())
    {
      da localda = (da)localIterator.next();
      if ((localda instanceof db)) {
        paramak.a(localda);
      } else {
        this.h.post(new aa(this, paramak, localda));
      }
    }
  }
  
  private void a(al paramal)
  {
    Iterator localIterator = g().iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.messages.controller.dc localdc = (com.viber.voip.messages.controller.dc)localIterator.next();
      if ((localdc instanceof dd)) {
        paramal.a(localdc);
      } else {
        this.h.post(new z(this, paramal, localdc));
      }
    }
  }
  
  private void a(am paramam)
  {
    Iterator localIterator = e().iterator();
    while (localIterator.hasNext())
    {
      de localde = (de)localIterator.next();
      if ((localde instanceof df)) {
        paramam.a(localde);
      } else {
        this.h.post(new x(this, paramam, localde));
      }
    }
  }
  
  private void a(an paraman)
  {
    Iterator localIterator = f().iterator();
    while (localIterator.hasNext())
    {
      dg localdg = (dg)localIterator.next();
      if ((localdg instanceof dh)) {
        paraman.a(localdg);
      } else {
        this.h.post(new y(this, paraman, localdg));
      }
    }
  }
  
  private Set<da> d()
  {
    try
    {
      HashSet localHashSet = new HashSet(this.b);
      return localHashSet;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private Set<de> e()
  {
    try
    {
      HashSet localHashSet = new HashSet(this.c);
      return localHashSet;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private Set<dg> f()
  {
    try
    {
      HashSet localHashSet = new HashSet(this.d);
      return localHashSet;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private Set<com.viber.voip.messages.controller.dc> g()
  {
    try
    {
      HashSet localHashSet = new HashSet(this.e);
      return localHashSet;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private Set<cz> h()
  {
    try
    {
      HashSet localHashSet = new HashSet(this.f);
      return localHashSet;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(int paramInt)
  {
    a(new o(this, paramInt));
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a(new m(this, paramInt1, paramInt2));
  }
  
  public void a(int paramInt, long paramLong)
  {
    a(new u(this, paramInt, paramLong));
  }
  
  public void a(int paramInt1, long paramLong, int paramInt2)
  {
    a(new s(this, paramInt1, paramLong, paramInt2));
  }
  
  public void a(int paramInt1, long paramLong, int paramInt2, boolean paramBoolean)
  {
    a(new t(this, paramInt1, paramLong, paramInt2, paramBoolean));
  }
  
  public void a(int paramInt, long paramLong1, long paramLong2, Map<String, Integer> paramMap)
  {
    a(new k(this, paramInt, paramLong1, paramLong2, paramMap));
  }
  
  public void a(int paramInt, long paramLong, Map<String, Integer> paramMap)
  {
    a(new n(this, paramInt, paramLong, paramMap));
  }
  
  public void a(long paramLong)
  {
    a(new p(this, paramLong));
  }
  
  public void a(long paramLong, int paramInt)
  {
    a(new l(this, paramLong, paramInt));
  }
  
  public void a(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    a(new f(this, paramLong1, paramLong2, paramLong3, paramBoolean));
  }
  
  public void a(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    a(new ad(this, paramLong1, paramLong2, paramBoolean));
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(paramLong));
    a(localHashSet, paramBoolean);
  }
  
  public void a(cz paramcz)
  {
    try
    {
      this.f.add(paramcz);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(da paramda)
  {
    try
    {
      this.b.add(paramda);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(com.viber.voip.messages.controller.dc paramdc)
  {
    try
    {
      this.e.add(paramdc);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(de paramde)
  {
    try
    {
      this.c.add(paramde);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(dg paramdg)
  {
    try
    {
      this.d.add(paramdg);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    a(new ae(this, paramString, paramBoolean));
  }
  
  public void a(Set<String> paramSet)
  {
    a(new w(this, paramSet));
  }
  
  public void a(Set<Long> paramSet, boolean paramBoolean)
  {
    a(new q(this, paramSet, paramBoolean));
  }
  
  public void b()
  {
    a(new g(this));
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    a(new r(this, paramInt1, paramInt2));
  }
  
  public void b(long paramLong, boolean paramBoolean)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(paramLong));
    b(localHashSet, paramBoolean);
  }
  
  public void b(da paramda)
  {
    try
    {
      this.b.remove(paramda);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b(com.viber.voip.messages.controller.dc paramdc)
  {
    try
    {
      this.e.remove(paramdc);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b(de paramde)
  {
    try
    {
      this.c.remove(paramde);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b(dg paramdg)
  {
    try
    {
      this.d.remove(paramdg);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b(Set<Long> paramSet, boolean paramBoolean)
  {
    a(new ab(this, paramSet, paramBoolean));
  }
  
  public boolean b(long paramLong)
  {
    Boolean localBoolean = (Boolean)this.g.get(Long.valueOf(paramLong));
    return (localBoolean != null) && (localBoolean.booleanValue());
  }
  
  public void c()
  {
    a(new h(this));
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    a(new v(this, paramInt1, paramInt2));
  }
  
  public void c(long paramLong, boolean paramBoolean)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(paramLong));
    c(localHashSet, paramBoolean);
  }
  
  public void c(Set<Long> paramSet, boolean paramBoolean)
  {
    a(new af(this, paramSet, paramBoolean));
  }
  
  public void d(long paramLong, boolean paramBoolean)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(paramLong));
    e(localHashSet, paramBoolean);
  }
  
  public void d(Set<Long> paramSet, boolean paramBoolean)
  {
    a(new ag(this, paramSet, paramBoolean));
  }
  
  public void e(long paramLong, boolean paramBoolean)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(paramLong));
    f(localHashSet, paramBoolean);
  }
  
  public void e(Set<Long> paramSet, boolean paramBoolean)
  {
    if (paramSet == null) {
      paramSet = new HashSet(0);
    }
    a(new ah(this, paramSet, paramBoolean));
  }
  
  public void f(long paramLong, boolean paramBoolean)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(paramLong));
    g(localHashSet, paramBoolean);
  }
  
  public void f(Set<Long> paramSet, boolean paramBoolean)
  {
    a(new ai(this, paramSet, paramBoolean));
  }
  
  public void g(long paramLong, boolean paramBoolean)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(Long.valueOf(paramLong));
    h(localHashSet, paramBoolean);
  }
  
  public void g(Set<Long> paramSet, boolean paramBoolean)
  {
    a(new i(this, paramSet, paramBoolean));
  }
  
  public void h(Set<Long> paramSet, boolean paramBoolean)
  {
    a(new j(this, paramSet, paramBoolean));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.e
 * JD-Core Version:    0.7.0.1
 */