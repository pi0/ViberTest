package com.viber.voip.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.viber.voip.util.gj;

public class ViberTextView
  extends TextView
{
  public ViberTextView(Context paramContext)
  {
    super(paramContext);
    gj.a(this, null);
  }
  
  public ViberTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    gj.a(this, paramAttributeSet);
  }
  
  public ViberTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    gj.a(this, paramAttributeSet);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    try
    {
      super.onDraw(paramCanvas);
      return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      setText(getText().toString());
      super.onDraw(paramCanvas);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    try
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      setText(getText().toString());
      super.onMeasure(paramInt1, paramInt2);
    }
  }
  
  public void setGravity(int paramInt)
  {
    try
    {
      super.setGravity(paramInt);
      return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      setText(getText().toString());
      super.setGravity(paramInt);
    }
  }
  
  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType)
  {
    try
    {
      super.setText(paramCharSequence, paramBufferType);
      return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      setText(paramCharSequence.toString());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.ViberTextView
 * JD-Core Version:    0.7.0.1
 */