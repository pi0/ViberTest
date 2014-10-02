package com.viber.voip.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import com.viber.voip.ui.ViberTextView;

public class VerticalTextView
  extends ViberTextView
{
  private int a;
  private final Rect b;
  
  private void a(Canvas paramCanvas)
  {
    int i = getWidth();
    int j = getHeight();
    Drawable[] arrayOfDrawable = getCompoundDrawables();
    if (arrayOfDrawable != null)
    {
      if (arrayOfDrawable[0] != null)
      {
        arrayOfDrawable[0].copyBounds(this.b);
        paramCanvas.save();
        paramCanvas.translate(getPaddingLeft(), (i - this.b.height()) / 2);
        arrayOfDrawable[0].draw(paramCanvas);
        paramCanvas.restore();
      }
      if (arrayOfDrawable[1] != null)
      {
        arrayOfDrawable[1].copyBounds(this.b);
        paramCanvas.save();
        paramCanvas.translate((j - this.b.width()) / 2, getPaddingTop());
        arrayOfDrawable[1].draw(paramCanvas);
        paramCanvas.restore();
      }
      if (arrayOfDrawable[2] != null)
      {
        arrayOfDrawable[2].copyBounds(this.b);
        paramCanvas.save();
        paramCanvas.translate(j - this.b.width() - getPaddingRight(), (i - this.b.height()) / 2);
        arrayOfDrawable[2].draw(paramCanvas);
        paramCanvas.restore();
      }
      if (arrayOfDrawable[3] != null)
      {
        arrayOfDrawable[3].copyBounds(this.b);
        paramCanvas.save();
        paramCanvas.translate((j - this.b.width()) / 2, i - this.b.height() - getPaddingBottom());
        arrayOfDrawable[3].draw(paramCanvas);
        paramCanvas.restore();
      }
    }
  }
  
  public int getTextOrientation()
  {
    return this.a;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    TextPaint localTextPaint = getPaint();
    localTextPaint.setColor(getCurrentTextColor());
    localTextPaint.drawableState = getDrawableState();
    int i = paramCanvas.save();
    int j = getHeight();
    int k = getWidth();
    int m;
    if (this.a == 0)
    {
      paramCanvas.translate(0.0F, j);
      paramCanvas.rotate(-90.0F);
      a(paramCanvas);
      switch (0x70 & getGravity())
      {
      default: 
        m = (k - getLineCount() * getLineHeight()) / 2;
      }
    }
    for (;;)
    {
      paramCanvas.translate(getCompoundPaddingLeft(), m);
      getLayout().draw(paramCanvas);
      paramCanvas.restoreToCount(i);
      return;
      paramCanvas.translate(k, 0.0F);
      paramCanvas.rotate(90.0F);
      break;
      m = getCompoundPaddingTop();
      continue;
      m = k - getLineCount() * getLineHeight() - getCompoundPaddingBottom();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt2, paramInt1);
    setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof VerticalTextView.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    VerticalTextView.SavedState localSavedState = (VerticalTextView.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.a = localSavedState.a;
  }
  
  public Parcelable onSaveInstanceState()
  {
    VerticalTextView.SavedState localSavedState = new VerticalTextView.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.a;
    return localSavedState;
  }
  
  public void setTextOrientation(int paramInt)
  {
    if (this.a != paramInt)
    {
      this.a = paramInt;
      invalidate();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.VerticalTextView
 * JD-Core Version:    0.7.0.1
 */