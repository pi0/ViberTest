package com.viber.voip.util.b;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.widget.ImageView;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.bu;
import com.viber.voip.util.upload.b;
import java.io.IOException;

class ai
  implements b
{
  private final Uri b;
  private final Uri c;
  private final Bitmap d;
  private final x e;
  private final al f;
  private final ImageView g;
  
  private ai(ad paramad, Uri paramUri1, Uri paramUri2, Bitmap paramBitmap, ImageView paramImageView, x paramx, al paramal)
  {
    this.b = paramUri2;
    this.c = paramUri1;
    this.d = paramBitmap;
    this.e = paramx;
    this.f = paramal;
    this.g = paramImageView;
  }
  
  public void a(Uri paramUri)
  {
    dc.a(dk.a).post(new aj(this, paramUri));
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    if (paramInt == 15) {}
    try
    {
      bu.a(this.c, this.b);
      return;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.ai
 * JD-Core Version:    0.7.0.1
 */