package com.viber.voip.messages.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class PositioningAwareLinearLayout
  extends LinearLayout
  implements dt
{
  private dv a;
  
  public PositioningAwareLinearLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public PositioningAwareLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.a != null) {
      this.a.a(this);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.a != null) {
      this.a.a(this, paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.a != null) {
      this.a.b(this, paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.a != null) {
      this.a.b(this, paramInt1, paramInt2);
    }
    super.onMeasure(paramInt1, paramInt2);
    if (this.a != null) {
      this.a.a(this, paramInt1, paramInt2);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.a != null) {
      this.a.a(this, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public void setPositioningListener(dv paramdv)
  {
    this.a = paramdv;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.PositioningAwareLinearLayout
 * JD-Core Version:    0.7.0.1
 */