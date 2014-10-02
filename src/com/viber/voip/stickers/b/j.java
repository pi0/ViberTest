package com.viber.voip.stickers.b;

import android.util.SparseArray;
import com.viber.voip.stickers.d.b;

class j
  extends e
{
  j(h paramh, com.viber.voip.stickers.c.e parame, b paramb)
  {
    super(parame, paramb);
  }
  
  public void a(int paramInt)
  {
    synchronized (this.b)
    {
      h.a(this.b).remove(paramInt);
      h.a(this.b, -1);
      return;
    }
  }
  
  public void c(int paramInt)
  {
    synchronized (this.b)
    {
      h.a(this.b, paramInt);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.b.j
 * JD-Core Version:    0.7.0.1
 */