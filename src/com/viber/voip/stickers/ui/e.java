package com.viber.voip.stickers.ui;

import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.h;
import com.viber.voip.stickers.o;

class e
  implements o
{
  e(d paramd, c paramc, boolean paramBoolean) {}
  
  public void a(a parama, Object paramObject, h paramh)
  {
    boolean bool1 = true;
    boolean bool2;
    if ((paramObject == d.c(this.c)) && (parama == d.b(this.c)))
    {
      bool2 = bool1;
      if (this.a != null) {
        bool1 = this.a.a(bool2);
      }
      if (bool2) {
        if (bool1)
        {
          if (!this.b) {
            break label90;
          }
          d.a(this.c, paramh);
        }
      }
    }
    for (;;)
    {
      d.a(this.c, null);
      return;
      bool2 = false;
      break;
      label90:
      d.b(this.c, paramh);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.ui.e
 * JD-Core Version:    0.7.0.1
 */