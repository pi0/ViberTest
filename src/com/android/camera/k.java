package com.android.camera;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.FaceDetector;
import android.media.FaceDetector.Face;
import android.os.Handler;

class k
  implements Runnable
{
  float a = 1.0F;
  Matrix b;
  FaceDetector.Face[] c = new FaceDetector.Face[3];
  int d;
  
  k(CropImage paramCropImage) {}
  
  private void a()
  {
    m localm = new m(CropImage.d(this.e));
    int i = CropImage.c(this.e).getWidth();
    int j = CropImage.c(this.e).getHeight();
    Rect localRect = new Rect(0, 0, i, j);
    int k = 4 * Math.min(i, j) / 5;
    int m;
    int n;
    if ((CropImage.g(this.e) != 0) && (CropImage.h(this.e) != 0)) {
      if (CropImage.g(this.e) > CropImage.h(this.e))
      {
        m = k * CropImage.h(this.e) / CropImage.g(this.e);
        n = k;
      }
    }
    for (;;)
    {
      int i1 = (i - n) / 2;
      int i2 = (j - m) / 2;
      RectF localRectF = new RectF(i1, i2, n + i1, m + i2);
      Matrix localMatrix = this.b;
      boolean bool1 = CropImage.f(this.e);
      int i3 = CropImage.g(this.e);
      boolean bool2 = false;
      if (i3 != 0)
      {
        int i4 = CropImage.h(this.e);
        bool2 = false;
        if (i4 != 0) {
          bool2 = true;
        }
      }
      localm.a(localMatrix, localRect, localRectF, bool1, bool2);
      CropImage.d(this.e).a(localm);
      return;
      n = k * CropImage.g(this.e) / CropImage.h(this.e);
      m = k;
      continue;
      m = k;
      n = k;
    }
  }
  
  private void a(FaceDetector.Face paramFace)
  {
    PointF localPointF = new PointF();
    int i = 2 * (int)(paramFace.eyesDistance() * this.a);
    paramFace.getMidPoint(localPointF);
    localPointF.x *= this.a;
    localPointF.y *= this.a;
    int j = (int)localPointF.x;
    int k = (int)localPointF.y;
    m localm = new m(CropImage.d(this.e));
    Rect localRect = new Rect(0, 0, CropImage.c(this.e).getWidth(), CropImage.c(this.e).getHeight());
    RectF localRectF = new RectF(j, k, j, k);
    localRectF.inset(-i, -i);
    if (localRectF.left < 0.0F) {
      localRectF.inset(-localRectF.left, -localRectF.left);
    }
    if (localRectF.top < 0.0F) {
      localRectF.inset(-localRectF.top, -localRectF.top);
    }
    if (localRectF.right > localRect.right) {
      localRectF.inset(localRectF.right - localRect.right, localRectF.right - localRect.right);
    }
    if (localRectF.bottom > localRect.bottom) {
      localRectF.inset(localRectF.bottom - localRect.bottom, localRectF.bottom - localRect.bottom);
    }
    Matrix localMatrix = this.b;
    boolean bool1 = CropImage.f(this.e);
    int m = CropImage.g(this.e);
    boolean bool2 = false;
    if (m != 0)
    {
      int n = CropImage.h(this.e);
      bool2 = false;
      if (n != 0) {
        bool2 = true;
      }
    }
    localm.a(localMatrix, localRect, localRectF, bool1, bool2);
    CropImage.d(this.e).a(localm);
  }
  
  private Bitmap b()
  {
    if (CropImage.c(this.e) == null) {
      return null;
    }
    if (CropImage.c(this.e).getWidth() > 256) {
      this.a = (256.0F / CropImage.c(this.e).getWidth());
    }
    Matrix localMatrix = new Matrix();
    localMatrix.setScale(this.a, this.a);
    return Bitmap.createBitmap(CropImage.c(this.e), 0, 0, CropImage.c(this.e).getWidth(), CropImage.c(this.e).getHeight(), localMatrix, true);
  }
  
  public void run()
  {
    this.b = CropImage.d(this.e).getImageMatrix();
    Bitmap localBitmap = b();
    this.a = (1.0F / this.a);
    if ((localBitmap != null) && (CropImage.i(this.e))) {
      this.d = new FaceDetector(localBitmap.getWidth(), localBitmap.getHeight(), this.c.length).findFaces(localBitmap, this.c);
    }
    if ((localBitmap != null) && (localBitmap != CropImage.c(this.e))) {
      localBitmap.recycle();
    }
    CropImage.e(this.e).post(new l(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.k
 * JD-Core Version:    0.7.0.1
 */