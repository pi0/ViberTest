package com.viber.voip.contacts.e;

import android.os.Handler;
import android.text.TextUtils;

class e
  implements Runnable
{
  e(a parama) {}
  
  public void run()
  {
    boolean bool;
    if ((a.c(this.a) == 0) || (a.c(this.a) == 1))
    {
      if (a.c(this.a) == 1)
      {
        bool = true;
        h.a(a.d(this.a), bool);
        h.a(a.e(this.a), bool);
      }
    }
    else
    {
      if ((a.c(this.a) != 2) && (a.c(this.a) != 4)) {
        break label188;
      }
      if (!TextUtils.isEmpty(a.f(this.a))) {
        break label116;
      }
      a.h(this.a).post(new f(this));
    }
    label116:
    do
    {
      do
      {
        return;
        bool = false;
        break;
        if (a.c(this.a) == 2)
        {
          j.d(a.g(this.a), a.f(this.a), a.f(this.a));
          return;
        }
      } while (a.c(this.a) != 4);
      j.e(a.g(this.a), a.f(this.a), a.f(this.a));
      return;
      if (a.c(this.a) == 0)
      {
        j.c(a.g(this.a), a.a(this.a), a.b(this.a));
        return;
      }
      if (a.c(this.a) == 1)
      {
        j.a(a.g(this.a), a.a(this.a), a.b(this.a));
        return;
      }
    } while (a.c(this.a) != 3);
    label188:
    j.b(a.g(this.a), a.a(this.a), a.b(this.a));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.e.e
 * JD-Core Version:    0.7.0.1
 */