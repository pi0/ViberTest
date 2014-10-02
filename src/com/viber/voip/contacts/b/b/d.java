package com.viber.voip.contacts.b.b;

import android.text.TextUtils;
import com.viber.voip.contacts.b.b.a.a;
import com.viber.voip.contacts.b.b.a.b;
import com.viber.voip.contacts.b.b.a.i;
import com.viber.voip.contacts.b.b.a.l;
import com.viber.voip.contacts.c.f.b.c;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.entity.EntityUpdater;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

public class d
  extends a
{
  public static final CreatorHelper a = new com.viber.voip.contacts.b.a.e();
  protected Set<i> b;
  
  public d() {}
  
  public d(String paramString1, String paramString2, Set<c> paramSet)
  {
    super(paramString1, paramString2);
    i locali = new i();
    locali.a(new HashSet());
    this.b = new HashSet();
    this.b.add(locali);
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      this.u = true;
      locali.b().add(new k(localc.b()));
    }
  }
  
  public d(Set<com.viber.voip.contacts.b.b.a.e> paramSet)
  {
    super((com.viber.voip.contacts.b.b.a.e)paramSet.iterator().next());
    this.b = new HashSet();
    Iterator localIterator = paramSet.iterator();
    if (localIterator.hasNext())
    {
      com.viber.voip.contacts.b.b.a.e locale = (com.viber.voip.contacts.b.b.a.e)localIterator.next();
      i locali = a(locale.i());
      if (locali == null)
      {
        locali = new i(locale);
        locali.a(this);
        locali.a(new HashSet());
        this.b.add(locali);
      }
      Object localObject;
      if (("vnd.android.cursor.item/phone_v2".equals(locale.a())) && (!TextUtils.isEmpty(locale.b())))
      {
        k localk = new k(locale);
        if (localk.g()) {
          this.r = true;
        }
        localObject = localk;
      }
      for (;;)
      {
        label159:
        if (localObject != null)
        {
          ((l)localObject).a(locali);
          ((l)localObject).a(this);
          locali.b().add(localObject);
          break;
          if (("vnd.android.cursor.item/email_v2".equals(locale.a())) && (!TextUtils.isEmpty(locale.b()))) {
            localObject = new j(locale);
          } else if ("vnd.android.cursor.item/name".equals(locale.a())) {
            if (TextUtils.isEmpty(locale.b())) {
              break label265;
            }
          }
        }
      }
      label265:
      for (boolean bool = true;; bool = false)
      {
        this.v = bool;
        localObject = null;
        break label159;
        break;
      }
    }
  }
  
  public i a(long paramLong)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      if (locali.getId() == paramLong) {
        return locali;
      }
    }
    return null;
  }
  
  public d a(Set<com.viber.voip.contacts.b.b.a.e> paramSet)
  {
    com.viber.voip.contacts.b.b.a.e locale1 = (com.viber.voip.contacts.b.b.a.e)paramSet.iterator().next();
    this.id = locale1.e();
    this.l = locale1.e();
    h(locale1.f());
    m(locale1.l());
    this.p = locale1.j();
    this.s = locale1.k();
    this.B = locale1.m();
    this.C = locale1.n();
    this.v = false;
    this.u = false;
    this.b = new HashSet();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.contacts.b.b.a.e locale2 = (com.viber.voip.contacts.b.b.a.e)localIterator.next();
      if (a(locale2.i()) == null)
      {
        i locali = new i(locale2);
        locali.a(this);
        locali.a(new HashSet());
        this.b.add(locali);
      }
    }
    return this;
  }
  
  public void a(HashSet<i> paramHashSet)
  {
    this.b = paramHashSet;
  }
  
  public Set<i> b()
  {
    return this.b;
  }
  
  public i h()
  {
    if ((this.b != null) && (this.b.size() > 0)) {
      return (i)this.b.iterator().next();
    }
    return null;
  }
  
  public int i()
  {
    if (this.b == null) {
      throw new RuntimeException("can't calculate hash cause accounts not initialized");
    }
    TreeSet localTreeSet = new TreeSet();
    Iterator localIterator1 = this.b.iterator();
    while (localIterator1.hasNext())
    {
      i locali = (i)localIterator1.next();
      if (locali.b() == null) {
        throw new RuntimeException("can't calculate hash cause contacts data not initialized at accounts");
      }
      Iterator localIterator3 = locali.b().iterator();
      while (localIterator3.hasNext())
      {
        l locall = (l)localIterator3.next();
        if ((locall instanceof k)) {
          localTreeSet.add(((k)locall).b());
        }
      }
    }
    int i = this.m.hashCode();
    Iterator localIterator2 = localTreeSet.iterator();
    String str;
    for (int j = i; localIterator2.hasNext(); j = j * 31 + str.hashCode()) {
      str = (String)localIterator2.next();
    }
    return j;
  }
  
  public Set<String> j()
  {
    HashSet localHashSet;
    if (this.b != null)
    {
      localHashSet = new HashSet();
      Iterator localIterator1 = this.b.iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((i)localIterator1.next()).b().iterator();
        while (localIterator2.hasNext())
        {
          l locall = (l)localIterator2.next();
          if ((locall instanceof k)) {
            localHashSet.add(((k)locall).b());
          }
        }
      }
    }
    throw new RuntimeException("Can't get all numbers while accounts not initialized");
    return localHashSet;
  }
  
  public EntityUpdater<? extends Entity> k()
  {
    return new b(this, new String[] { "display_name", "contact_lookup_key", "starred", "has_name", "phone_label", "native_photo_id", "viber_out" });
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.d
 * JD-Core Version:    0.7.0.1
 */