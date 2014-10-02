package com.viber.voip.messages.adapters;

import android.os.Handler;
import com.viber.voip.stickers.p;
import java.util.ArrayList;
import java.util.List;

class r
  implements Runnable
{
  r(q paramq, int paramInt1, long paramLong, int paramInt2, u paramu, boolean paramBoolean) {}
  
  public void run()
  {
    int i = 0;
    q.a("setPackageId start: " + this.a + " (" + (System.currentTimeMillis() - this.b) + "ms)");
    p[] arrayOfp = q.b(this.f).a(this.a, this.c, q.a(this.f), true);
    q.a(this.f, false);
    ArrayList localArrayList = new ArrayList();
    int j = arrayOfp.length;
    while (i < j)
    {
      p localp = arrayOfp[i];
      localArrayList.add(new t(this.f, localp));
      if (localp.a.length > q.c(this.f)) {
        q.a(this.f, localp.a.length);
      }
      i++;
    }
    s locals = new s(this, localArrayList);
    if (this.e) {
      q.d(this.f).post(locals);
    }
    for (;;)
    {
      q.a("setPackageId end: " + this.a + " (" + (System.currentTimeMillis() - this.b) + "ms)");
      return;
      locals.run();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.r
 * JD-Core Version:    0.7.0.1
 */