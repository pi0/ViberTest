package com.viber.voip.stickers;

import android.graphics.Bitmap;
import android.os.Handler;
import com.viber.voip.stickers.c.a;
import java.util.Iterator;

class bg
  implements Runnable
{
  private volatile boolean b;
  private Iterable<a> c;
  private int[] d;
  private bj e;
  
  public bg(Iterable<a> paramIterable, bj parambj)
  {
    this.c = parambj;
    Object localObject;
    this.e = localObject;
  }
  
  public bg(bf parambf, int[] paramArrayOfInt, bj parambj)
  {
    this.d = paramArrayOfInt;
    this.e = parambj;
  }
  
  private void a(a parama)
  {
    for (;;)
    {
      synchronized (bf.b(this.a))
      {
        if (bf.b(this.a).a(parama) != null) {
          return;
        }
        b localb = bf.c(this.a);
        if (!parama.g())
        {
          bool = true;
          Bitmap localBitmap = localb.c(parama, bool, true, ba.c);
          if (localBitmap == null) {
            break;
          }
          synchronized (bf.b(this.a))
          {
            bf.b(this.a).a(parama, localBitmap);
            return;
          }
        }
      }
      boolean bool = false;
    }
  }
  
  public void a()
  {
    this.b = true;
  }
  
  public void b()
  {
    new Thread(this).start();
  }
  
  public void run()
  {
    long l = System.currentTimeMillis();
    a locala;
    if (this.c != null)
    {
      Iterator localIterator = this.c.iterator();
      if (localIterator.hasNext())
      {
        locala = (a)localIterator.next();
        if (!this.b) {
          break label92;
        }
      }
    }
    for (;;)
    {
      if (this.e != null) {
        bf.a(this.a).post(new bh(this));
      }
      bf.a(this.a, this);
      (System.currentTimeMillis() - l);
      return;
      label92:
      a(locala);
      break;
      if (this.d != null)
      {
        int[] arrayOfInt = this.d;
        int i = arrayOfInt.length;
        int j = 0;
        label120:
        int k;
        if (j < i)
        {
          k = arrayOfInt[j];
          if (k > 0) {
            break label144;
          }
        }
        label144:
        do
        {
          j++;
          break label120;
          break;
          if (k > 0) {
            a(r.a().l(k));
          }
        } while (!this.b);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.bg
 * JD-Core Version:    0.7.0.1
 */