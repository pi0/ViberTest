package com.viber.voip.messages.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.viber.voip.ui.call.a.c;
import com.viber.voip.ui.call.a.e;

public class TimeFillView
  extends FrameLayout
{
  private Paint a = new Paint();
  private Paint b = new Paint();
  private final float c = 0.8333333F;
  private c d = new c(0.0F, 1.0F, new float[] { 0.0F, 1.0F }, new float[] { 0.0F, 1.0F });
  private e e = new e(30000L, this.d);
  private float f;
  private RectF g;
  private boolean h = false;
  
  public TimeFillView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public TimeFillView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public TimeFillView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  public void a()
  {
    this.e.c();
    this.h = true;
    postInvalidate();
  }
  
  void a(Context paramContext)
  {
    setWillNotDraw(false);
    this.e.a(e.b);
    this.a.setAntiAlias(true);
    this.b.setAntiAlias(true);
    this.b.setColor(0);
    this.g = new RectF();
    if (isInEditMode()) {
      setFillPercentage(0.84F);
    }
  }
  
  public void b()
  {
    this.h = false;
    setFillPercentage(0.0F);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    this.g.set(0.0F, 0.0F, getWidth(), getHeight());
    paramCanvas.drawArc(this.g, 0.0F, 360.0F, true, this.b);
    paramCanvas.drawArc(this.g, -90.0F, this.f, true, this.a);
    if (this.h)
    {
      this.e.a(System.currentTimeMillis());
      setFillPercentage(this.d.c);
    }
  }
  
  public void setColor(int paramInt)
  {
    this.a.setColor(paramInt);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
  }
  
  public void setFillPercentage(float paramFloat)
  {
    if (paramFloat >= 0.8333333F) {
      this.a.setColor(-50384);
    }
    for (;;)
    {
      this.f = (360.0F * paramFloat);
      if (paramFloat > 1.0F) {
        break;
      }
      postInvalidateDelayed(40L);
      if (paramFloat == 1.0F) {
        this.h = false;
      }
      return;
      this.a.setColor(-6724156);
    }
    b();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.TimeFillView
 * JD-Core Version:    0.7.0.1
 */