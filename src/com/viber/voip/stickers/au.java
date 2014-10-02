package com.viber.voip.stickers;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.stickers.c.e;
import java.util.Iterator;
import java.util.List;

class au
  implements Runnable
{
  au(as paramas) {}
  
  public void run()
  {
    Iterator localIterator = as.b(this.a).iterator();
    while (localIterator.hasNext())
    {
      int i = ((Integer)localIterator.next()).intValue();
      Bitmap localBitmap = BitmapFactory.decodeFile(e.d(i));
      if (localBitmap == null) {
        as.a(this.a, i);
      } else {
        h.c(localBitmap);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.au
 * JD-Core Version:    0.7.0.1
 */