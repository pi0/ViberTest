package com.viber.voip.messages.adapters;

import android.util.SparseArray;
import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.p;

class t
{
  v[] a;
  z b;
  p c;
  
  public t(q paramq, p paramp)
  {
    this.c = paramp;
    a[] arrayOfa = paramp.a;
    this.a = new v[arrayOfa.length];
    for (int i = 0; i < arrayOfa.length; i++)
    {
      a locala = arrayOfa[i];
      v localv = new v(paramq, locala);
      this.a[i] = localv;
      q.e(paramq).put(locala.b, localv);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.adapters.t
 * JD-Core Version:    0.7.0.1
 */