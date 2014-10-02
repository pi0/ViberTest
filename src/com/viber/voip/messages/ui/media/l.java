package com.viber.voip.messages.ui.media;

import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.a.a;
import com.viber.voip.messages.extras.map.d;

class l
  implements Runnable
{
  l(GoogleApiMapPreviewActivityV2 paramGoogleApiMapPreviewActivityV2, String paramString1, int paramInt1, int paramInt2, long paramLong1, String paramString2, float paramFloat, long paramLong2, boolean paramBoolean) {}
  
  public void run()
  {
    if (TextUtils.isEmpty(this.a))
    {
      ViberApplication.getInstance().getLocationManager().a(d.a(this.b), d.a(this.c), new m(this));
      return;
    }
    GoogleApiMapPreviewActivityV2.a(this.i, null, this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.a, this.h);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.l
 * JD-Core Version:    0.7.0.1
 */