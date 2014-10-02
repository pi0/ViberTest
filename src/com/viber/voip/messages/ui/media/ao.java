package com.viber.voip.messages.ui.media;

import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.VideoView;
import com.viber.voip.util.hx;

class ao
  implements Runnable
{
  private ao(ai paramai) {}
  
  public int a(long paramLong1, long paramLong2)
  {
    Double.valueOf(0.0D);
    long l1 = (int)(paramLong1 / 1000L);
    long l2 = (int)(paramLong2 / 1000L);
    return Double.valueOf(100.0D * (l1 / l2)).intValue();
  }
  
  public void run()
  {
    int i = ai.i(this.a).getCurrentPosition();
    if ((ai.j(this.a) == i) && (ai.d(this.a) != ap.a)) {
      ai.a(this.a, ap.a);
    }
    for (;;)
    {
      ai.b(this.a, i);
      if (ai.i(this.a).isPlaying()) {
        break;
      }
      ai.b("ProgressUpdater return");
      return;
      if ((ai.j(this.a) != i) && (ai.d(this.a) != ap.b))
      {
        ai.a(this.a, ap.b);
        this.a.b();
      }
    }
    int j = ai.i(this.a).getDuration();
    int k = a(ai.j(this.a), j);
    ai.f(this.a).setProgress(k);
    ai.f(this.a).postDelayed(this, 1000L);
    ai.k(this.a).setText(hx.a(ai.j(this.a)));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ao
 * JD-Core Version:    0.7.0.1
 */