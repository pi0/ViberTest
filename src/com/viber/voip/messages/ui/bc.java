package com.viber.voip.messages.ui;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;

public class bc
  extends ImageSpan
{
  private static int a;
  private static int b;
  private boolean c;
  
  public bc(Drawable paramDrawable, int paramInt)
  {
    super(paramDrawable, paramInt);
  }
  
  public bc(Drawable paramDrawable, int paramInt, boolean paramBoolean)
  {
    super(paramDrawable, paramInt);
    this.c = paramBoolean;
  }
  
  public void draw(Canvas paramCanvas, CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint)
  {
    Rect localRect1 = paramCanvas.getClipBounds();
    Rect localRect2 = getDrawable().getBounds();
    int i = localRect2.right - localRect2.left;
    int j = (int)paramFloat;
    int k = i + j;
    if ((k <= localRect1.right) && (j >= localRect1.left))
    {
      a = k;
      b = j;
      super.draw(paramCanvas, paramCharSequence, paramInt1, paramInt2, paramFloat, paramInt3, paramInt4, paramInt5, paramPaint);
    }
    do
    {
      return;
      int m = (int)paramPaint.measureText("...");
      int n = Math.min(k, localRect1.right);
      int i1 = Math.max(j, localRect1.left);
      int i2 = n - i1;
      if (i2 >= m)
      {
        paramCanvas.drawText("...", i1 + (i2 - m) / 2, paramInt4, paramPaint);
        return;
      }
    } while (a != j);
    Paint localPaint = new Paint();
    if (this.c)
    {
      localPaint.setColor(Color.parseColor("#8155A4"));
      paramCanvas.drawRect(b, localRect2.top, a, paramCanvas.getHeight(), localPaint);
    }
    for (;;)
    {
      paramCanvas.drawText("...", b, paramInt4, paramPaint);
      return;
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
      paramCanvas.drawRect(b, localRect2.top, a, paramCanvas.getHeight(), localPaint);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.bc
 * JD-Core Version:    0.7.0.1
 */