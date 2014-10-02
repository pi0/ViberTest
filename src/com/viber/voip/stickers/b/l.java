package com.viber.voip.stickers.b;

import android.util.SparseArray;
import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.r;

class l
  extends o
{
  l(h paramh, a parama, r paramr, com.viber.voip.stickers.b paramb, com.viber.voip.stickers.d.b paramb1)
  {
    super(parama, paramr, paramb, paramb1);
  }
  
  public void a(int paramInt)
  {
    synchronized (this.b)
    {
      h.d(this.b).remove(paramInt);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.b.l
 * JD-Core Version:    0.7.0.1
 */