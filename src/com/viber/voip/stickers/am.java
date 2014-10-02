package com.viber.voip.stickers;

import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.d.b;
import java.util.ArrayList;
import java.util.Iterator;

public class am
  implements b
{
  private static final String a = am.class.getSimpleName();
  private ArrayList<b> b = new ArrayList();
  
  private ArrayList<b> a()
  {
    try
    {
      ArrayList localArrayList = new ArrayList(this.b);
      return localArrayList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static void a(String paramString) {}
  
  public void a(a parama)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a(parama);
    }
  }
  
  public void a(d paramd)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a(paramd);
    }
  }
  
  public void a(d paramd, int paramInt)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a(paramd, paramInt);
    }
  }
  
  public void a(b paramb)
  {
    try
    {
      if (!this.b.contains(paramb)) {
        this.b.add(paramb);
      }
      a("+++ StickerDeploymentListener(" + this.b.size() + "): " + paramb);
      return;
    }
    finally {}
  }
  
  public void a(boolean paramBoolean, d paramd)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a(paramBoolean, paramd);
    }
  }
  
  public void b(d paramd)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).b(paramd);
    }
  }
  
  public void b(b paramb)
  {
    try
    {
      this.b.remove(paramb);
      a("--- StickerDeploymentListener(" + this.b.size() + "): " + paramb);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void c(d paramd)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).c(paramd);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.am
 * JD-Core Version:    0.7.0.1
 */