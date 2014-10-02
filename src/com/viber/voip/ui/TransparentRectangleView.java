package com.viber.voip.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;

public class TransparentRectangleView
  extends View
{
  private Paint a;
  private Paint b;
  private Rect c;
  private boolean d;
  
  public TransparentRectangleView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public TransparentRectangleView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public TransparentRectangleView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    this.a = new Paint();
    this.a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    this.b = new Paint(1);
    this.b.setStyle(Paint.Style.STROKE);
    this.b.setStrokeJoin(Paint.Join.ROUND);
    this.b.setStrokeCap(Paint.Cap.ROUND);
    this.b.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    this.b.setStrokeWidth(10.0F);
    if (Build.VERSION.SDK_INT >= 11)
    {
      setLayerType(1, null);
      return;
    }
    setDrawingCacheEnabled(true);
  }
  
  public void a(Rect paramRect, boolean paramBoolean)
  {
    this.c = paramRect;
    this.d = paramBoolean;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (this.c != null)
    {
      paramCanvas.drawRect(this.c, this.a);
      if (this.d) {
        paramCanvas.drawRect(this.c, this.b);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.TransparentRectangleView
 * JD-Core Version:    0.7.0.1
 */