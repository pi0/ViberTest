package com.viber.voip.phone;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import com.viber.voip.bb;

public class VideoCallTitleName
  extends TextView
{
  private int a;
  
  public VideoCallTitleName(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public VideoCallTitleName(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext.obtainStyledAttributes(paramAttributeSet, bb.VideoCall).getInt(0, 0);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if ((this.a == 90) || (this.a == 270))
    {
      TextPaint localTextPaint = getPaint();
      localTextPaint.setColor(getCurrentTextColor());
      localTextPaint.drawableState = getDrawableState();
      paramCanvas.save();
      if (this.a == 90)
      {
        paramCanvas.translate(getWidth(), 0.0F);
        paramCanvas.rotate(90.0F);
      }
      for (;;)
      {
        paramCanvas.translate(getCompoundPaddingLeft(), getExtendedPaddingTop());
        Layout localLayout = getLayout();
        if (localLayout != null) {
          localLayout.draw(paramCanvas);
        }
        paramCanvas.restore();
        return;
        if (this.a == 270)
        {
          paramCanvas.translate(0.0F, getHeight());
          paramCanvas.rotate(270.0F);
        }
      }
    }
    super.onDraw(paramCanvas);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.a == 90) || (this.a == 270))
    {
      super.onMeasure(paramInt2, paramInt1);
      setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.VideoCallTitleName
 * JD-Core Version:    0.7.0.1
 */