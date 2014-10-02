package com.viber.voip.widget.messages;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.viber.voip.messages.extras.image.h;

public class RoundedFrameLayout
  extends FrameLayout
{
  private Rect a;
  private RectF b;
  private Path c;
  private Paint d;
  private Paint e;
  private Bitmap f;
  private int g;
  private int h;
  
  public RoundedFrameLayout(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public RoundedFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public RoundedFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    this.a = new Rect();
    this.b = new RectF();
    this.c = new Path();
    this.d = new Paint(7);
    this.e = new Paint(1);
    this.e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    this.f = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (this.a == null) {}
    int i;
    int j;
    do
    {
      return;
      i = this.a.width();
      j = this.a.height();
    } while ((i == 0) || (j == 0));
    if ((i == this.g) && (j == this.h)) {
      this.f.eraseColor(0);
    }
    for (;;)
    {
      Canvas localCanvas = new Canvas(this.f);
      int k = localCanvas.save();
      localCanvas.drawPath(this.c, this.d);
      localCanvas.saveLayer(this.b, this.e, 12);
      super.dispatchDraw(localCanvas);
      localCanvas.restoreToCount(k);
      paramCanvas.drawBitmap(this.f, this.a.left, this.a.top, null);
      return;
      this.f.recycle();
      try
      {
        this.f = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
        this.g = i;
        this.h = j;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        for (;;)
        {
          this.f = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean)
    {
      this.a.set(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
      this.b.set(this.a);
      h.a(this.a.width(), this.a.height(), this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.messages.RoundedFrameLayout
 * JD-Core Version:    0.7.0.1
 */