package com.viber.voip.stickers.d;

import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class c
{
  private static final String a = c.class.getSimpleName();
  private final Handler b = dc.a(dk.a);
  private Set<a> c = new HashSet();
  private Set<g> d = new HashSet();
  private Runnable e = null;
  
  public static c a()
  {
    return f.a();
  }
  
  public void a(int paramInt)
  {
    Set localSet = c();
    this.b.post(new e(this, localSet, paramInt));
  }
  
  public void a(a parama)
  {
    try
    {
      this.c.add(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(g paramg)
  {
    try
    {
      this.d.add(paramg);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(List<com.viber.voip.stickers.c.d> paramList1, List<com.viber.voip.stickers.c.d> paramList2, List<com.viber.voip.stickers.c.d> paramList3)
  {
    Set localSet = b();
    if (this.e != null) {
      this.b.removeCallbacks(this.e);
    }
    this.e = new d(this, localSet, paramList1, paramList2, paramList3);
    this.b.postDelayed(this.e, 500L);
  }
  
  public Set<a> b()
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
  
  public void b(a parama)
  {
    try
    {
      this.c.remove(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Set<g> c()
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
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.d.c
 * JD-Core Version:    0.7.0.1
 */