package com.viber.voip.messages.extras.image.imagezoom;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;

public class k
{
  private Bitmap a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  
  public k(Bitmap paramBitmap, int paramInt)
  {
    this.b = (paramInt % 360);
    a(paramBitmap);
  }
  
  private void f()
  {
    Matrix localMatrix = new Matrix();
    int i = this.e / 2;
    int j = this.f / 2;
    localMatrix.preTranslate(-i, -j);
    localMatrix.postRotate(this.b);
    localMatrix.postTranslate(i, i);
    RectF localRectF = new RectF(0.0F, 0.0F, this.e, this.f);
    localMatrix.mapRect(localRectF);
    this.c = ((int)localRectF.width());
    this.d = ((int)localRectF.height());
  }
  
  public int a()
  {
    return this.b % 360;
  }
  
  public void a(int paramInt)
  {
    this.b = paramInt;
    f();
  }
  
  public void a(Bitmap paramBitmap)
  {
    this.a = paramBitmap;
    if (this.a != null)
    {
      this.e = paramBitmap.getWidth();
      this.f = paramBitmap.getHeight();
      f();
    }
  }
  
  public Bitmap b()
  {
    return this.a;
  }
  
  public Matrix c()
  {
    Matrix localMatrix = new Matrix();
    if (this.b != 0)
    {
      int i = this.e / 2;
      int j = this.f / 2;
      localMatrix.preTranslate(-i, -j);
      localMatrix.postRotate(this.b);
      localMatrix.postTranslate(this.c / 2, this.d / 2);
    }
    return localMatrix;
  }
  
  public int d()
  {
    return this.d;
  }
  
  public int e()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.imagezoom.k
 * JD-Core Version:    0.7.0.1
 */