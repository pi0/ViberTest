package com.viber.voip.messages.ui.media;

import android.net.Uri;
import android.widget.SeekBar;

class an
  implements Runnable
{
  private an(ai paramai) {}
  
  public void run()
  {
    ai.a(this.a, true);
    if ((ai.b(this.a) != null) && (ai.b(this.a).equals(ai.c(this.a))) && (ai.d(this.a) != ap.f) && (!ai.b(this.a).getScheme().equals("http")))
    {
      ai.b("setMediaUri SAME URI RETURN!");
      ai.a(this.a, ai.d(this.a));
      ai.f(this.a).post(ai.e(this.a));
      return;
    }
    if ((ai.b(this.a) == null) || (!ai.b(this.a).equals(ai.c(this.a))))
    {
      ai.a(this.a, 1);
      ai.a(this.a, ai.c(this.a));
    }
    for (;;)
    {
      try
      {
        if (ai.b(this.a) == null) {
          break label273;
        }
        ai.f(this.a).post(ai.e(this.a));
        ai.a(this.a, ap.a);
        ai.b(this.a, ai.b(this.a));
        return;
      }
      catch (Exception localException)
      {
        ai.b("setMediaUri error: " + localException);
        ai.b(this.a, ap.f);
        this.a.a(ai.h(this.a));
        return;
      }
      ai.g(this.a);
      break;
      label273:
      ai.a(this.a, ap.f);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.an
 * JD-Core Version:    0.7.0.1
 */