package com.viber.voip.calls;

import android.os.Handler;
import android.telephony.PhoneNumberUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.entities.AggregatedCallEntity;
import com.viber.voip.calls.entities.CallEntity;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.i;
import com.viber.voip.util.hd;
import com.viber.voip.viberout.e;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class z
  implements am, u
{
  private static final String a = z.class.getSimpleName();
  private static z b;
  private ViberApplication c;
  private af d;
  private a e;
  private com.viber.voip.contacts.c.d.aa f;
  private i g;
  private Set<x> h = new HashSet();
  private Handler i;
  private final Runnable j = new aa(this);
  
  private z(ViberApplication paramViberApplication)
  {
    this.c = paramViberApplication;
    this.d = new af(this.c, this);
    this.f = new com.viber.voip.contacts.c.d.aa(this.c);
    this.e = new a(this.c);
    this.i = dc.a(dk.c);
    this.g = this.c.getMessagesManager();
  }
  
  public static u a(ViberApplication paramViberApplication)
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new z(paramViberApplication);
      }
      return b;
    }
    finally {}
  }
  
  private void a(long paramLong1, long paramLong2, String paramString1, long paramLong3, String paramString2, String paramString3, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, long paramLong4, long paramLong5, int paramInt5, w paramw)
  {
    String str1 = PhoneNumberUtils.stripSeparators(paramString3);
    String str2 = hd.a(this.c, str1, str1);
    String str3 = e.c().c(paramString3);
    this.f.a(str1, str2, new ae(this, paramLong4, paramString2, str3, paramInt1, paramLong5, str2, paramLong1, paramBoolean, paramInt2, paramInt3, paramInt4, paramw, paramInt5));
  }
  
  private void b()
  {
    try
    {
      Iterator localIterator = this.h.iterator();
      while (localIterator.hasNext()) {
        ((x)localIterator.next()).a();
      }
    }
    finally {}
  }
  
  public void a()
  {
    this.d.a();
  }
  
  public void a(int paramInt)
  {
    b();
  }
  
  public void a(int paramInt, v paramv)
  {
    this.e.a(paramInt, new ac(this, paramv));
  }
  
  public void a(long paramLong1, String paramString, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, long paramLong2, long paramLong3, int paramInt5, w paramw)
  {
    a(paramLong1, -1L, null, -1L, null, paramString, paramInt1, paramBoolean, paramInt2, paramInt3, paramInt4, paramLong2, paramLong3, paramInt5, paramw);
  }
  
  public void a(x paramx)
  {
    try
    {
      this.h.add(paramx);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(y paramy)
  {
    this.e.a(new ad(this, paramy), true);
  }
  
  public void a(Collection<AggregatedCallEntity> paramCollection, y paramy)
  {
    if ((paramCollection != null) && (paramCollection.size() > 0))
    {
      localHashSet = new HashSet();
      localIterator = paramCollection.iterator();
      while (localIterator.hasNext()) {
        localHashSet.addAll(((AggregatedCallEntity)localIterator.next()).d());
      }
      b(localHashSet, paramy);
    }
    while (paramy == null)
    {
      HashSet localHashSet;
      Iterator localIterator;
      return;
    }
    paramy.a();
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.i.removeCallbacks(this.j);
      this.d.a(true);
      return;
    }
    this.i.postDelayed(this.j, 180000L);
  }
  
  public void b(x paramx)
  {
    try
    {
      this.h.remove(paramx);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b(Collection<CallEntity> paramCollection, y paramy)
  {
    if ((paramCollection != null) && (paramCollection.size() > 0))
    {
      localHashSet1 = new HashSet();
      localHashSet2 = new HashSet();
      localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
      {
        localCallEntity = (CallEntity)localIterator.next();
        localHashSet1.add(Long.valueOf(localCallEntity.getId()));
        localHashSet2.add(Long.valueOf(localCallEntity.e()));
      }
      this.e.a(new ab(this, paramy), (Long[])localHashSet2.toArray(new Long[0]), (Long[])localHashSet1.toArray(new Long[0]));
    }
    while (paramy == null)
    {
      HashSet localHashSet1;
      HashSet localHashSet2;
      Iterator localIterator;
      CallEntity localCallEntity;
      return;
    }
    paramy.a();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.z
 * JD-Core Version:    0.7.0.1
 */