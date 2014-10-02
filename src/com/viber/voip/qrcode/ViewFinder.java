package com.viber.voip.qrcode;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.viber.voip.bb;

public class ViewFinder
  extends View
{
  private e a;
  private Paint b;
  private int c;
  private int d;
  private int e;
  private int f;
  
  public ViewFinder(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public ViewFinder(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public ViewFinder(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    Resources localResources = getResources();
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.ViewFinder);
    try
    {
      this.c = localTypedArray.getColor(0, localResources.getColor(2131296430));
      this.d = localTypedArray.getColor(1, localResources.getColor(2131296461));
      localTypedArray.recycle();
      this.e = localResources.getDimensionPixelSize(2131362387);
      this.f = localResources.getDimensionPixelSize(2131362388);
      this.b = new Paint(1);
      return;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (this.a == null) {}
    Rect localRect1;
    Rect localRect2;
    do
    {
      return;
      localRect1 = this.a.e();
      localRect2 = this.a.f();
    } while ((localRect1 == null) || (localRect2 == null));
    int i = paramCanvas.getWidth();
    int j = paramCanvas.getHeight();
    this.b.setStyle(Paint.Style.FILL);
    this.b.setColor(this.c);
    paramCanvas.drawRect(0.0F, 0.0F, i, localRect1.top, this.b);
    paramCanvas.drawRect(0.0F, localRect1.top, localRect1.left, 1 + localRect1.bottom, this.b);
    paramCanvas.drawRect(1 + localRect1.right, localRect1.top, i, 1 + localRect1.bottom, this.b);
    paramCanvas.drawRect(0.0F, 1 + localRect1.bottom, i, j, this.b);
    this.b.setColor(this.d);
    this.b.setStyle(Paint.Style.STROKE);
    this.b.setStrokeWidth(this.f);
    paramCanvas.drawLine(localRect1.left - this.f / 2.0F, localRect1.top, localRect1.left + this.e, localRect1.top, this.b);
    paramCanvas.drawLine(localRect1.left, localRect1.top, localRect1.left, localRect1.top + this.e, this.b);
    paramCanvas.drawLine(localRect1.right - this.e, localRect1.top, localRect1.right + this.f / 2.0F, localRect1.top, this.b);
    paramCanvas.drawLine(localRect1.right, localRect1.top, localRect1.right, localRect1.top + this.e, this.b);
    paramCanvas.drawLine(localRect1.left - this.f / 2.0F, localRect1.bottom, localRect1.left + this.e, localRect1.bottom, this.b);
    paramCanvas.drawLine(localRect1.left, localRect1.bottom, localRect1.left, localRect1.bottom - this.e, this.b);
    paramCanvas.drawLine(localRect1.right - this.e, localRect1.bottom, localRect1.right + this.f / 2.0F, localRect1.bottom, this.b);
    paramCanvas.drawLine(localRect1.right, localRect1.bottom, localRect1.right, localRect1.bottom - this.e, this.b);
  }
  
  public void setCameraManager(e parame)
  {
    this.a = parame;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.qrcode.ViewFinder
 * JD-Core Version:    0.7.0.1
 */