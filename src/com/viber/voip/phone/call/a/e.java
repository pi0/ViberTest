package com.viber.voip.phone.call.a;

import android.net.Uri;
import com.viber.jni.dialer.DialerControllerDelegate.DialerIncomingScreen;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.i;
import com.viber.voip.phone.call.k;
import com.viber.voip.sound.ISoundService;

public class e
  implements DialerControllerDelegate.DialerIncomingScreen, i
{
  private boolean a = false;
  private k b;
  private ISoundService c;
  
  public e(ISoundService paramISoundService)
  {
    this.c = paramISoundService;
  }
  
  private void a(Uri paramUri)
  {
    this.c.playRingtone(this.c.getRingtone(paramUri));
  }
  
  public void hideReception()
  {
    this.a = false;
    this.b = null;
    this.c.stopRingtone();
  }
  
  public void onCallInfoReady(k paramk)
  {
    this.b = paramk;
    if (this.a) {
      a(this.b.c().d());
    }
  }
  
  public void showReception(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    this.a = true;
    if (this.b != null) {
      a(this.b.c().d());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.call.a.e
 * JD-Core Version:    0.7.0.1
 */