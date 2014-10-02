package com.viber.voip.stickers;

import android.os.Handler;
import com.viber.voip.stickers.c.a;
import java.util.Random;

class k
  implements i, j, Runnable
{
  public final int a;
  public final int b;
  private final a d;
  private final boolean e;
  private final boolean f;
  private final boolean g;
  private final ba h;
  private final o i;
  private volatile boolean j;
  private h k;
  private int l;
  private Runnable m = new l(this);
  
  public k(b paramb, a parama, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, ba paramba, o paramo)
  {
    this.d = parama;
    this.e = paramBoolean2;
    this.g = paramBoolean3;
    this.h = paramba;
    this.f = paramBoolean1;
    this.i = paramo;
    this.b = b.a(paramb).nextInt();
    int n = 1 + b.a;
    b.a = n;
    this.l = n;
    if (this.l == 1073741824) {
      this.l = 0;
    }
    int i1 = 1073741824 - this.l;
    if (paramBoolean2) {
      i1 |= 0x40000000;
    }
    this.a = i1;
  }
  
  private boolean d()
  {
    return this.j;
  }
  
  public int a()
  {
    return this.a;
  }
  
  public void b()
  {
    this.j = true;
    this.c.c.removeCallbacks(this.m);
  }
  
  public void c()
  {
    this.j = true;
  }
  
  public void run()
  {
    long l1 = 20L;
    if (d()) {}
    for (;;)
    {
      return;
      label12:
      long l2 = System.currentTimeMillis() - this.c.b;
      long l3;
      label34:
      long l4;
      if (this.f)
      {
        l3 = l1;
        l4 = l3 - l2;
        if (l4 <= 0L) {
          break label68;
        }
      }
      try
      {
        Thread.sleep(l4);
        label52:
        if (!d()) {
          break label12;
        }
        return;
        l3 = 250L;
        break label34;
        label68:
        h localh = this.c.a(this.d, this.e, this.g, this.h);
        this.k = localh;
        if ((localh == null) || (d()) || ((b.b(this.c)) && (this.f))) {
          continue;
        }
        Handler localHandler = this.c.c;
        Runnable localRunnable = this.m;
        if (this.f) {}
        for (;;)
        {
          localHandler.postDelayed(localRunnable, l1);
          return;
          l1 = 0L;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        break label52;
      }
    }
  }
  
  public String toString()
  {
    return "L" + this.l;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.k
 * JD-Core Version:    0.7.0.1
 */