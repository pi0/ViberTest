package com.viber.voip.contacts.c.d.a;

import android.content.ContentUris;
import android.os.Handler;
import android.provider.ContactsContract.Contacts;
import android.util.Pair;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.contacts.c.d.e;
import com.viber.voip.contacts.c.d.m;
import com.viber.voip.contacts.c.f.a.a.j;
import com.viber.voip.contacts.c.f.b.p;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.process.k;
import com.viber.voip.util.b.w;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class f
  extends m
  implements j
{
  private static final String j = f.class.getSimpleName();
  private static f k;
  private Handler l = dc.a(dk.c);
  private com.viber.voip.contacts.c.f.a.a.a m = new com.viber.voip.contacts.c.f.a.a.a(this.c, this, this);
  private com.viber.voip.contacts.c.f.b.a.a n = new com.viber.voip.contacts.c.f.b.a.a(this.c, this);
  private a o = new a(this.c, this.e);
  private i p = new i(this, this.l, this.c);
  private Set<e> q = Collections.synchronizedSet(new HashSet());
  private final Runnable r = new g(this);
  private final Runnable s = new h(this);
  
  private f(ViberApplication paramViberApplication)
  {
    super(paramViberApplication);
    g();
  }
  
  public static b a(ViberApplication paramViberApplication)
  {
    if ((k == null) && (k.a == k.a())) {}
    try
    {
      if (k == null) {
        k = new f(paramViberApplication);
      }
      return k;
    }
    finally {}
  }
  
  public void a()
  {
    super.a();
    this.p.a();
    this.m.a();
  }
  
  public void a(Map<String, Pair<Long, String>> paramMap)
  {
    this.o.a(paramMap);
    this.c.getParticipantManager().a(paramMap.keySet());
    this.p.b();
  }
  
  public void a(Set<Long> paramSet, Set<String> paramSet1)
  {
    this.o.a(paramSet, paramSet1);
    HashSet localHashSet = new HashSet(paramSet.size());
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      Long localLong = (Long)localIterator.next();
      localHashSet.add(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, localLong.longValue()));
    }
    w.a(this.c).a(localHashSet);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.l.removeCallbacks(this.r);
      this.l.removeCallbacks(this.s);
      this.m.a(true);
      return;
    }
    this.l.postDelayed(this.r, 300000L);
  }
  
  public void b()
  {
    this.m.b(true);
  }
  
  public void b(Set<Long> paramSet)
  {
    this.o.b();
    this.c.getParticipantManager().b(paramSet);
  }
  
  public p c()
  {
    return this.n;
  }
  
  public void c(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.n != null)) {
      this.n.e();
    }
    a(this.h);
  }
  
  protected void i()
  {
    this.n.e();
  }
  
  protected com.viber.voip.contacts.c.d.a j()
  {
    return this.o;
  }
  
  public boolean k()
  {
    return this.m.b();
  }
  
  public void o()
  {
    a(this.q);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.a.f
 * JD-Core Version:    0.7.0.1
 */