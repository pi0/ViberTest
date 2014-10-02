package com.viber.voip.messages.extras.twitter;

import android.app.Activity;
import android.net.Uri;
import com.viber.voip.messages.extras.image.h;

class q
  implements Runnable
{
  q(l paraml, Activity paramActivity, String paramString1, long paramLong, String paramString2) {}
  
  public void run()
  {
    Uri localUri = h.a(this.a, this.b);
    if (localUri != null) {
      l.a(this.e, this.a, this.c, localUri, this.d);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.q
 * JD-Core Version:    0.7.0.1
 */