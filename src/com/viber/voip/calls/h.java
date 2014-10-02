package com.viber.voip.calls;

import com.viber.voip.util.fh;

class h
  implements fh
{
  h(g paramg, long paramLong) {}
  
  public void onDeleteComplete(int paramInt1, Object paramObject, int paramInt2)
  {
    s locals;
    if (this.b.a != null)
    {
      locals = this.b.a;
      if (paramInt2 <= 0) {
        break label40;
      }
    }
    label40:
    for (boolean bool = true;; bool = false)
    {
      locals.a(bool, this.a);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.h
 * JD-Core Version:    0.7.0.1
 */