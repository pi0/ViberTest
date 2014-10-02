package com.viber.voip.util.b;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.viber.voip.util.gl;
import java.lang.ref.SoftReference;
import java.util.Set;

class t
  extends LruCache<String, Bitmap>
{
  t(s params, int paramInt)
  {
    super(paramInt);
  }
  
  protected int a(String paramString, Bitmap paramBitmap)
  {
    int i = s.a(paramBitmap) / 1024;
    if (i == 0) {
      i = 1;
    }
    return i;
  }
  
  protected void a(boolean paramBoolean, String paramString, Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    if (gl.b()) {
      s.a(this.a).add(new SoftReference(paramBitmap1));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.t
 * JD-Core Version:    0.7.0.1
 */