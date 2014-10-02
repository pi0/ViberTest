package com.viber.voip.util.b.b;

import android.graphics.Bitmap;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.b.l;

public class e
  implements l
{
  private int a;
  
  public e(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2) {}
    for (;;)
    {
      this.a = paramInt1;
      return;
      paramInt1 = paramInt2;
    }
  }
  
  public Bitmap a(Bitmap paramBitmap)
  {
    return h.b(paramBitmap, this.a, 2, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.b.b.e
 * JD-Core Version:    0.7.0.1
 */