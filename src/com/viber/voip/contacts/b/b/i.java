package com.viber.voip.contacts.b.b;

import android.telephony.PhoneNumberUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.d;
import com.viber.voip.messages.orm.creator.Creator;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class i
  extends e
  implements d
{
  public static final Creator a = new com.viber.voip.contacts.b.a.g();
  private Map<com.viber.voip.contacts.b.i, com.viber.voip.contacts.b.g> E = new HashMap();
  private Set<com.viber.voip.contacts.b.g> F = new HashSet();
  private Map<String, Boolean> G = new HashMap();
  
  public i() {}
  
  public i(ViberApplication paramViberApplication, Set<com.viber.voip.contacts.b.b.a.e> paramSet, Map<String, com.viber.voip.contacts.b.i> paramMap, Map<String, Boolean> paramMap1, int paramInt, boolean paramBoolean)
  {
    super((com.viber.voip.contacts.b.b.a.e)paramSet.iterator().next());
    this.z = paramInt;
    this.v = paramBoolean;
    this.f = new TreeSet(j);
    this.G.putAll(paramMap1);
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.contacts.b.b.a.e locale = (com.viber.voip.contacts.b.b.a.e)localIterator.next();
      if ("vnd.android.cursor.item/phone_v2".equals(locale.a()))
      {
        this.u = true;
        com.viber.voip.contacts.b.i locali = (com.viber.voip.contacts.b.i)paramMap.get(PhoneNumberUtils.stripSeparators(locale.b()));
        if (locali != null)
        {
          this.q = true;
          this.f.add(locali);
          this.E.put(locali, locale);
        }
      }
      this.F.add(locale);
    }
  }
  
  public com.viber.voip.contacts.b.g a(com.viber.voip.contacts.b.i parami)
  {
    return (com.viber.voip.contacts.b.g)this.E.get(parami);
  }
  
  public void a(com.viber.voip.contacts.b.g paramg)
  {
    this.F.add(paramg);
  }
  
  public void a(com.viber.voip.contacts.b.i parami, com.viber.voip.contacts.b.g paramg)
  {
    if (this.f == null) {
      this.f = new TreeSet(j);
    }
    this.E.put(parami, paramg);
    this.f.add(parami);
  }
  
  public Collection<com.viber.voip.contacts.b.g> m()
  {
    return this.F;
  }
  
  public String n()
  {
    com.viber.voip.contacts.b.i locali = i();
    String str = null;
    if (locali != null)
    {
      str = i().b();
      if (str == null) {
        str = i().c();
      }
    }
    return str;
  }
  
  public Map<String, Boolean> o()
  {
    return this.G;
  }
  
  public String toString()
  {
    return "ContactInfoEntityImpl [id=" + this.id + ", displayName=" + this.m + ", starred=" + this.p + ", viber=" + this.q + ", lookupKey=" + this.s + ", contactHash=" + this.t + ", hasNumbers=" + this.u + ", viberNumbers=" + this.f + ", mBlockedNumbers=" + this.G + ", flags=" + this.z + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.i
 * JD-Core Version:    0.7.0.1
 */