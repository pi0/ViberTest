package com.viber.voip.market.b.a;

import android.util.SparseArray;
import com.viber.voip.stickers.c.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class d
  implements c
{
  private static final String c = d.class.getSimpleName();
  protected List<a> a = new ArrayList();
  protected SparseArray<a> b = new SparseArray();
  
  public d(List<? extends f> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      a locala = new a((f)localIterator.next());
      this.a.add(locala);
      this.b.append(locala.e(), locala);
    }
  }
  
  public int a()
  {
    return 0;
  }
  
  public a a(int paramInt)
  {
    return (a)this.a.get(paramInt);
  }
  
  protected void a(a parama)
  {
    this.a.add(parama);
    this.b.append(parama.e(), parama);
  }
  
  public void a(List<? extends f> paramList)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      f localf = (f)localIterator1.next();
      localHashSet.add(Integer.valueOf(localf.e()));
      a locala2 = (a)this.b.get(localf.e());
      if (locala2 != null) {
        locala2.a(localf);
      } else {
        a(new a(localf));
      }
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator2 = this.a.iterator();
    while (localIterator2.hasNext())
    {
      a locala1 = (a)localIterator2.next();
      if (!localHashSet.contains(Integer.valueOf(locala1.e())))
      {
        localArrayList.add(locala1);
        this.b.remove(locala1.e());
      }
    }
    this.a.removeAll(localArrayList);
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public int b()
  {
    return this.a.size();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.b.a.d
 * JD-Core Version:    0.7.0.1
 */