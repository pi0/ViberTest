package com.viber.voip.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.viber.voip.ui.ViberTextView;

public class AutoFitTextView
  extends ViberTextView
{
  private b a = new b(getTextSize());
  
  public AutoFitTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AutoFitTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getSize(paramInt1);
    this.a.a(this, getText().toString(), i);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 != paramInt3) {
      this.a.a(this, getText().toString(), paramInt1);
    }
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.a != null) {
      this.a.a(this, paramCharSequence.toString(), getWidth());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.AutoFitTextView
 * JD-Core Version:    0.7.0.1
 */