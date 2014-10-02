package com.viber.voip.gallery.preview;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.Uri;
import com.viber.voip.gallery.b.a;

class u
  implements Runnable
{
  final Uri a;
  Bitmap b;
  Bitmap c;
  
  u(o paramo, Uri paramUri, Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    this.a = paramUri;
    this.b = paramBitmap1;
    this.c = paramBitmap2;
  }
  
  public void run()
  {
    if ((this.b != null) && (this.c != null)) {}
    for (;;)
    {
      try
      {
        Bitmap localBitmap2 = Bitmap.createBitmap(this.c.getWidth(), this.c.getHeight(), Bitmap.Config.ARGB_8888);
        Bitmap localBitmap1 = localBitmap2;
        Canvas localCanvas;
        Paint localPaint;
        Uri localUri3;
        Uri localUri2;
        localBitmap1 = null;
      }
      catch (OutOfMemoryError localOutOfMemoryError1)
      {
        try
        {
          a.b(this.b, this.a);
          if (this.b != null) {
            this.b.recycle();
          }
          this.b = null;
          this.c = null;
          localUri1 = localUri2;
          this.d.a(localUri1, localBitmap1);
          return;
        }
        catch (OutOfMemoryError localOutOfMemoryError3)
        {
          continue;
        }
        localOutOfMemoryError1 = localOutOfMemoryError1;
        localBitmap1 = null;
        localUri2 = null;
        if (localBitmap1 != null)
        {
          localBitmap1.recycle();
          localBitmap1 = null;
        }
        System.gc();
        if (this.b != null) {
          this.b.recycle();
        }
        this.b = null;
        this.c = null;
        localUri1 = localUri2;
        continue;
      }
      finally
      {
        if (this.b != null) {
          this.b.recycle();
        }
        this.b = null;
        this.c = null;
      }
      Uri localUri1 = null;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.preview.u
 * JD-Core Version:    0.7.0.1
 */