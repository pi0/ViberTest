package com.viber.voip.stickers;

import android.content.Context;
import android.graphics.Bitmap;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.fd;

class f
  extends fd<String, Bitmap>
{
  f(e parame, Context paramContext, String paramString, float paramFloat)
  {
    super(paramContext, paramString, paramFloat);
  }
  
  protected int a(String paramString, Bitmap paramBitmap)
  {
    return h.d(paramBitmap);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.f
 * JD-Core Version:    0.7.0.1
 */