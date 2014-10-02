package com.viber.voip.ui;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.viber.voip.messages.extras.image.h;

public class ao
  extends ImageView
{
  private Drawable a;
  private Drawable b;
  private boolean c;
  private int d;
  
  private void a(Canvas paramCanvas, Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramDrawable == null) || (paramDrawable.getIntrinsicWidth() == 0) || (paramDrawable.getIntrinsicHeight() == 0)) {
      return;
    }
    paramDrawable.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((getPaddingTop() == 0) && (getPaddingLeft() == 0))
    {
      paramDrawable.draw(paramCanvas);
      return;
    }
    int i = paramCanvas.getSaveCount();
    paramCanvas.save();
    paramCanvas.translate(getPaddingLeft(), getPaddingTop());
    paramDrawable.draw(paramCanvas);
    paramCanvas.restoreToCount(i);
  }
  
  private boolean a(Drawable paramDrawable)
  {
    if ((paramDrawable != null) && (paramDrawable.isStateful()))
    {
      paramDrawable.setState(getDrawableState());
      return true;
    }
    return false;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    a(this.a);
    if (a(this.b)) {
      invalidate();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    a(paramCanvas, this.a, 0, 0, getWidth(), getHeight());
    if (this.c) {
      a(paramCanvas, this.b, getWidth() - this.d, getHeight() - this.d, getWidth(), getHeight());
    }
  }
  
  public void setOverlayResource(int paramInt)
  {
    this.a = getResources().getDrawable(paramInt);
  }
  
  public void setShowTriangle(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  public void setTriangleSize(float paramFloat)
  {
    this.d = h.a(paramFloat);
  }
  
  public void setTriangleSize(int paramInt)
  {
    this.d = paramInt;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.ao
 * JD-Core Version:    0.7.0.1
 */