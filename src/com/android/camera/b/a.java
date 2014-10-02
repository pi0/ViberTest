package com.android.camera.b;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import com.android.camera.z;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.g;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;

public class a
{
  public static Uri a(Activity paramActivity, Bitmap paramBitmap, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      int i3;
      int i4;
      int i5;
      int i6;
      int i7;
      int i8;
      try
      {
        int[] arrayOfInt = h.a(paramActivity);
        int i = arrayOfInt[0];
        int j = arrayOfInt[1];
        a("landscapeCrop:cropped (left, top) = (" + paramRect.left + "," + paramRect.top + "), width: " + paramRect.width() + ", height: " + paramRect.height());
        a("landscapeCrop:bitmap width: " + paramBitmap.getWidth() + ", height: " + paramBitmap.getHeight() + ", display width: " + i + ", height: " + j);
        int k = paramRect.right;
        int m = paramRect.left;
        int n = paramRect.top;
        int i1 = k - m;
        int i2 = i - g.b(paramActivity);
        float f = j / i2;
        i3 = (int)(i1 * (i2 / i));
        i4 = (int)(f * i3);
        if (i4 <= paramBitmap.getWidth()) {
          break label439;
        }
        int i11 = (int)(i3 * (paramBitmap.getWidth() / i4));
        int i12 = paramBitmap.getWidth();
        i5 = i11;
        i6 = i12;
        i7 = (m + k - i6) / 2;
        i8 = 0;
        if (i7 < 0)
        {
          localBitmap = Bitmap.createBitmap(paramBitmap, i8, n, i6, i5);
          a("landscapeCrop:create new bitmap cropX: " + i8 + ", cropY: " + n + ", width: " + i6 + ", height: " + i5);
          if (paramBoolean1) {
            localBitmap = z.a(new Matrix(), localBitmap, j, i2, paramBoolean2, true);
          }
          Uri localUri2 = h.a(localBitmap, l.d);
          localUri1 = localUri2;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        Bitmap localBitmap;
        int i9;
        int i10;
        IllegalArgumentException localIllegalArgumentException2 = localIllegalArgumentException1;
        Uri localUri1 = null;
        a(localIllegalArgumentException2.toString());
        return localUri1;
      }
      try
      {
        localBitmap.recycle();
        return localUri1;
      }
      catch (IllegalArgumentException localIllegalArgumentException3)
      {
        continue;
        i8 = i7;
      }
      i9 = i7 + i6;
      if (i9 > paramBitmap.getWidth())
      {
        i10 = paramBitmap.getWidth();
        i8 = i10 - i6;
      }
      else
      {
        continue;
        label439:
        i5 = i3;
        i6 = i4;
      }
    }
  }
  
  private static void a(String paramString)
  {
    ViberApplication.log(3, a.class.getSimpleName(), paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.b.a
 * JD-Core Version:    0.7.0.1
 */