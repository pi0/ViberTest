package com.viber.voip.messages.ui.chathead.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.viber.voip.bb;
import com.viber.voip.messages.extras.image.h;

public class a
  extends ImageView
{
  private String a;
  private Paint b;
  private int c = 3;
  private float d;
  private Paint e;
  private float f;
  private float g;
  private float h;
  private float i;
  private int j;
  private float k;
  private Path l;
  private Paint m;
  private boolean n;
  private boolean o;
  
  public a(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    Resources localResources = getResources();
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.ChatHeadView);
    try
    {
      this.j = localTypedArray.getColor(1, 0);
      this.k = localTypedArray.getDimension(0, 0.0F);
      this.n = localTypedArray.getBoolean(2, false);
      localTypedArray.recycle();
      this.b = new Paint(5);
      this.l = new Path();
      this.m = new Paint(1);
      this.m.setStyle(Paint.Style.STROKE);
      this.m.setColor(this.j);
      this.m.setStrokeWidth(this.k);
      this.e = new Paint(5);
      this.e.setShadowLayer(h.a(1.0F), 2.0F, 2.0F, 1291845632);
      this.d = localResources.getDimension(2131362233);
      this.f = localResources.getDimension(2131362234);
      this.g = localResources.getDimension(2131362235);
      this.h = localResources.getDimension(2131362237);
      this.i = localResources.getDimension(2131362238);
      this.b.setTextSize(localResources.getDimension(2131362236));
      setWillNotDraw(false);
      return;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  public void a()
  {
    this.a = null;
    invalidate();
  }
  
  public int getBorderColor()
  {
    return this.j;
  }
  
  public float getBorderWidth()
  {
    return this.k;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Drawable localDrawable = getDrawable();
    if ((this.n) && (localDrawable != null))
    {
      this.m.setStrokeWidth(this.k);
      this.m.setColor(this.j);
      int i1 = paramCanvas.save();
      paramCanvas.translate(this.k / 2.0F, this.k / 2.0F);
      paramCanvas.drawPath(this.l, this.m);
      paramCanvas.restoreToCount(i1);
    }
    if ((this.o) && (this.a != null))
    {
      this.b.setColor(-8998199);
      if (this.c != 5) {
        break label230;
      }
      paramCanvas.drawCircle(this.i, this.g, this.d, this.e);
      this.b.setShadowLayer(h.a(1.0F), 2.0F, 2.0F, 1291845632);
      paramCanvas.drawCircle(this.i, this.g, this.d, this.b);
    }
    label230:
    do
    {
      for (;;)
      {
        this.b.setShadowLayer(0.0F, 0.0F, 0.0F, 0);
        this.b.setColor(-1);
        if (this.c != 5) {
          break;
        }
        paramCanvas.drawText(this.a, this.i - this.b.measureText(this.a) / 2.0F, this.h, this.b);
        return;
        if (this.c == 3)
        {
          paramCanvas.drawCircle(this.f, this.g, this.d, this.e);
          this.b.setShadowLayer(h.a(1.0F), 2.0F, 2.0F, 1291845632);
          paramCanvas.drawCircle(this.f, this.g, this.d, this.b);
        }
      }
    } while (this.c != 3);
    paramCanvas.drawText(this.a, this.f - this.b.measureText(this.a) / 2.0F, this.h, this.b);
  }
  
  public void setBorderColor(int paramInt)
  {
    this.j = paramInt;
  }
  
  public void setBorderVisible(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }
  
  public void setBorderWidth(float paramFloat)
  {
    this.k = paramFloat;
  }
  
  protected boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
    if (bool) {
      h.a(paramInt3 - paramInt1 - this.k, paramInt4 - paramInt2 - this.k, this.l);
    }
    return bool;
  }
  
  public void setMessagesCount(String paramString)
  {
    this.a = paramString;
    invalidate();
  }
  
  public void setShowBadge(boolean paramBoolean)
  {
    this.o = paramBoolean;
    invalidate();
  }
  
  public void setTextGravity(int paramInt)
  {
    this.c = paramInt;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a.a
 * JD-Core Version:    0.7.0.1
 */