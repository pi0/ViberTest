package com.viber.voip.stickers;

import android.os.SystemClock;
import com.viber.voip.util.bi;
import com.viber.voip.w;
import java.util.Iterator;
import java.util.List;

public class ao
{
  private static final String a = ao.class.getSimpleName();
  private static long b = 0L;
  private com.viber.voip.stickers.a.a c;
  private bi d;
  
  public ao(com.viber.voip.stickers.a.a parama)
  {
    this.c = parama;
  }
  
  private static void a(String paramString) {}
  
  private bi b()
  {
    return new aq(this);
  }
  
  private void c()
  {
    a("collectGarbage()");
    Iterator localIterator = this.c.b().iterator();
    while (localIterator.hasNext()) {
      ((com.viber.voip.stickers.c.a)localIterator.next()).a(this.d);
    }
    List localList = this.d.b(w.w);
    this.d.a(localList);
  }
  
  void a()
  {
    if (this.d != null) {}
    long l;
    do
    {
      return;
      l = SystemClock.elapsedRealtime();
    } while ((b != 0L) && (l - b < 86400000L));
    b = l;
    this.d = b();
    this.d.a(true);
    new ap(this).execute(new Void[0]);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.ao
 * JD-Core Version:    0.7.0.1
 */