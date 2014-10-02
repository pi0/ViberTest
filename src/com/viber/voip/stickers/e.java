package com.viber.voip.stickers;

import android.graphics.Bitmap;
import com.viber.voip.ViberApplication;
import com.viber.voip.stickers.c.a;
import com.viber.voip.util.fd;

class e
  implements bi
{
  fd<String, Bitmap> a = new f(this, ViberApplication.getInstance().getApplicationContext(), "StickerBitmapLoader.ArbitraryThumbCacheBackend", 0.007813F);
  
  private e(b paramb) {}
  
  public Bitmap a(a parama)
  {
    return (Bitmap)this.a.get(parama.w);
  }
  
  public void a()
  {
    this.a.evictAll();
  }
  
  public void a(a parama, Bitmap paramBitmap)
  {
    if ((parama.w == null) || (paramBitmap == null))
    {
      b.b("Can't put bitmap to ArbitraryThumbCache");
      return;
    }
    this.a.put(parama.w, paramBitmap);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.e
 * JD-Core Version:    0.7.0.1
 */