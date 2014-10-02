package com.viber.voip.util;

import android.os.Handler;

class fs
  implements Runnable
{
  fs(fr paramfr) {}
  
  public void run()
  {
    if (fr.a(this.a))
    {
      fr.b(this.a).run();
      fr.d(this.a).removeCallbacks(fr.c(this.a));
      fr.d(this.a).postDelayed(fr.c(this.a), fr.e(this.a));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.fs
 * JD-Core Version:    0.7.0.1
 */