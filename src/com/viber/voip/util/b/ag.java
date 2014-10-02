package com.viber.voip.util.b;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

class ag
  extends a<Object, Void, BitmapDrawable>
{
  private Uri e;
  private x f;
  private final WeakReference<ImageView> g;
  private final WeakReference<al> h;
  private final boolean i;
  
  public ag(ad paramad, ImageView paramImageView, al paramal)
  {
    this.g = new WeakReference(paramImageView);
    this.h = new WeakReference(paramal);
    if (paramImageView != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.i = bool;
      return;
    }
  }
  
  private ImageView e()
  {
    ImageView localImageView = (ImageView)this.g.get();
    if (this == ad.a(localImageView)) {
      return localImageView;
    }
    return null;
  }
  
  protected void a(BitmapDrawable paramBitmapDrawable)
  {
    boolean bool = true;
    if ((d()) || (ad.b(this.a))) {
      paramBitmapDrawable = null;
    }
    ImageView localImageView = e();
    if ((paramBitmapDrawable != null) && (this.i) && (localImageView != null)) {
      ad.a(this.a, localImageView, paramBitmapDrawable, this.f, bool);
    }
    al localal = (al)this.h.get();
    Bitmap localBitmap;
    Uri localUri;
    if ((localal != null) && ((!this.i) || ((this.i) && (localImageView != null))))
    {
      localBitmap = null;
      if (paramBitmapDrawable != null) {
        localBitmap = paramBitmapDrawable.getBitmap();
      }
      localUri = this.e;
      if (localBitmap != this.f.b) {
        break label134;
      }
    }
    for (;;)
    {
      localal.a(localUri, localBitmap, bool);
      return;
      label134:
      bool = false;
    }
  }
  
  protected void b(BitmapDrawable paramBitmapDrawable)
  {
    super.b(paramBitmapDrawable);
    synchronized (ad.a(this.a))
    {
      ad.a(this.a).notifyAll();
      return;
    }
  }
  
  protected BitmapDrawable d(Object... paramVarArgs)
  {
    int j = 1;
    int k = 0;
    this.e = ((Uri)paramVarArgs[0]);
    this.f = ((x)paramVarArgs[j]);
    String str = ad.a(this.e, this.f.i);
    for (;;)
    {
      boolean bool1;
      synchronized (ad.a(this.a))
      {
        if (this.a.a)
        {
          boolean bool2 = d();
          if (!bool2)
          {
            try
            {
              ad.a(this.a).wait();
            }
            catch (InterruptedException localInterruptedException) {}
            continue;
          }
        }
        if ((!d()) && ((!this.i) || ((this.i) && (e() != null))) && (!ad.b(this.a)))
        {
          m = j;
          if ((ad.c(this.a) == null) || (!this.f.e) || (m == 0)) {
            break label376;
          }
          localBitmap1 = this.a.a(str);
          if (((localBitmap1 != null) && (!this.f.g)) || (m == 0)) {
            break label367;
          }
          Bitmap localBitmap4 = this.a.a(this.e, this.f);
          if (localBitmap4 == null) {
            break label360;
          }
          localBitmap2 = localBitmap4;
          if (localBitmap4 == null) {
            break label343;
          }
          if ((j != 0) && (this.f.h != null)) {
            localBitmap2 = this.f.h.a(localBitmap2);
          }
          bool1 = this.f.e;
          if (localBitmap2 != null) {
            break label350;
          }
          localBitmap3 = this.f.b;
          if (localBitmap3 == null) {
            break label348;
          }
          BitmapDrawable localBitmapDrawable = new BitmapDrawable(this.a.b, localBitmap3);
          if ((k != 0) && (ad.c(this.a) != null)) {
            ad.c(this.a).a(str, localBitmap3);
          }
          return localBitmapDrawable;
        }
      }
      int m = 0;
      continue;
      label343:
      j = 0;
      continue;
      label348:
      return null;
      label350:
      k = bool1;
      Bitmap localBitmap3 = localBitmap2;
      continue;
      label360:
      Bitmap localBitmap2 = localBitmap1;
      continue;
      label367:
      localBitmap2 = localBitmap1;
      j = 0;
      continue;
      label376:
      Bitmap localBitmap1 = null;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.b.ag
 * JD-Core Version:    0.7.0.1
 */