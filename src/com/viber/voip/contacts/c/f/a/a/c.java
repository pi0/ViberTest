package com.viber.voip.contacts.c.f.a.a;

import com.viber.voip.util.fh;
import java.util.Set;

class c
  implements fh
{
  c(a parama, Set paramSet, h paramh) {}
  
  public void onDeleteComplete(int paramInt1, Object paramObject, int paramInt2)
  {
    if ((paramInt2 > 0) && (a.a(this.c) != null)) {
      a.a(this.c).b(this.a);
    }
    a.a(this.c, true, this.b, paramInt2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.c
 * JD-Core Version:    0.7.0.1
 */