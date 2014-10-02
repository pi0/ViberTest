package com.viber.voip.contacts.c.f.b;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.text.TextUtils;
import com.viber.provider.contacts.g;
import com.viber.voip.contacts.b.b.a.i;
import com.viber.voip.contacts.b.b.a.l;
import com.viber.voip.contacts.b.b.a.o;
import com.viber.voip.contacts.b.b.k;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ah
{
  private static final String a = ah.class.getSimpleName();
  private u b;
  
  public ah(u paramu)
  {
    this.b = paramu;
  }
  
  private void a()
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(ContentProviderOperation.newDelete(g.a).withSelection("clear=1", null).build());
      localArrayList.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("viber", Boolean.valueOf(false)).withValue("recently_joined_date", Integer.valueOf(0)).withSelection(this.b.a(false), null).build());
      localArrayList.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("viber", Boolean.valueOf(true)).withSelection(this.b.a(true), null).build());
      localArrayList.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("viber", Boolean.valueOf(true)).withValue("joined_date", Long.valueOf(System.currentTimeMillis())).withSelection("viber=1 AND joined_date=0", null).build());
      this.b.a(localArrayList);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void a(Map<String, Set<c>> paramMap, c paramc)
  {
    Object localObject = (Set)paramMap.get(paramc.a());
    if (localObject == null)
    {
      localObject = new HashSet();
      paramMap.put(paramc.a(), localObject);
    }
    ((Set)localObject).add(paramc);
  }
  
  public aj a(e parame)
  {
    ArrayList localArrayList1 = new ArrayList();
    if (parame.g()) {
      localArrayList1.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.f.a).withValue("clear", Integer.valueOf(1)).build());
    }
    localArrayList1.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.f.a).withValue("clear", Integer.valueOf(0)).withSelection("data2 IN (" + com.viber.voip.i.a.a(parame.c()) + ")", null).build());
    this.b.a(localArrayList1);
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    Object localObject;
    ArrayList localArrayList2;
    HashMap localHashMap;
    Map localMap1;
    Map localMap2;
    Iterator localIterator1;
    if (parame.i())
    {
      localObject = this.b.b();
      localArrayList2 = new ArrayList();
      localHashMap = new HashMap();
      localMap1 = this.b.b(parame.c());
      localMap2 = this.b.c(parame.d());
      localIterator1 = parame.b().values().iterator();
    }
    for (;;)
    {
      label198:
      if (!localIterator1.hasNext()) {
        break label705;
      }
      c localc = (c)localIterator1.next();
      ae localae = (ae)localMap1.get(localc.b().b);
      ac localac = (ac)localMap2.get(localc.a());
      int k;
      label265:
      int m;
      if (localac == null)
      {
        k = 1;
        if (localae != null) {
          break label365;
        }
        m = 1;
        label273:
        if ((localae == null) || (localae.c == null) || (localae.c.equals(localc.a()))) {
          break label371;
        }
      }
      label365:
      label371:
      for (int n = 1;; n = 0)
      {
        if (m != 0) {
          localHashSet2.add(localc.b().b);
        }
        if ((k == 0) || (m == 0)) {
          break label377;
        }
        a(localHashMap, localc);
        break label198;
        localObject = new HashSet();
        break;
        k = 0;
        break label265;
        m = 0;
        break label273;
      }
      label377:
      if ((k != 0) && (m == 0))
      {
        a(localHashMap, localc);
        localArrayList2.add(ContentProviderOperation.newDelete(com.viber.provider.contacts.f.a).withSelection("_id=" + localae.a, null).build());
      }
      else if ((n != 0) && (k == 0))
      {
        localArrayList2.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.f.a).withValue("contact_id", Long.valueOf(localac.a)).withValue("raw_id", Long.valueOf(localac.c)).withSelection("_id=" + localae.a, null).build());
        localArrayList2.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("version", Integer.valueOf(1 + localac.b)).withSelection("_id=" + localac.a, null).build());
      }
      else if ((m != 0) && (k == 0))
      {
        k localk = new k(localc.b());
        localk.a(localac.a);
        localk.b(localac.c);
        localArrayList2.add(ContentProviderOperation.newInsert(com.viber.provider.contacts.f.a).withValues(localk.getContentValues()).build());
        localArrayList2.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("version", Integer.valueOf(1 + localac.b)).withSelection("_id=" + localac.a, null).build());
      }
    }
    label705:
    Iterator localIterator2 = localHashMap.entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      int i = localArrayList2.size();
      String str = (String)localEntry.getKey();
      com.viber.voip.contacts.b.b.d locald = new com.viber.voip.contacts.b.b.d(str, (String)parame.a().get(str), (Set)localEntry.getValue());
      localArrayList2.add(ContentProviderOperation.newInsert(com.viber.provider.contacts.d.a).withValues(locald.getContentValues()).build());
      localHashSet1.add(str);
      int j = localArrayList2.size();
      i locali = locald.h();
      localArrayList2.add(ContentProviderOperation.newInsert(com.viber.provider.contacts.e.a).withValues(locali.getContentValues()).withValueBackReference("contact_id", i).build());
      Iterator localIterator3 = locali.b().iterator();
      while (localIterator3.hasNext())
      {
        l locall = (l)localIterator3.next();
        localArrayList2.add(ContentProviderOperation.newInsert(com.viber.provider.contacts.f.a).withValues(locall.getContentValues()).withValueBackReference("raw_id", j).withValueBackReference("contact_id", i).build());
      }
    }
    if (parame.i())
    {
      this.b.d();
      localArrayList2.add(ContentProviderOperation.newDelete(com.viber.provider.contacts.f.a).withSelection("clear=1", null).build());
      localArrayList2.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("viber_out", Boolean.valueOf(true)).withSelection("phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.int_data2=1 AND phonebookdata.mime_type=0)", null).build());
    }
    localArrayList2.add(ContentProviderOperation.newDelete(com.viber.provider.contacts.d.a).withSelection("_id NOT IN (SELECT contact_id FROM phonebookdata)", null).build());
    localArrayList2.add(ContentProviderOperation.newDelete(com.viber.provider.contacts.e.a).withSelection("_id NOT IN (SELECT contact_id FROM phonebookdata)", null).build());
    this.b.a(localArrayList2);
    return new aj(localHashSet1, localHashSet2, (Set)localObject, null);
  }
  
  public ak a(f paramf)
  {
    HashSet localHashSet1;
    HashSet localHashSet2;
    HashSet localHashSet3;
    HashMap localHashMap;
    ArrayList localArrayList;
    try
    {
      localHashSet1 = new HashSet();
      localHashSet2 = new HashSet();
      localHashSet3 = new HashSet();
      localHashMap = new HashMap();
      Map localMap1 = paramf.f();
      Map localMap2 = this.b.a(localMap1.keySet());
      localArrayList = new ArrayList();
      if (paramf.g()) {
        localArrayList.add(ContentProviderOperation.newUpdate(g.a).withValue("clear", Integer.valueOf(1)).build());
      }
      localArrayList.add(ContentProviderOperation.newUpdate(g.a).withValue("clear", Integer.valueOf(0)).withSelection("canonized_number IN (" + com.viber.voip.i.a.a(localMap1.keySet()) + ")", null).build());
      Iterator localIterator1 = localMap2.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry2 = (Map.Entry)localIterator1.next();
        if (localMap1.containsKey(localEntry2.getKey()))
        {
          String str1 = (String)localEntry2.getKey();
          String str2 = (String)localMap1.remove(str1);
          if (!((o)localEntry2.getValue()).c().equals(str2))
          {
            localHashMap.put(str1, str2);
            if (TextUtils.isEmpty(str2)) {
              localHashSet3.add(str1);
            }
            localArrayList.add(ContentProviderOperation.newUpdate(g.a).withValue("photo", str2).withSelection("canonized_number=?", new String[] { str1 }).build());
          }
        }
      }
      localIterator2 = localMap1.entrySet().iterator();
    }
    finally {}
    Iterator localIterator2;
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator2.next();
      localHashMap.put(localEntry1.getKey(), localEntry1.getValue());
      localHashSet2.add(localEntry1.getKey());
      o localo = new o((String)localEntry1.getKey(), (String)localEntry1.getValue());
      localArrayList.add(ContentProviderOperation.newInsert(g.a).withValues(localo.getContentValues()).build());
    }
    this.b.a(localArrayList);
    Object localObject2;
    if (paramf.i())
    {
      localObject2 = this.b.a();
      a();
    }
    for (boolean bool = true;; bool = false)
    {
      ak localak = new ak(bool, (Set)localObject2, localHashSet2, localHashSet3, localHashMap, null);
      return localak;
      localObject2 = localHashSet1;
    }
  }
  
  public ak a(String paramString)
  {
    try
    {
      HashSet localHashSet = new HashSet();
      localHashSet.add(paramString);
      this.b.b(paramString);
      a();
      ak localak = new ak(true, localHashSet, new HashSet(), new HashSet(), new HashMap(), null);
      return localak;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public ak a(String paramString, long paramLong)
  {
    int j;
    int k;
    for (;;)
    {
      HashSet localHashSet1;
      HashSet localHashSet2;
      ArrayList localArrayList;
      List localList1;
      try
      {
        localHashSet1 = new HashSet();
        localHashSet2 = new HashSet();
        localHashSet2.add(paramString);
        this.b.c(paramString);
        a();
        localArrayList = new ArrayList();
        localList1 = this.b.c();
        List localList2 = this.b.a(paramString);
        int i = 0;
        if ((i < 5) && (i < localList2.size()))
        {
          com.viber.voip.contacts.b.b.a.a locala2 = (com.viber.voip.contacts.b.b.a.a)localList2.get(i);
          ContentProviderOperation.Builder localBuilder2 = ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("recently_joined_date", Long.valueOf(paramLong));
          String[] arrayOfString2 = new String[1];
          arrayOfString2[0] = String.valueOf(locala2.getId());
          localArrayList.add(localBuilder2.withSelection("_id=?", arrayOfString2).build());
          localHashSet1.add(locala2);
          i++;
          continue;
        }
        j = 5 - localArrayList.size();
        if (j <= 0) {
          break;
        }
      }
      finally {}
      if (k < localList1.size())
      {
        com.viber.voip.contacts.b.b.a.a locala1 = (com.viber.voip.contacts.b.b.a.a)localList1.get(k);
        ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("recently_joined_date", Integer.valueOf(0));
        String[] arrayOfString1 = new String[1];
        arrayOfString1[0] = String.valueOf(locala1.getId());
        localArrayList.add(localBuilder1.withSelection("_id=?", arrayOfString1).build());
        k++;
      }
      else
      {
        this.b.a(localArrayList);
        ak localak = new ak(true, new HashSet(), localHashSet2, new HashSet(), new HashMap(), localHashSet1, null);
        return localak;
      }
    }
    for (;;)
    {
      k = j;
      break;
      j = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.ah
 * JD-Core Version:    0.7.0.1
 */