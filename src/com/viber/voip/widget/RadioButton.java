package com.viber.voip.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;

public class RadioButton
  extends CheckBox
{
  private Drawable a;
  
  public RadioButton(Context paramContext)
  {
    super(paramContext);
  }
  
  public RadioButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public RadioButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null)
    {
      switch (0x7 & getGravity())
      {
      default: 
        super.onDraw(paramCanvas);
        return;
      case 1: 
        paramCanvas.save();
        paramCanvas.translate((getWidth() - localDrawable.getIntrinsicWidth()) / 2, 0.0F);
        super.onDraw(paramCanvas);
        paramCanvas.restore();
        return;
      }
      paramCanvas.save();
      paramCanvas.translate(getWidth() - localDrawable.getIntrinsicWidth(), 0.0F);
      super.onDraw(paramCanvas);
      paramCanvas.restore();
      return;
    }
    super.onDraw(paramCanvas);
  }
  
  public void setButtonDrawable(Drawable paramDrawable)
  {
    super.setButtonDrawable(paramDrawable);
    this.a = paramDrawable;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.RadioButton
 * JD-Core Version:    0.7.0.1
 */