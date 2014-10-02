package com.viber.voip.contacts.c.f.a.a;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.util.Pair;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b.a.l;
import com.viber.voip.contacts.b.b.k;
import com.viber.voip.contacts.c.f.b.u;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.entity.EntityUpdater;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;
import com.viber.voip.util.b.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class a
{
  public static final String a = "_" + a.class.getSimpleName();
  private Context b;
  private AsyncEntityManager c;
  private al d;
  private com.viber.voip.contacts.c.e.b e;
  private u f;
  private com.viber.voip.contacts.c.f.a g;
  private com.viber.voip.contacts.c.d.c h;
  private j i;
  
  public a(ViberApplication paramViberApplication, j paramj, com.viber.voip.contacts.c.d.c paramc)
  {
    this.g = com.viber.voip.contacts.c.f.a.a(paramViberApplication);
    this.c = new AsyncEntityManager(com.viber.voip.contacts.b.b.d.a, false);
    this.e = com.viber.voip.contacts.c.e.b.a(paramViberApplication);
    this.d = new al(paramViberApplication, this, this.e);
    this.f = u.a(paramViberApplication);
    this.b = paramViberApplication;
    this.h = paramc;
    this.i = paramj;
  }
  
  private void a(l paraml1, l paraml2, Map<String, Pair<Long, String>> paramMap)
  {
    if (paraml1 != null) {}
    for (l locall = paraml1;; locall = paraml2)
    {
      if ((locall instanceof k))
      {
        k localk = (k)locall;
        paramMap.put(localk.b(), new Pair(Long.valueOf(localk.m().getId()), localk.m().g()));
      }
      return;
    }
  }
  
  private void a(com.viber.voip.contacts.b.b.d paramd)
  {
    Iterator localIterator2;
    do
    {
      Iterator localIterator1 = paramd.b().iterator();
      while (!localIterator2.hasNext())
      {
        if (!localIterator1.hasNext()) {
          break;
        }
        localIterator2 = ((com.viber.voip.contacts.b.b.a.i)localIterator1.next()).b().iterator();
      }
    } while (!((l)localIterator2.next() instanceof k));
    paramd.d(true);
    return;
    paramd.d(false);
  }
  
  protected static void a(String paramString) {}
  
  private void a(String paramString, Set<Long> paramSet, h paramh)
  {
    this.e.a(1587, null, com.viber.provider.contacts.e.a, paramString, null, new c(this, paramSet, paramh), false, false);
  }
  
  private void a(List<ContentProviderOperation> paramList, Uri paramUri, Entity paramEntity, i parami)
  {
    if (parami == i.c) {
      paramList.add(ContentProviderOperation.newDelete(paramUri).withSelection("_id=" + paramEntity.getId(), null).build());
    }
    do
    {
      return;
      if (parami == i.a)
      {
        paramList.add(ContentProviderOperation.newUpdate(paramUri).withValues(paramEntity.getContentValues()).withSelection("_id=" + paramEntity.getId(), null).build());
        return;
      }
    } while (parami != i.b);
    paramList.add(ContentProviderOperation.newInsert(paramUri).withValues(paramEntity.getContentValues()).build());
  }
  
  private void a(Map<Long, com.viber.voip.contacts.b.b.d> paramMap, Map<Long, com.viber.voip.contacts.b.b.a.i> paramMap1, Set<com.viber.voip.contacts.b.b.d> paramSet, boolean paramBoolean, h paramh)
  {
    if (!this.g.c()) {}
    HashSet localHashSet1 = new HashSet();
    HashMap localHashMap = new HashMap();
    HashSet localHashSet2 = new HashSet();
    HashSet localHashSet3 = new HashSet();
    Iterator localIterator1 = paramSet.iterator();
    while (localIterator1.hasNext())
    {
      com.viber.voip.contacts.b.b.d locald1 = (com.viber.voip.contacts.b.b.d)localIterator1.next();
      localHashSet1.add(Long.valueOf(locald1.getId()));
      ArrayList localArrayList = new ArrayList();
      com.viber.voip.contacts.b.b.d locald2 = (com.viber.voip.contacts.b.b.d)paramMap.get(Long.valueOf(locald1.getId()));
      Iterator localIterator2 = locald1.b().iterator();
      while (localIterator2.hasNext())
      {
        com.viber.voip.contacts.b.b.a.i locali1 = (com.viber.voip.contacts.b.b.a.i)localIterator2.next();
        com.viber.voip.contacts.b.b.a.i locali2 = null;
        if (locald2 != null) {
          locali2 = locald2.a(locali1.getId());
        }
        if (locali2 == null) {
          locali2 = (com.viber.voip.contacts.b.b.a.i)paramMap1.get(Long.valueOf(locali1.getId()));
        }
        com.viber.voip.contacts.b.b.d locald3;
        if ((locali2 != null) && (locali2.a() != locali1.a()))
        {
          locald3 = (com.viber.voip.contacts.b.b.d)paramMap.get(Long.valueOf(locali2.a()));
          locald3.b().remove(locali2);
          localHashSet2.add(locald3);
          if (locald2 != null) {}
          StringBuilder localStringBuilder;
          for (com.viber.voip.contacts.b.b.d locald4 = locald2;; locald4 = locald1)
          {
            locald4.b().add(locali2);
            locali2.a(locald4);
            String str1 = locald4.g();
            if (locald3.v() != 0L) {
              locald4.e(locald3.v());
            }
            String[] arrayOfString = locald3.g().split("\\.");
            localStringBuilder = new StringBuilder();
            int j = arrayOfString.length;
            for (int k = 0; k < j; k++)
            {
              String str2 = arrayOfString[k];
              if (!str1.contains(str2))
              {
                if (localStringBuilder.length() != 0) {
                  localStringBuilder.append(".");
                }
                localStringBuilder.append(str2);
              }
            }
          }
          locald3.n(localStringBuilder.toString());
          if (locald3.b().size() != 0) {
            break label544;
          }
          localHashSet1.add(Long.valueOf(locald3.getId()));
          a(localArrayList, com.viber.provider.contacts.d.a, locald3, i.c);
        }
        for (;;)
        {
          a(locali2, locali1, locali1.c(), com.viber.provider.contacts.e.a, localArrayList);
          if (locali2 != null) {
            break label579;
          }
          Iterator localIterator5 = locali1.b().iterator();
          while (localIterator5.hasNext())
          {
            l locall4 = (l)localIterator5.next();
            a(localArrayList, com.viber.provider.contacts.f.a, locall4, i.b);
            a(null, locall4, localHashMap);
          }
          break;
          label544:
          if (a(locald3, null, localArrayList)) {
            w.a(ViberApplication.getInstance()).b(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, locald1.getId()));
          }
        }
        label579:
        Iterator localIterator3 = locali1.b().iterator();
        while (localIterator3.hasNext())
        {
          l locall2 = (l)localIterator3.next();
          l locall3 = locali2.a(locall2.getId());
          if (a(locall3, locall2, locall2.o(), com.viber.provider.contacts.f.a, localArrayList)) {
            a(locall3, locall2, localHashMap);
          }
        }
        Iterator localIterator4 = locali2.b().iterator();
        while (localIterator4.hasNext())
        {
          l locall1 = (l)localIterator4.next();
          if (!locali1.b().contains(locall1)) {
            a(localArrayList, com.viber.provider.contacts.f.a, locall1, i.c);
          }
        }
        locali2.a(locali1.b());
      }
      a(locald2, locald1, localArrayList);
      if (localArrayList.size() > 0) {
        localHashSet3.add(localArrayList);
      }
    }
    a(localHashSet3, localHashMap, paramBoolean, new e(this, localHashSet1, paramh));
  }
  
  private void a(Set<List<ContentProviderOperation>> paramSet, Map<String, Pair<Long, String>> paramMap, boolean paramBoolean, h paramh)
  {
    int j = paramSet.size();
    f localf = new f(this, j, paramMap, paramBoolean, paramh);
    if (j == 0) {
      a(paramBoolean, paramh, j);
    }
    for (;;)
    {
      return;
      Iterator localIterator = paramSet.iterator();
      while (localIterator.hasNext())
      {
        List localList = (List)localIterator.next();
        this.e.a(1588, "com.viber.provider.vibercontacts", null, localList, localf);
      }
    }
  }
  
  private void a(boolean paramBoolean, h paramh, int paramInt)
  {
    boolean bool1 = false;
    if (paramInt != 0) {
      bool1 = true;
    }
    try
    {
      paramh.a(bool1);
      boolean bool2 = this.g.c();
      if ((paramInt != 0) || ((paramBoolean) && (bool2))) {
        this.f.a(null, bool2, false, new g(this, paramBoolean));
      }
      return;
    }
    finally {}
  }
  
  private boolean a(com.viber.voip.contacts.b.b.d paramd1, com.viber.voip.contacts.b.b.d paramd2, List<ContentProviderOperation> paramList)
  {
    if (paramd1 == null)
    {
      a(paramd2);
      paramd2.b(paramd2.i());
      a(paramList, com.viber.provider.contacts.d.a, paramd2, i.b);
      this.h.a(com.viber.voip.contacts.a.c.a(paramd2.r()));
      return true;
    }
    a(paramd1);
    if ((paramd2 != null) && (paramd2.k().update(paramd1))) {}
    for (int j = 1;; j = 0)
    {
      int k = paramd1.i();
      int m = paramd1.t();
      if ((j == 0) && (k == m)) {
        break label160;
      }
      if (k != m) {
        paramd1.c(1 + paramd1.w());
      }
      paramd1.b(k);
      a(paramList, com.viber.provider.contacts.d.a, paramd1, i.a);
      if (k == m) {
        break;
      }
      this.h.a(com.viber.voip.contacts.a.c.a(paramd1.a()));
      return true;
    }
    label160:
    return false;
  }
  
  private boolean a(Entity paramEntity1, Entity paramEntity2, EntityUpdater<? extends Entity> paramEntityUpdater, Uri paramUri, List<ContentProviderOperation> paramList)
  {
    if (paramEntity1 == null)
    {
      a(paramList, paramUri, paramEntity2, i.b);
      return true;
    }
    if (paramEntityUpdater.update(paramEntity1))
    {
      a(paramList, paramUri, paramEntity1, i.a);
      return true;
    }
    return false;
  }
  
  private void b(String paramString, h paramh)
  {
    this.e.a(1587, null, com.viber.provider.contacts.e.a, new String[] { "contact_id" }, paramString, null, null, new b(this, paramString, paramh), false, false);
  }
  
  public void a()
  {
    this.d.a();
  }
  
  public void a(String paramString, h paramh)
  {
    a("onInvisible: contactsId " + paramString);
    b("contact_id IN ( " + paramString + " )", paramh);
  }
  
  public void a(boolean paramBoolean)
  {
    this.d.a(paramBoolean);
  }
  
  public void a(boolean paramBoolean, String paramString, h paramh)
  {
    a("onDelete: removeIn " + paramBoolean + ", accountIds " + paramString);
    StringBuilder localStringBuilder = new StringBuilder().append("_id");
    if (paramBoolean) {}
    for (String str = " IN ";; str = " NOT IN ")
    {
      b(str + "( " + paramString + " )", paramh);
      return;
    }
  }
  
  public void a(boolean paramBoolean, Set<com.viber.voip.contacts.b.b.d> paramSet, h paramh)
  {
    if (paramSet.size() == 0)
    {
      a(paramBoolean, paramh, 0);
      return;
    }
    com.viber.voip.i.b localb = com.viber.voip.i.a.b(paramSet);
    this.i.a(localb.d, localb.c);
    this.c.fillCursor(this.e, new d(this, paramSet, paramBoolean, paramh), 1584, "phonebookcontact._id IN ( SELECT contact_id FROM phonebookrawcontact WHERE _id IN (" + localb.b + ")) OR " + "phonebookcontact" + "." + "_id" + " IN (" + localb.a + ")", new String[0]);
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.d.d();
    }
    this.d.b();
  }
  
  public boolean b()
  {
    return this.d.c();
  }
  
  public void c()
  {
    if (this.i != null) {
      this.i.c(false);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.a
 * JD-Core Version:    0.7.0.1
 */