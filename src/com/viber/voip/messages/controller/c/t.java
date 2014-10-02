package com.viber.voip.messages.controller.c;

import com.viber.voip.messages.controller.dc;
import com.viber.voip.messages.controller.dj;
import java.util.Map;

class t
  implements al
{
  t(e parame, int paramInt1, long paramLong, int paramInt2, boolean paramBoolean) {}
  
  public void a(dc paramdc)
  {
    if ((paramdc instanceof dj))
    {
      ((dj)paramdc).a(this.a, this.b, this.c, this.d);
      if (!this.d) {
        break label64;
      }
      e.a(this.e).put(Long.valueOf(this.b), Boolean.valueOf(true));
    }
    label64:
    while (!e.a(this.e).containsKey(Long.valueOf(this.b))) {
      return;
    }
    e.a(this.e).remove(Long.valueOf(this.b));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.t
 * JD-Core Version:    0.7.0.1
 */