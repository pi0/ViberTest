package com.viber.voip.stickers;

import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.stickers.a.a;
import com.viber.voip.stickers.c.e;
import java.util.Iterator;
import java.util.List;

class ai
  implements Runnable
{
  ai(r paramr) {}
  
  public void run()
  {
    Iterator localIterator = r.a(this.a).c().iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      locale.a(null);
      r.a(this.a).a(locale);
      h.c(ViberApplication.getInstance(), Uri.parse(e.e(locale.e())));
    }
    r.a(this.a, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.ai
 * JD-Core Version:    0.7.0.1
 */