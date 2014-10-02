package com.viber.voip.stickers;

import android.util.SparseArray;
import com.viber.voip.ViberApplication;
import com.viber.voip.stickers.a.a;
import com.viber.voip.stickers.c.d;
import com.viber.voip.util.bj;
import com.viber.voip.w;
import java.io.File;
import java.util.Iterator;
import java.util.List;

class t
  implements Runnable
{
  t(r paramr, boolean paramBoolean1, boolean paramBoolean2, Runnable paramRunnable) {}
  
  public void run()
  {
    r.g(this.d).a();
    List localList = this.d.g();
    com.viber.voip.stickers.e.h localh = new com.viber.voip.stickers.e.h(ViberApplication.getInstance());
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if ((this.a) || (locald.e() != 400))
      {
        localh.a(locald.e());
        bj.a(new File(w.w + locald.e()));
      }
    }
    r.a(this.d).a(this.a);
    r.a(this.d, false);
    if (this.b)
    {
      this.d.d().g.a();
      this.d.d().h.a();
      r.a(this.d, this.d.v(), true);
      r.a(this.d, true);
    }
    synchronized (r.h(this.d))
    {
      r.h(this.d).clear();
      if (this.c != null) {
        this.c.run();
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.t
 * JD-Core Version:    0.7.0.1
 */