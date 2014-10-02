package com.viber.voip.messages.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.viber.voip.ui.call.a.c;
import com.viber.voip.ui.call.a.e;

public class RadialGradientView
  extends FrameLayout
{
  protected int a;
  private Paint b = new Paint();
  private final int c = -294170727;
  private final int d = 7819161;
  private final int[] e;
  private c f;
  private e g;
  private c h;
  private e i;
  private boolean j;
  private boolean k;
  private RadialGradient l;
  private int m;
  private int n;
  
  public RadialGradientView(Context paramContext)
  {
    super(paramContext);
    int[] arrayOfInt = new int[6];
    arrayOfInt[0] = Color.argb(250, 119, 79, 153);
    arrayOfInt[1] = Color.argb(250, 119, 79, 153);
    arrayOfInt[2] = Color.argb(250, 119, 79, 153);
    arrayOfInt[3] = Color.argb(140, 119, 79, 153);
    arrayOfInt[4] = Color.argb(10, 226, 226, 226);
    arrayOfInt[5] = Color.argb(0, 255, 255, 255);
    this.e = arrayOfInt;
    this.f = new c(0.0F, 1.0F, new float[] { 0.0F, 0.25F, 1.0F }, new float[] { 23.0F, 225.0F, 23.0F });
    this.g = new e(1000L, this.f);
    this.h = new c(0.0F, 1.0F, new float[] { 0.0F, 1.0F }, new float[] { 110.0F, 23.0F });
    this.i = new e(200L, this.h);
    this.j = false;
    this.k = false;
    this.a = 110;
    a(paramContext);
  }
  
  public RadialGradientView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    int[] arrayOfInt = new int[6];
    arrayOfInt[0] = Color.argb(250, 119, 79, 153);
    arrayOfInt[1] = Color.argb(250, 119, 79, 153);
    arrayOfInt[2] = Color.argb(250, 119, 79, 153);
    arrayOfInt[3] = Color.argb(140, 119, 79, 153);
    arrayOfInt[4] = Color.argb(10, 226, 226, 226);
    arrayOfInt[5] = Color.argb(0, 255, 255, 255);
    this.e = arrayOfInt;
    this.f = new c(0.0F, 1.0F, new float[] { 0.0F, 0.25F, 1.0F }, new float[] { 23.0F, 225.0F, 23.0F });
    this.g = new e(1000L, this.f);
    this.h = new c(0.0F, 1.0F, new float[] { 0.0F, 1.0F }, new float[] { 110.0F, 23.0F });
    this.i = new e(200L, this.h);
    this.j = false;
    this.k = false;
    this.a = 110;
    a(paramContext);
  }
  
  public RadialGradientView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    int[] arrayOfInt = new int[6];
    arrayOfInt[0] = Color.argb(250, 119, 79, 153);
    arrayOfInt[1] = Color.argb(250, 119, 79, 153);
    arrayOfInt[2] = Color.argb(250, 119, 79, 153);
    arrayOfInt[3] = Color.argb(140, 119, 79, 153);
    arrayOfInt[4] = Color.argb(10, 226, 226, 226);
    arrayOfInt[5] = Color.argb(0, 255, 255, 255);
    this.e = arrayOfInt;
    this.f = new c(0.0F, 1.0F, new float[] { 0.0F, 0.25F, 1.0F }, new float[] { 23.0F, 225.0F, 23.0F });
    this.g = new e(1000L, this.f);
    this.h = new c(0.0F, 1.0F, new float[] { 0.0F, 1.0F }, new float[] { 110.0F, 23.0F });
    this.i = new e(200L, this.h);
    this.j = false;
    this.k = false;
    this.a = 110;
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    if (isInEditMode()) {
      this.b.setAlpha(255);
    }
    for (;;)
    {
      setWillNotDraw(false);
      this.b.setAntiAlias(true);
      this.b.setDither(true);
      this.b.setColor(0);
      this.g.a(e.a);
      this.i.a(e.b);
      postInvalidate();
      return;
      this.b.setAlpha(0);
    }
  }
  
  public void a()
  {
    this.j = true;
    postInvalidate();
  }
  
  public void b()
  {
    this.j = false;
    if (!this.k)
    {
      this.b.setColor(0);
      this.b.setShader(null);
    }
    postInvalidate();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    int i1;
    int i2;
    int i3;
    if (this.m < this.n)
    {
      i1 = this.m;
      i2 = i1 / 2;
      if ((this.l == null) || (getWidth() != this.m) || (getHeight() != this.n))
      {
        this.m = getWidth();
        this.n = getHeight();
        if (this.m >= this.n) {
          break label410;
        }
        i3 = this.m;
        label82:
        int i4 = i3 / 2;
        float f1 = 1.0F - getPaddingTop() / i4;
        float f2 = this.m / 2;
        float f3 = this.n / 2;
        float f4 = i4;
        int[] arrayOfInt = this.e;
        float[] arrayOfFloat = new float[6];
        arrayOfFloat[0] = 0.0F;
        arrayOfFloat[1] = f1;
        arrayOfFloat[2] = (0.01F + f1);
        arrayOfFloat[3] = (0.05F + f1);
        arrayOfFloat[4] = 0.98F;
        arrayOfFloat[5] = 1.0F;
        this.l = new RadialGradient(f2, f3, f4, arrayOfInt, arrayOfFloat, Shader.TileMode.CLAMP);
        if (isInEditMode())
        {
          Paint localPaint = new Paint();
          localPaint.setColor(-16777216);
          localPaint.setAntiAlias(true);
          localPaint.setTextSize(12.0F);
          paramCanvas.drawText("p:" + getPaddingTop() + "; r:" + i4 + "; pos:" + f1, 0.0F, 50.0F, localPaint);
        }
        i2 = i4;
      }
      if (!this.j) {
        break label419;
      }
      this.g.a(System.currentTimeMillis());
      postInvalidateDelayed(40L);
      label314:
      if ((!isInEditMode()) && (this.k))
      {
        if ((!this.i.d()) || (!this.h.a())) {
          break label469;
        }
        this.b.setAlpha((int)this.h.c);
        this.i.a(System.currentTimeMillis());
        postInvalidate();
      }
    }
    for (;;)
    {
      paramCanvas.drawCircle(this.m / 2, this.m / 2, i2, this.b);
      return;
      i1 = this.n;
      break;
      label410:
      i3 = this.n;
      break label82;
      label419:
      if ((this.g.d()) && (this.f.a()))
      {
        this.g.a(System.currentTimeMillis());
        postInvalidateDelayed(40L);
        break label314;
      }
      this.g.c();
      break label314;
      label469:
      this.b.setAlpha((int)this.f.c);
    }
  }
  
  public void setActive(boolean paramBoolean)
  {
    this.k = paramBoolean;
    if (paramBoolean)
    {
      this.b.setShader(this.l);
      this.b.setColor(-294170727);
      this.i.c();
      this.i.a(System.currentTimeMillis());
      postInvalidateDelayed(10L);
      return;
    }
    this.b.setColor(0);
    this.b.setShader(null);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (paramBoolean) {}
    for (int i1 = 110;; i1 = 0)
    {
      this.a = i1;
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.RadialGradientView
 * JD-Core Version:    0.7.0.1
 */