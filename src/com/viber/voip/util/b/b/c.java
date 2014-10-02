package com.viber.voip.util.b.b;

import android.graphics.Bitmap;
import com.viber.voip.util.b.l;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class c
  implements l
{
  private List<l> a = new LinkedList();
  
  public Bitmap a(Bitmap paramBitmap)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      Bitmap localBitmap = ((l)localIterator.next()).a(paramBitmap);
      if (localBitmap != paramBitmap) {
        paramBitmap.recycle();
      }
      paramBitmap = localBitmap;
    }
    return paramBitmap;
  }
  
  public c a(l paraml)
  {
    this.a.add(paraml);
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.b.c
 * JD-Core Version:    0.7.0.1
 */