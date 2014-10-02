package com.viber.voip.messages.conversation;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;

class bj
  extends ImageSpan
{
  boolean a;
  
  public bj(ax paramax, Context paramContext, CharSequence paramCharSequence, int paramInt, float paramFloat, boolean paramBoolean)
  {
    super(ax.a(paramax, paramContext, paramCharSequence, paramInt, paramFloat, paramBoolean), 0);
    this.a = paramBoolean;
  }
  
  public int getSize(Paint paramPaint, CharSequence paramCharSequence, int paramInt1, int paramInt2, Paint.FontMetricsInt paramFontMetricsInt)
  {
    Rect localRect = getDrawable().getBounds();
    if (paramFontMetricsInt != null)
    {
      paramFontMetricsInt.ascent = (-localRect.bottom);
      paramFontMetricsInt.descent = 0;
      paramFontMetricsInt.top = paramFontMetricsInt.ascent;
    }
    return localRect.right;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.bj
 * JD-Core Version:    0.7.0.1
 */