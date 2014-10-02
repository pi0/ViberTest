package com.viber.voip.messages.extras.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.viber.voip.ViberApplication;

public class k
{
  private Bitmap a;
  private int b;
  private int c;
  
  public k(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = BitmapFactory.decodeResource(ViberApplication.getInstance().getApplicationContext().getResources(), paramInt1);
    this.b = paramInt2;
    this.c = paramInt3;
  }
  
  public k(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    this.a = paramBitmap;
    this.b = paramInt1;
    this.c = paramInt2;
  }
  
  public Bitmap a(Bitmap paramBitmap)
  {
    return a(paramBitmap, false, 1.0F);
  }
  
  public Bitmap a(Bitmap paramBitmap, boolean paramBoolean, float paramFloat)
  {
    Bitmap localBitmap = paramBitmap.copy(Bitmap.Config.ARGB_8888, true);
    Canvas localCanvas = new Canvas(localBitmap);
    if ((!paramBoolean) || ((this.a.getWidth() <= paramBitmap.getWidth()) && (this.a.getHeight() <= paramBitmap.getHeight())))
    {
      int i = this.b;
      int j = this.c;
      if (-2 == (0xFFFFFFFE & this.b)) {
        i = localBitmap.getWidth() / 2 - this.a.getWidth() / 2;
      }
      if (-2 == (0xFFFFFFFE & this.c)) {
        j = localBitmap.getHeight() / 2 - this.a.getHeight() / 2;
      }
      if (-3 == (0xFFFFFFFD & this.c)) {
        j -= this.a.getHeight() / 2;
      }
      localCanvas.drawBitmap(this.a, i, j, new Paint());
      return localBitmap;
    }
    float f = paramFloat * Math.min(paramBitmap.getWidth() / this.a.getWidth(), paramBitmap.getHeight() / this.a.getHeight());
    int k = (int)(f * this.a.getWidth());
    int m = (int)(f * this.a.getHeight());
    int n = (paramBitmap.getWidth() - k) / 2;
    int i1 = (paramBitmap.getHeight() - m) / 2;
    localCanvas.drawBitmap(this.a, null, new Rect(n, i1, k + n, m + i1), new Paint());
    return localBitmap;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.k
 * JD-Core Version:    0.7.0.1
 */