package com.viber.voip.messages.extras.doodle;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter.Blur;
import android.graphics.Canvas;
import android.graphics.LightingColorFilter;
import android.graphics.MaskFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout.LayoutParams;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.g;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.gl;
import java.io.IOException;

public class DoodleDrawingPanel
  extends View
{
  static int a;
  private static float w = 10.0F;
  private static float x = w;
  private static float y = 4.0F;
  private static double z = 1.5D;
  private Bitmap b;
  private Bitmap c;
  private Canvas d;
  private Path e;
  private Path f;
  private Paint g;
  private Paint h;
  private Paint i;
  private Paint j;
  private int k;
  private int l;
  private float m;
  private boolean n;
  private b o;
  private Bitmap p;
  private c q;
  private MaskFilter r;
  private Matrix s;
  private float t;
  private float u;
  private boolean v;
  
  public DoodleDrawingPanel(Context paramContext)
  {
    super(paramContext);
    f();
  }
  
  public DoodleDrawingPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    f();
  }
  
  private Bitmap a(int paramInt1, int paramInt2, int paramInt3)
  {
    a("createBitmap width = " + paramInt1 + ", height = " + paramInt2 + ", angle = " + paramInt3);
    if (paramInt3 == 0) {}
    Object localObject;
    label119:
    do
    {
      for (;;)
      {
        try
        {
          Bitmap localBitmap2 = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
          localObject = localBitmap2;
        }
        catch (OutOfMemoryError localOutOfMemoryError1)
        {
          Bitmap localBitmap1;
          localObject = null;
          localOutOfMemoryError2 = localOutOfMemoryError1;
        }
        try
        {
          a("bitmap size = " + h.d((Bitmap)localObject) / 1048576.0F);
          return localObject;
        }
        catch (OutOfMemoryError localOutOfMemoryError3)
        {
          break label119;
        }
        localBitmap1 = Bitmap.createBitmap(paramInt2, paramInt1, Bitmap.Config.ARGB_8888);
        localObject = localBitmap1;
      }
      OutOfMemoryError localOutOfMemoryError2;
      System.gc();
      a("createBitmap: " + Log.getStackTraceString(localOutOfMemoryError2));
    } while (this.o == null);
    this.o.c();
    return localObject;
  }
  
  public static Bitmap a(Context paramContext, String paramString)
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
  
  private void a(float paramFloat1, float paramFloat2)
  {
    switch (a.a[this.q.ordinal()])
    {
    }
    for (;;)
    {
      this.v = true;
      this.t = paramFloat1;
      this.u = paramFloat2;
      return;
      this.e.reset();
      this.f.reset();
      this.e.moveTo(paramFloat1, paramFloat2);
      this.f.moveTo(paramFloat1 / this.m, paramFloat2 / this.m);
      continue;
      c(paramFloat1, paramFloat2);
    }
  }
  
  private void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      paramBitmap.recycle();
    }
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "DoodleDrawingPanel", paramString);
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean != this.n)
    {
      this.n = paramBoolean;
      if (!this.n) {
        break label37;
      }
      if (this.o != null) {
        this.o.a();
      }
    }
    label37:
    while (this.o == null) {
      return;
    }
    this.o.b();
  }
  
  private void b(float paramFloat1, float paramFloat2)
  {
    float f1 = Math.abs(paramFloat1 - this.t);
    float f2 = Math.abs(paramFloat2 - this.u);
    float f3;
    float f4;
    if ((f1 >= x) || (f2 >= x))
    {
      f3 = this.t / this.m;
      f4 = this.u / this.m;
      this.v = false;
      switch (a.a[this.q.ordinal()])
      {
      }
    }
    for (;;)
    {
      this.t = paramFloat1;
      this.u = paramFloat2;
      return;
      this.e.quadTo(this.t, this.u, (paramFloat1 + this.t) / 2.0F, (paramFloat2 + this.u) / 2.0F);
      this.f.quadTo(f3, f4, (f3 + paramFloat1 / this.m) / 2.0F, (f4 + paramFloat2 / this.m) / 2.0F);
      continue;
      this.f.quadTo(f3, f4, (f3 + paramFloat1 / this.m) / 2.0F, (f4 + paramFloat2 / this.m) / 2.0F);
      this.d.drawPath(this.f, this.j);
      continue;
      if ((f1 >= x * z) || (f2 >= x * z))
      {
        Path localPath = new Path();
        localPath.moveTo(this.t, this.u);
        localPath.quadTo(this.t, this.u, paramFloat1, paramFloat2);
        PathMeasure localPathMeasure = new PathMeasure(localPath, false);
        for (int i1 = 0; i1 < localPathMeasure.getLength(); i1++)
        {
          float[] arrayOfFloat = { 0.0F, 0.0F };
          localPathMeasure.getPosTan(i1, arrayOfFloat, null);
          float f5 = arrayOfFloat[0];
          float f6 = arrayOfFloat[1];
          float f7 = Math.abs(f5 - this.t);
          float f8 = Math.abs(f6 - this.u);
          if ((f7 >= x) || (f8 >= x))
          {
            c(f5, f6);
            this.t = f5;
            this.u = f6;
          }
        }
        paramFloat1 = this.t;
        paramFloat2 = this.u;
      }
      else
      {
        c(paramFloat1, paramFloat2);
      }
    }
  }
  
  private void c(float paramFloat1, float paramFloat2)
  {
    this.d.drawBitmap(this.p, paramFloat1 / this.m - this.p.getWidth() / 2, paramFloat2 / this.m - this.p.getHeight() / 2, this.h);
  }
  
  private void f()
  {
    this.e = new Path();
    this.f = new Path();
    this.n = true;
    this.i = h();
    this.j = h();
    this.g = new Paint(6);
    this.q = c.a;
    this.r = new BlurMaskFilter(10.0F, BlurMaskFilter.Blur.NORMAL);
    this.s = new Matrix();
  }
  
  private void g()
  {
    setLayoutParams(new FrameLayout.LayoutParams((int)(this.b.getWidth() * this.m), (int)(this.b.getHeight() * this.m)));
    this.d = new Canvas(this.b);
  }
  
  private int getDeviceRotationAngle()
  {
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    int i1;
    int i2;
    if (Build.VERSION.SDK_INT > 7)
    {
      i1 = localDisplay.getRotation();
      switch (i1)
      {
      default: 
        i2 = 0;
      }
    }
    for (;;)
    {
      a("getDeviceRotationAngle = " + i2);
      return i2;
      i1 = localDisplay.getOrientation();
      break;
      i2 = 0 - a;
      a = 0;
      continue;
      i2 = 270;
      a = i2;
      continue;
      i2 = 90;
      a = i2;
    }
  }
  
  private Paint h()
  {
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setDither(true);
    localPaint.setColor(-65536);
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeJoin(Paint.Join.ROUND);
    localPaint.setStrokeCap(Paint.Cap.ROUND);
    localPaint.setStrokeWidth(13.0F);
    return localPaint;
  }
  
  private void i()
  {
    switch (a.a[this.q.ordinal()])
    {
    default: 
      return;
    }
    this.e.lineTo(1.0F + this.t, this.u);
    this.f.lineTo((1.0F + this.t) / this.m, this.u / this.m);
    this.d.drawPath(this.f, this.j);
  }
  
  private void j()
  {
    switch (a.a[this.q.ordinal()])
    {
    default: 
      return;
    }
    this.e.lineTo(this.t, this.u);
    this.f.lineTo(this.t / this.m, this.u / this.m);
    this.d.drawPath(this.f, this.j);
  }
  
  private void k()
  {
    if (this.v) {
      i();
    }
    for (;;)
    {
      this.e.reset();
      this.f.reset();
      return;
      j();
    }
  }
  
  private void l()
  {
    DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
    int i1 = Math.min(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
    this.m = (i1 / this.b.getWidth());
    if (gl.e(getContext())) {
      this.m = ((i1 - g.a) / this.b.getHeight());
    }
    this.s.reset();
    this.s.postScale(this.m, this.m);
  }
  
  private void setPaintSize(int paramInt)
  {
    float f1 = paramInt * this.m;
    a("setPaintSize: sizeInPx = " + paramInt + " , size on Canvas = " + f1);
    this.i.setStrokeWidth(f1);
    this.j.setStrokeWidth(paramInt);
    x = w;
  }
  
  public DoodleDrawingPanel a(Bitmap paramBitmap, boolean paramBoolean)
  {
    a(this.c);
    this.c = null;
    boolean bool = gl.e(getContext());
    int i1;
    if ((paramBoolean) && (!bool)) {
      i1 = 90;
    }
    for (;;)
    {
      this.c = h.a(paramBitmap, i1);
      if (this.o != null) {
        this.o.a(true);
      }
      invalidate();
      a("setBackgroundImage rotate bitmap on angle = " + i1 + " image size = " + h.d(this.c) / 1048576.0F);
      return this;
      if ((!paramBoolean) && (bool)) {
        i1 = -90;
      } else {
        i1 = 0;
      }
    }
  }
  
  public void a(int paramInt)
  {
    this.q = c.b;
    this.i.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    this.j.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    setPaintSize(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    this.q = c.a;
    this.i.setXfermode(null);
    this.j.setXfermode(null);
    this.i.setMaskFilter(null);
    this.j.setMaskFilter(null);
    setPaintColor(paramInt2);
    setPaintSize(paramInt1);
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.k = paramInt1;
    this.l = paramInt2;
    if ((this.b == null) || (paramBoolean))
    {
      a(this.b);
      this.b = null;
      int i1 = getDeviceRotationAngle();
      this.b = a(this.k, this.l, i1);
      if (this.b != null)
      {
        l();
        g();
      }
    }
  }
  
  public void a(int paramInt1, String paramString, int paramInt2)
  {
    a(this.p);
    this.p = null;
    LightingColorFilter localLightingColorFilter = new LightingColorFilter(paramInt1, 1);
    this.q = c.c;
    this.p = h.b(a(getContext(), paramString), paramInt2, 1, true);
    this.h = new Paint(paramInt1);
    this.h.setColorFilter(localLightingColorFilter);
    x = paramInt2 / y;
  }
  
  public boolean a()
  {
    return this.c != null;
  }
  
  public void b()
  {
    if (this.o != null) {
      this.o.a(false);
    }
    a(this.c);
    this.c = null;
    invalidate();
  }
  
  public void c()
  {
    this.o = null;
    this.d = null;
    a(this.b);
    a(this.c);
    a(this.p);
    this.b = null;
    this.c = null;
    this.p = null;
    a = 0;
    System.gc();
  }
  
  public void d()
  {
    a(this.k, this.l, true);
    invalidate();
    a(false);
  }
  
  public boolean e()
  {
    return this.n;
  }
  
  public Bitmap getDoodle()
  {
    if (this.b == null) {}
    Bitmap localBitmap;
    do
    {
      return null;
      localBitmap = a(this.b.getWidth(), this.b.getHeight(), 0);
    } while (localBitmap == null);
    Canvas localCanvas = new Canvas(localBitmap);
    localCanvas.drawColor(getResources().getColor(2131296457));
    if (this.c != null) {
      localCanvas.drawBitmap(this.c, 0.0F, 0.0F, this.g);
    }
    localCanvas.drawBitmap(this.b, 0.0F, 0.0F, this.g);
    return localBitmap;
  }
  
  public c getPaintType()
  {
    return this.q;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.drawColor(getResources().getColor(2131296457));
    if (this.c != null) {
      paramCanvas.drawBitmap(this.c, this.s, this.g);
    }
    if (this.b != null)
    {
      paramCanvas.drawBitmap(this.b, this.s, this.g);
      if (this.q != c.b) {
        paramCanvas.drawPath(this.e, this.i);
      }
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof DoodleDrawingPanel.SavedState))
    {
      Bundle localBundle = ((DoodleDrawingPanel.SavedState)paramParcelable).a();
      int i1 = getDeviceRotationAngle();
      this.b = h.a((Bitmap)localBundle.getParcelable("drawing_bitmap"), i1);
      this.c = h.a((Bitmap)localBundle.getParcelable("background_bitmap"), i1);
      l();
      g();
      a(localBundle.getBoolean("is_drawn"));
      super.onRestoreInstanceState(((DoodleDrawingPanel.SavedState)paramParcelable).getSuperState());
      return;
    }
    super.onRestoreInstanceState(paramParcelable);
  }
  
  public Parcelable onSaveInstanceState()
  {
    a("onSaveInstanceState");
    Parcelable localParcelable = super.onSaveInstanceState();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("drawing_bitmap", this.b);
    localBundle.putParcelable("background_bitmap", this.c);
    localBundle.putBoolean("is_drawn", this.n);
    return new DoodleDrawingPanel.SavedState(localParcelable, localBundle);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    a("onSizeChanged: w = " + paramInt1 + " , h = " + paramInt2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.d == null)
    {
      if (this.o != null) {
        this.o.c();
      }
      return true;
    }
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    a(true);
    switch (paramMotionEvent.getAction())
    {
    default: 
      return true;
    case 0: 
      a(f1, f2);
      invalidate();
      return true;
    case 2: 
      b(f1, f2);
      invalidate();
      return true;
    }
    k();
    invalidate();
    return true;
  }
  
  public void setDrawListener(b paramb)
  {
    this.o = paramb;
    a(false);
  }
  
  public void setPaintColor(int paramInt)
  {
    this.i.setColor(paramInt);
    this.j.setColor(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.doodle.DoodleDrawingPanel
 * JD-Core Version:    0.7.0.1
 */