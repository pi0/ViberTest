package com.viber.voip.messages.ui;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

class bq
  extends LayerDrawable
{
  bq(ListViewWithLeftScrollBar paramListViewWithLeftScrollBar, Drawable[] paramArrayOfDrawable)
  {
    super(paramArrayOfDrawable);
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setBounds(0, paramInt2, 0 + (paramInt3 - paramInt1), paramInt4);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.bq
 * JD-Core Version:    0.7.0.1
 */