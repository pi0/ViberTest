package com.viber.voip.widget;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LightingColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.imagezoom.ImageViewTouch;
import com.viber.voip.messages.extras.image.imagezoom.i;
import java.io.IOException;

public class PhotoDoodleView
  extends ImageViewTouch
{
  private static float w = 10.0F;
  private Bitmap A;
  private Canvas B;
  private Path C;
  private Path D;
  private Paint E;
  private Paint F;
  private Paint G;
  private Paint H;
  private final RectF I = new RectF();
  private float J;
  private float K;
  private Bitmap L;
  private float M;
  private float N;
  private boolean O;
  private s P;
  private boolean x;
  private boolean y;
  private t z;
  
  public PhotoDoodleView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public PhotoDoodleView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private static Bitmap a(Context paramContext, String paramString)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeStream(localAssetManager.open(paramString));
      return localBitmap;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  private void a(Context paramContext)
  {
    this.z = t.a;
    this.C = new Path();
    this.D = new Path();
    this.G = m();
    this.H = m();
    this.E = new Paint(6);
    f();
  }
  
  private static void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      paramBitmap.recycle();
    }
  }
  
  private void a(boolean paramBoolean)
  {
    Drawable localDrawable = getDrawable();
    if (localDrawable == null) {
      return;
    }
    if ((this.A == null) || (this.A.isRecycled()) || (paramBoolean))
    {
      a(this.A);
      this.A = null;
      Rect localRect = localDrawable.getBounds();
      this.A = b(localRect.width(), localRect.height());
    }
    if (this.A != null) {
      this.B = new Canvas(this.A);
    }
    l();
  }
  
  private Bitmap b(int paramInt1, int paramInt2)
  {
    try
    {
      Bitmap localBitmap2 = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
      localBitmap1 = localBitmap2;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      s locals;
      do
      {
        System.gc();
        locals = this.P;
        Bitmap localBitmap1 = null;
      } while (locals == null);
      this.P.e();
    }
    return localBitmap1;
    return null;
  }
  
  private void f(float paramFloat1, float paramFloat2)
  {
    switch (r.a[this.z.ordinal()])
    {
    }
    for (;;)
    {
      this.O = true;
      this.M = paramFloat1;
      this.N = paramFloat2;
      return;
      this.C.reset();
      this.D.reset();
      Matrix localMatrix = getImageViewMatrix();
      float f1 = a(localMatrix, 2);
      float f2 = a(localMatrix, 5);
      this.C.moveTo(paramFloat1, paramFloat2);
      this.D.moveTo((paramFloat1 - f1) / this.K, (paramFloat2 - f2) / this.K);
      continue;
      h(paramFloat1, paramFloat2);
    }
  }
  
  private void g(float paramFloat1, float paramFloat2)
  {
    float f1 = Math.abs(paramFloat1 - this.M);
    float f2 = Math.abs(paramFloat2 - this.N);
    float f3;
    float f4;
    float f5;
    float f6;
    if ((f1 >= w) || (f2 >= w))
    {
      Matrix localMatrix = getImageViewMatrix();
      f3 = a(localMatrix, 2);
      f4 = a(localMatrix, 5);
      f5 = (this.M - f3) / this.K;
      f6 = (this.N - f4) / this.K;
      this.O = false;
      switch (r.a[this.z.ordinal()])
      {
      }
    }
    for (;;)
    {
      this.M = paramFloat1;
      this.N = paramFloat2;
      return;
      this.C.quadTo(this.M, this.N, (paramFloat1 + this.M) / 2.0F, (paramFloat2 + this.N) / 2.0F);
      this.D.quadTo(f5, f6, (f5 + (paramFloat1 - f3) / this.K) / 2.0F, (f6 + (paramFloat2 - f4) / this.K) / 2.0F);
      continue;
      this.D.quadTo(f5, f6, (f5 + (paramFloat1 - f3) / this.K) / 2.0F, (f6 + (paramFloat2 - f4) / this.K) / 2.0F);
      this.B.drawPath(this.D, this.H);
      continue;
      if ((f1 >= 1.5D * w) || (f2 >= 1.5D * w))
      {
        Path localPath = new Path();
        localPath.moveTo(this.M, this.N);
        localPath.quadTo(this.M, this.N, paramFloat1, paramFloat2);
        PathMeasure localPathMeasure = new PathMeasure(localPath, false);
        float f7 = 0.0F;
        float f8 = localPathMeasure.getLength();
        while (f7 < f8)
        {
          float[] arrayOfFloat = { 0.0F, 0.0F };
          localPathMeasure.getPosTan(f7, arrayOfFloat, null);
          float f9 = arrayOfFloat[0];
          float f10 = arrayOfFloat[1];
          float f11 = Math.abs(f9 - this.M);
          float f12 = Math.abs(f10 - this.N);
          if ((f11 >= w) || (f12 >= w))
          {
            h(f9, f10);
            this.M = f9;
            this.N = f10;
          }
          f7 += 1.0F;
        }
        paramFloat1 = this.M;
        paramFloat2 = this.N;
      }
      else
      {
        h(paramFloat1, paramFloat2);
      }
    }
  }
  
  private void h()
  {
    if (this.O) {
      i();
    }
    for (;;)
    {
      this.C.reset();
      this.D.reset();
      return;
      j();
    }
  }
  
  private void h(float paramFloat1, float paramFloat2)
  {
    Matrix localMatrix = getImageViewMatrix();
    float f1 = a(localMatrix, 2);
    float f2 = a(localMatrix, 5);
    this.B.drawBitmap(this.L, (paramFloat1 - f1) / this.K - this.L.getWidth() / 2, (paramFloat2 - f2) / this.K - this.L.getHeight() / 2, this.F);
  }
  
  private void i()
  {
    Matrix localMatrix = getImageViewMatrix();
    float f1 = a(localMatrix, 2);
    float f2 = a(localMatrix, 5);
    switch (r.a[this.z.ordinal()])
    {
    default: 
      return;
    }
    this.C.lineTo(1.0F + this.M, this.N);
    this.D.lineTo((1.0F + this.M - f1) / this.K, (this.N - f2) / this.K);
    this.B.drawPath(this.D, this.H);
  }
  
  private void j()
  {
    Matrix localMatrix = getImageViewMatrix();
    float f1 = a(localMatrix, 2);
    float f2 = a(localMatrix, 5);
    switch (r.a[this.z.ordinal()])
    {
    default: 
      return;
    }
    this.C.lineTo(this.M, this.N);
    this.D.lineTo((this.M - f1) / this.K, (this.N - f2) / this.K);
    this.B.drawPath(this.D, this.H);
  }
  
  private void k()
  {
    if (!this.x) {
      f();
    }
    if (this.P != null)
    {
      if (this.x) {
        this.P.c();
      }
    }
    else {
      return;
    }
    this.P.d();
  }
  
  private void l()
  {
    if (this.A == null) {
      return;
    }
    this.I.set(0.0F, 0.0F, this.A.getWidth(), this.A.getHeight());
    getImageViewMatrix().mapRect(this.I);
    this.K = (this.I.width() / this.A.getWidth());
    setPaintSize(this.J);
  }
  
  private static Paint m()
  {
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setDither(true);
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeJoin(Paint.Join.ROUND);
    localPaint.setStrokeCap(Paint.Cap.ROUND);
    return localPaint;
  }
  
  private void setPaintSize(float paramFloat)
  {
    this.J = paramFloat;
    float f = this.J * this.K;
    this.G.setStrokeWidth(f);
    this.H.setStrokeWidth(this.J);
    w = 10.0F;
  }
  
  public void a(int paramInt)
  {
    g();
    this.z = t.b;
    this.G.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    this.H.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    setPaintSize(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    g();
    this.z = t.a;
    this.G.setXfermode(null);
    this.H.setXfermode(null);
    this.G.setMaskFilter(null);
    this.H.setMaskFilter(null);
    setPaintColor(paramInt2);
    setPaintSize(paramInt1);
  }
  
  public void a(int paramInt1, String paramString, int paramInt2)
  {
    g();
    this.z = t.c;
    a(this.L);
    this.L = null;
    LightingColorFilter localLightingColorFilter = new LightingColorFilter(paramInt1, 1);
    this.L = h.b(a(getContext(), paramString), paramInt2, 1, true);
    this.F = new Paint(paramInt1);
    this.F.setColorFilter(localLightingColorFilter);
    w = paramInt2 / 4.0F;
  }
  
  protected void a(Bitmap paramBitmap, int paramInt)
  {
    super.a(paramBitmap, paramInt);
    a(false);
  }
  
  public void a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    this.A = paramBitmap1;
    a(paramBitmap2, true);
  }
  
  protected void a(i parami, Matrix paramMatrix)
  {
    super.a(parami, paramMatrix);
    l();
  }
  
  public void c()
  {
    a(true);
    invalidate();
    if (this.x)
    {
      this.x = false;
      k();
    }
  }
  
  public void d()
  {
    this.P = null;
    this.B = null;
    a(this.A);
    a(this.L);
    this.A = null;
    this.L = null;
    System.gc();
  }
  
  public boolean e()
  {
    return this.x;
  }
  
  public void f()
  {
    this.y = true;
  }
  
  public void g()
  {
    this.y = false;
  }
  
  public Bitmap getDoodle()
  {
    return this.A;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Drawable localDrawable = getDrawable();
    if ((this.A != null) && (localDrawable != null))
    {
      paramCanvas.drawBitmap(this.A, getImageMatrix(), this.E);
      if (this.z != t.b) {
        paramCanvas.drawPath(this.C, this.G);
      }
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    PhotoDoodleView.SavedState localSavedState = (PhotoDoodleView.SavedState)paramParcelable;
    this.L = localSavedState.a;
    this.y = localSavedState.c;
    this.z = localSavedState.e;
    this.J = localSavedState.f;
    super.onRestoreInstanceState(localSavedState.getSuperState());
  }
  
  protected Parcelable onSaveInstanceState()
  {
    PhotoDoodleView.SavedState localSavedState = new PhotoDoodleView.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.L;
    localSavedState.c = this.y;
    localSavedState.e = this.z;
    localSavedState.f = this.J;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.y) {
      return super.onTouchEvent(paramMotionEvent);
    }
    if (this.k != null) {
      this.k.onTouch((View)getParent(), paramMotionEvent);
    }
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    if (!this.x)
    {
      this.x = true;
      k();
    }
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      f(f1, f2);
      invalidate();
      continue;
      g(f1, f2);
      invalidate();
      continue;
      h();
      invalidate();
    }
  }
  
  public void setCanvasDirty(boolean paramBoolean)
  {
    if (this.x != paramBoolean)
    {
      this.x = paramBoolean;
      k();
    }
  }
  
  public void setDoodleListener(s params)
  {
    this.P = params;
  }
  
  public void setPaintColor(int paramInt)
  {
    this.G.setColor(paramInt);
    this.H.setColor(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.PhotoDoodleView
 * JD-Core Version:    0.7.0.1
 */