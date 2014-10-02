package com.viber.voip.contacts.c.d;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.connection.ConnectionDelegate;
import com.viber.jni.connection.ConnectionListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.fz;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public abstract class m
  implements com.viber.voip.contacts.c.d.a.m, b, c, g, com.viber.voip.contacts.c.f.b.q
{
  protected Handler a;
  protected com.viber.voip.contacts.c.a.a b;
  protected ViberApplication c;
  protected com.viber.service.contacts.a.a d;
  protected aa e;
  protected com.viber.voip.contacts.c.f.b f;
  protected com.viber.voip.contacts.a.a g;
  protected Set<e> h = Collections.synchronizedSet(new HashSet());
  protected Set<f> i = Collections.synchronizedSet(new HashSet());
  private final com.viber.voip.contacts.c.b.a j;
  private final com.viber.voip.contacts.c.b.e k;
  
  protected m(ViberApplication paramViberApplication)
  {
    this.c = paramViberApplication;
    this.a = dc.a(dk.c);
    this.b = new com.viber.voip.contacts.c.a.b(this.a, new com.viber.voip.contacts.c.a.h(this.c, new com.viber.voip.contacts.c.c.a.a()));
    this.j = new com.viber.voip.contacts.c.b.a(this.c);
    Handler localHandler = this.a;
    com.viber.voip.contacts.c.b.d[] arrayOfd = new com.viber.voip.contacts.c.b.d[1];
    arrayOfd[0] = this.j;
    this.k = new com.viber.voip.contacts.c.b.e(localHandler, arrayOfd);
    this.d = new com.viber.service.contacts.a.a();
    this.e = new aa(this.c);
    this.f = com.viber.voip.contacts.c.f.b.a(this.c);
    this.f.a(this);
    this.g = new com.viber.voip.contacts.a.a();
    p();
    ViberApplication.getInstance().getPhoneController(false).registerDelegate(this.k);
    ConnectionListener localConnectionListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getConnectionListener();
    ConnectionDelegate[] arrayOfConnectionDelegate = new ConnectionDelegate[1];
    arrayOfConnectionDelegate[0] = this.k;
    localConnectionListener.registerDelegate(arrayOfConnectionDelegate);
    this.k.a(ViberApplication.getInstance().getPhoneController(false));
    d().a(new n(this));
  }
  
  private void a(Map<String, String> paramMap)
  {
    this.e.b(new HashSet(paramMap.values()), new p(this, paramMap));
  }
  
  private void p()
  {
    this.e.a(new u(this));
  }
  
  private void q()
  {
    a(this.h);
  }
  
  public Set<com.viber.voip.contacts.b.b> a(String paramString)
  {
    return this.e.b(paramString);
  }
  
  public void a()
  {
    this.f.b(this);
  }
  
  public void a(int paramInt)
  {
    a(paramInt, false, false, this.i);
  }
  
  public void a(int paramInt, Set<com.viber.voip.contacts.b.h> paramSet)
  {
    fz.a().a(paramInt, paramSet);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    a(paramInt, paramBoolean, true, this.i);
  }
  
  protected void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2, Set<f> paramSet)
  {
    for (;;)
    {
      f localf;
      try
      {
        HashSet localHashSet = new HashSet(paramSet);
        Iterator localIterator = localHashSet.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localf = (f)localIterator.next();
        if (paramBoolean2)
        {
          localf.b(paramInt, paramBoolean1);
          continue;
        }
        if (!paramBoolean1) {
          break label87;
        }
      }
      finally {}
      localf.b(paramInt);
      continue;
      label87:
      localf.b_(paramInt);
    }
  }
  
  public void a(long paramLong1, long paramLong2, String paramString, boolean paramBoolean)
  {
    this.e.a(paramLong1, paramLong2, paramString, paramBoolean, new x(this));
  }
  
  public void a(long paramLong1, long paramLong2, String paramString, boolean paramBoolean, d paramd)
  {
    j().a(paramLong1, paramString, paramBoolean, paramd);
  }
  
  public void a(long paramLong, h paramh)
  {
    this.e.a(paramLong, paramh);
  }
  
  public void a(long paramLong, String paramString)
  {
    this.e.a(paramLong, paramString, new y(this, paramLong));
  }
  
  public void a(long paramLong, String paramString, int paramInt, ap paramap)
  {
    this.e.a(paramLong, paramInt, new s(this, paramLong, paramString, paramap));
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    this.e.a(paramLong, new z(this, paramBoolean, paramLong));
  }
  
  public void a(d paramd)
  {
    j().a(paramd);
  }
  
  public void a(e parame)
  {
    synchronized (this.h)
    {
      this.h.add(parame);
      return;
    }
  }
  
  public void a(f paramf)
  {
    synchronized (this.i)
    {
      this.i.add(paramf);
      return;
    }
  }
  
  public void a(Character paramCharacter)
  {
    if (this.g.a(paramCharacter)) {}
  }
  
  public void a(String paramString, i parami)
  {
    this.e.a(paramString, parami);
  }
  
  public void a(String paramString, boolean paramBoolean, d paramd)
  {
    j().a(paramString, paramBoolean, paramd);
  }
  
  public void a(Map<String, String> paramMap, Set<String> paramSet1, Set<String> paramSet2)
  {
    paramSet1.addAll(paramSet2);
    this.e.a(paramSet1, new v(this, paramMap));
  }
  
  protected void a(Set<e> paramSet)
  {
    try
    {
      HashSet localHashSet = new HashSet(paramSet);
      Iterator localIterator = localHashSet.iterator();
      while (localIterator.hasNext()) {
        ((e)localIterator.next()).a();
      }
      return;
    }
    finally {}
  }
  
  public void a(Set<String> paramSet, j paramj)
  {
    this.e.a(paramSet, paramj);
  }
  
  public void a(Set<String> paramSet, k paramk)
  {
    this.e.a(paramSet, paramk);
  }
  
  public void a(Set<String> paramSet1, Set<String> paramSet2, Set<String> paramSet3)
  {
    j().a(paramSet1, paramSet2, paramSet3);
    a(this.h);
  }
  
  public com.viber.voip.contacts.b.b b(String paramString)
  {
    return this.e.a(paramString);
  }
  
  public void b(int paramInt)
  {
    a(paramInt, true, false, this.i);
  }
  
  public void b(e parame)
  {
    synchronized (this.h)
    {
      this.h.remove(parame);
      return;
    }
  }
  
  public void b(f paramf)
  {
    synchronized (this.i)
    {
      this.i.remove(paramf);
      return;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    Locale localLocale = this.c.getResources().getConfiguration().locale;
    String str1 = ViberApplication.preferences().b("PREF_CURRENT_LOCALE", "");
    String str2 = localLocale.toString();
    if ((paramBoolean) || (!str1.equals(str2))) {
      this.a.post(new t(this, str2));
    }
  }
  
  public l c(String paramString)
  {
    return this.e.c(paramString);
  }
  
  public at d()
  {
    return com.viber.voip.contacts.c.f.a.a(this.c);
  }
  
  public com.viber.voip.contacts.c.a.a e()
  {
    return this.b;
  }
  
  public void f()
  {
    this.e.a();
    com.viber.voip.contacts.c.f.a.a(this.c).a(0, false);
  }
  
  public void g()
  {
    this.e.a(new q(this));
  }
  
  public com.viber.voip.contacts.a.a h()
  {
    return this.g;
  }
  
  protected abstract void i();
  
  protected abstract a j();
  
  public boolean k()
  {
    return false;
  }
  
  public void l()
  {
    q();
  }
  
  public void m()
  {
    j().a();
    q();
  }
  
  public void n()
  {
    f();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.m
 * JD-Core Version:    0.7.0.1
 */