package com.viber.voip.contacts.c.f.b;

import java.util.Queue;

class x
  implements ab
{
  x(u paramu, ab paramab) {}
  
  public void a(int paramInt)
  {
    this.a.a(paramInt);
    synchronized (u.a(this.b))
    {
      u.a(this.b, false);
      if (u.a(this.b).size() > 0)
      {
        ag localag = (ag)u.a(this.b).poll();
        this.b.a(localag.d, localag.a, localag.b, localag.c);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.x
 * JD-Core Version:    0.7.0.1
 */