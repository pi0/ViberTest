package com.viber.voip.phone;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.ImageButton;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.bb;

public class VideoCallMenuButton
  extends ImageButton
  implements Checkable
{
  private static final int[] a = { 16842912 };
  private boolean b;
  
  public VideoCallMenuButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public VideoCallMenuButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    int i = paramContext.obtainStyledAttributes(paramAttributeSet, bb.VideoCall).getInt(0, 0);
    if (i != 0) {
      setRotation(i);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    invalidate();
  }
  
  public boolean isChecked()
  {
    return this.b;
  }
  
  public int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (this.b) {
      mergeDrawableStates(arrayOfInt, a);
    }
    return arrayOfInt;
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (this.b != paramBoolean)
    {
      this.b = paramBoolean;
      refreshDrawableState();
    }
  }
  
  public void setRotation(int paramInt)
  {
    ViewHelper.setRotation(this, paramInt);
  }
  
  public void toggle()
  {
    if (!this.b) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.VideoCallMenuButton
 * JD-Core Version:    0.7.0.1
 */