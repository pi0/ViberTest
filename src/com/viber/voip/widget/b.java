package com.viber.voip.widget;

import android.text.TextPaint;
import android.widget.TextView;

public class b
{
  private float a = 5.0F;
  private float b;
  
  public b(float paramFloat)
  {
    this.b = paramFloat;
  }
  
  protected void a(TextView paramTextView, String paramString, int paramInt)
  {
    int i;
    float f;
    if (paramInt > 0)
    {
      i = paramInt - paramTextView.getPaddingLeft() - paramTextView.getPaddingRight();
      f = this.b;
      paramTextView.setTextSize(0, f);
    }
    for (;;)
    {
      if ((f > this.a) && (paramTextView.getPaint().measureText(paramString) > i))
      {
        f -= 1.0F;
        if (f <= this.a) {
          f = this.a;
        }
      }
      else
      {
        paramTextView.setTextSize(0, f);
        return;
      }
      paramTextView.setTextSize(0, f);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.b
 * JD-Core Version:    0.7.0.1
 */