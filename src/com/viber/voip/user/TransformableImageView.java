package com.viber.voip.user;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class TransformableImageView
  extends ImageView
{
  public TransformableImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public TransformableImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public TransformableImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    float f1 = 0.0F;
    int i;
    Matrix localMatrix;
    int j;
    int k;
    int m;
    int n;
    float f2;
    if (getDrawable() != null)
    {
      i = paramCanvas.getSaveCount();
      paramCanvas.save();
      paramCanvas.translate(getPaddingLeft(), getPaddingTop());
      localMatrix = new Matrix();
      j = getDrawable().getIntrinsicWidth();
      k = getDrawable().getIntrinsicHeight();
      m = getWidth() - getPaddingLeft() - getPaddingRight();
      n = getHeight() - getPaddingTop() - getPaddingBottom();
      if (j * n <= m * k) {
        break label177;
      }
      f2 = n / k;
    }
    for (float f3 = 0.5F * (m - f2 * j);; f3 = 0.0F)
    {
      localMatrix.setScale(f2, f2);
      localMatrix.postTranslate((int)(f3 + 0.5F), (int)(f1 + 0.5F));
      paramCanvas.concat(localMatrix);
      getDrawable().draw(paramCanvas);
      paramCanvas.restoreToCount(i);
      return;
      label177:
      f2 = m / j;
      f1 = 0.5F * (n - f2 * k);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.TransformableImageView
 * JD-Core Version:    0.7.0.1
 */