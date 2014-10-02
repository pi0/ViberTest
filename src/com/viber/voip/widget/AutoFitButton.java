package com.viber.voip.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.Button;

public class AutoFitButton
  extends Button
{
  private b a = new b(getTextSize());
  private boolean b = false;
  private a c;
  
  public AutoFitButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AutoFitButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!this.b)
    {
      int i = View.MeasureSpec.getSize(paramInt1);
      this.a.a(this, getText().toString(), i);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 != paramInt3) && (!this.b))
    {
      this.a.a(this, getText().toString(), paramInt1);
      if (this.c != null) {
        this.c.a();
      }
    }
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.a != null) {
      this.a.a(this, paramCharSequence.toString(), getWidth());
    }
  }
  
  public void setDisableOnSizeChanged(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public void setOnSizeChangedListener(a parama)
  {
    this.c = parama;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.AutoFitButton
 * JD-Core Version:    0.7.0.1
 */