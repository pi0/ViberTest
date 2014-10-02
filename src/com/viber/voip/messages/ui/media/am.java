package com.viber.voip.messages.ui.media;

import android.net.Uri;
import android.widget.SeekBar;
import android.widget.VideoView;
import com.viber.voip.util.upload.s;
import com.viber.voip.util.upload.z;
import java.io.File;

class am
  implements Runnable
{
  private am(ai paramai) {}
  
  public int a()
  {
    int i;
    if (ai.b(this.a) == null) {
      i = 0;
    }
    z localz;
    do
    {
      return i;
      if (!ai.b(this.a).getScheme().equals("http")) {
        break;
      }
      localz = s.b(ai.b(this.a).getQueryParameter("downloadId"));
      i = ai.i(this.a).getBufferPercentage();
    } while ((localz == null) || (localz.d == null) || (localz.b == 0));
    return (int)(100L * new File(localz.d).length() / localz.b);
    return 100;
  }
  
  public void run()
  {
    int i = a();
    ai.f(this.a).setSecondaryProgress(i);
    if ((i < 100) && (ai.d(this.a) != ap.f))
    {
      ai.f(this.a).postDelayed(this, 1000L);
      if (!ai.l(this.a)) {
        ai.a(this.a, ap.a);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.am
 * JD-Core Version:    0.7.0.1
 */