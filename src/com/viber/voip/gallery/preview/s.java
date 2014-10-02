package com.viber.voip.gallery.preview;

import android.graphics.Bitmap;
import com.viber.voip.widget.PhotoDoodleView;

class s
  implements Runnable
{
  s(o paramo, Bitmap paramBitmap1, Bitmap paramBitmap2) {}
  
  public void run()
  {
    o.a(this.c, null);
    if (o.c(this.c) != null)
    {
      if (!o.d(this.c)) {
        break label75;
      }
      o.c(this.c).a(null, this.a);
      o.c(this.c).setCanvasDirty(false);
      o.a(this.c, false);
    }
    for (;;)
    {
      o.c(this.c).invalidate();
      return;
      label75:
      o.c(this.c).a(this.b, this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.preview.s
 * JD-Core Version:    0.7.0.1
 */