package com.viber.voip.backgrounds;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import java.io.File;
import java.io.IOException;

class d
  implements Runnable
{
  d(a parama) {}
  
  public void run()
  {
    if (!h.b()) {
      return;
    }
    String str;
    q localq;
    if ((ViberApplication.preferences().b("PREF_DEFAULT_IMAGE_VERSION", 0) != 4) && (new q(10000112).a(false).toString().equalsIgnoreCase(ViberApplication.preferences().b(j.ar(), ""))))
    {
      str = "";
      if ((!TextUtils.isEmpty(str)) && (!new File(Uri.parse(str).getPath()).exists()))
      {
        a.c("checkDefaultBackground portraitImage:" + str + ", not exists");
        ViberApplication.preferences().a(j.ar(), "");
        str = "";
      }
      if (TextUtils.isEmpty(str))
      {
        a.c("checkDefaultBackground first start need to crop default background");
        localq = new q(10000114, 10000100);
        File localFile = new File(localq.g.getPath());
        if (!localFile.exists()) {
          break label229;
        }
        a.a(this.a, ViberApplication.getInstance(), localFile, localq);
        this.a.e();
      }
    }
    for (;;)
    {
      ViberApplication.preferences().a("PREF_DEFAULT_IMAGE_VERSION", 4);
      return;
      str = ViberApplication.preferences().b(j.ar(), "");
      break;
      try
      {
        label229:
        Bitmap localBitmap = BitmapFactory.decodeStream(ViberApplication.getInstance().getAssets().open("bg/10000114.jpg"));
        a.a(this.a, ViberApplication.getInstance(), localBitmap, localq);
        this.a.e();
        this.a.a(localq);
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          a.c("Error loading default background from asset: bg/10000114.jpg");
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.backgrounds.d
 * JD-Core Version:    0.7.0.1
 */