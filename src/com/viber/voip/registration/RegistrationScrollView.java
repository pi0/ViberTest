package com.viber.voip.registration;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

public class RegistrationScrollView
  extends ScrollView
{
  private co a;
  
  public RegistrationScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.a != null) {
      this.a.a();
    }
  }
  
  public void setOnResizeViewListener(co paramco)
  {
    this.a = paramco;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.RegistrationScrollView
 * JD-Core Version:    0.7.0.1
 */