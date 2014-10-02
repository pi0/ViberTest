package com.viber.voip.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.RelativeLayout;

public class CheckedRelativeLayout
  extends RelativeLayout
  implements Checkable
{
  private static final int[] a = { 16842912 };
  private boolean b;
  
  public CheckedRelativeLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CheckedRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean isChecked()
  {
    return this.b;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (isChecked()) {
      mergeDrawableStates(arrayOfInt, a);
    }
    return arrayOfInt;
  }
  
  public void setChecked(boolean paramBoolean)
  {
    this.b = paramBoolean;
    refreshDrawableState();
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if ((localView instanceof Checkable)) {
        ((Checkable)localView).setChecked(paramBoolean);
      }
    }
  }
  
  public void toggle()
  {
    if (!this.b) {}
    for (boolean bool = true;; bool = false)
    {
      this.b = bool;
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.CheckedRelativeLayout
 * JD-Core Version:    0.7.0.1
 */