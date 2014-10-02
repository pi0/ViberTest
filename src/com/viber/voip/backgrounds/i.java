package com.viber.voip.backgrounds;

import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.bj;
import com.viber.voip.w;
import java.io.File;

class i
  implements Runnable
{
  i(a parama) {}
  
  public void run()
  {
    if (h.b())
    {
      a.e(this.a).a();
      boolean bool1 = bj.a(new File(w.B), false);
      boolean bool2 = bj.f(w.B);
      a.c("delete all: " + bool1 + ", nomediaFile: " + bool2);
      a.b(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.backgrounds.i
 * JD-Core Version:    0.7.0.1
 */