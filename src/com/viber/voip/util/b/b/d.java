package com.viber.voip.util.b.b;

import android.graphics.Bitmap;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.b.l;

public class d
  implements l
{
  private int a;
  private int b;
  
  public d(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public Bitmap a(Bitmap paramBitmap)
  {
    return h.a(paramBitmap, this.a, this.b, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.b.d
 * JD-Core Version:    0.7.0.1
 */