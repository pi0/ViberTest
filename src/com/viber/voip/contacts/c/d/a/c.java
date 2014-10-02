package com.viber.voip.contacts.c.d.a;

import com.viber.voip.contacts.c.d.i;
import java.util.Iterator;
import java.util.Set;

class c
  implements i
{
  c(b paramb) {}
  
  public void a(String paramString, Set<com.viber.voip.contacts.b.b> paramSet)
  {
    if (paramSet.size() > 0)
    {
      com.viber.voip.contacts.b.b localb = (com.viber.voip.contacts.b.b)paramSet.iterator().next();
      b.a(this.a, localb.getId());
      b.a(this.a, localb.g());
      b.a(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.a.c
 * JD-Core Version:    0.7.0.1
 */