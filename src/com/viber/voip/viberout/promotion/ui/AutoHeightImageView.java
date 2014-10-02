package com.viber.voip.viberout.promotion.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class AutoHeightImageView
  extends ImageView
{
  public AutoHeightImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public AutoHeightImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public AutoHeightImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    float f = getDrawable().getIntrinsicWidth() / getDrawable().getIntrinsicHeight();
    int i = (int)(getMeasuredWidth() / f);
    setMeasuredDimension(getMeasuredWidth(), i);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.promotion.ui.AutoHeightImageView
 * JD-Core Version:    0.7.0.1
 */