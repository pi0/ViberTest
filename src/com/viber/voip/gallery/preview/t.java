package com.viber.voip.gallery.preview;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import com.viber.voip.gallery.b.a;
import com.viber.voip.messages.extras.image.h;
import java.io.FileNotFoundException;
import java.io.IOException;

class t
  implements Runnable
{
  final Uri a;
  final Context b;
  
  t(o paramo, Uri paramUri, Context paramContext)
  {
    this.a = paramUri;
    this.b = paramContext;
  }
  
  public void run()
  {
    try
    {
      Bitmap localBitmap1 = h.a(this.b, a.b(this.a), o.f(), o.f(), false);
      Bitmap localBitmap2 = h.a(this.b, this.a, o.f(), o.f(), false);
      Bitmap localBitmap3 = localBitmap1.copy(localBitmap1.getConfig(), true);
      localBitmap1.recycle();
      this.c.a(localBitmap3, localBitmap2);
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      System.gc();
      return;
    }
    catch (IOException localIOException) {}catch (FileNotFoundException localFileNotFoundException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.preview.t
 * JD-Core Version:    0.7.0.1
 */