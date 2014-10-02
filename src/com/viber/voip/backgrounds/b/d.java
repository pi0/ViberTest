package com.viber.voip.backgrounds.b;

import android.util.SparseArray;
import com.viber.voip.backgrounds.m;
import com.viber.voip.backgrounds.q;

class d
  extends e
{
  d(a parama, q paramq, com.viber.voip.backgrounds.a parama1, m paramm)
  {
    super(paramq, parama1, paramm);
  }
  
  public void a(int paramInt)
  {
    synchronized (this.a)
    {
      a.b(this.a).remove(paramInt);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.backgrounds.b.d
 * JD-Core Version:    0.7.0.1
 */