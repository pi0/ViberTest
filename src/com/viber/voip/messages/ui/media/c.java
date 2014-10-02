package com.viber.voip.messages.ui.media;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.extras.image.a;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.messages.extras.image.m;
import com.viber.voip.util.b.b.f;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.util.bj;
import com.viber.voip.util.upload.n;

class c
  implements Runnable
{
  c(DoodleActivity paramDoodleActivity, Bitmap paramBitmap, Context paramContext, boolean paramBoolean, Runnable paramRunnable) {}
  
  public void run()
  {
    Uri localUri = h.a(this.a, l.b);
    n.c(localUri);
    SendMediaDataContainer localSendMediaDataContainer = new SendMediaDataContainer();
    a locala = m.a(this.e, localUri);
    if (locala != null)
    {
      w localw = w.a(this.e.getApplicationContext());
      x localx = new z().a(new f(this.b)).b(false).b();
      localw.b(locala.a, localx);
      localSendMediaDataContainer.h = locala.c;
      localSendMediaDataContainer.g = locala.b;
      localSendMediaDataContainer.c = locala.a;
    }
    localSendMediaDataContainer.f = bj.a(this.b, localUri);
    localSendMediaDataContainer.a = localUri;
    localSendMediaDataContainer.b = localUri;
    localSendMediaDataContainer.d = "image";
    if (this.c) {}
    for (int i = 1;; i = 2)
    {
      localSendMediaDataContainer.i = i;
      Intent localIntent = new Intent();
      localIntent.putExtra("data_container", localSendMediaDataContainer);
      this.e.setResult(-1, localIntent);
      dc.a(dk.a).post(this.d);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.c
 * JD-Core Version:    0.7.0.1
 */