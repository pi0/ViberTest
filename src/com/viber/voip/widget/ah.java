package com.viber.voip.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.viber.voip.bb;

public class ah
  extends ImageView
{
  private ColorStateList a;
  
  public ah(Context paramContext)
  {
    super(paramContext);
  }
  
  public ah(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ah(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.TintableImageView, paramInt, 0);
    this.a = localTypedArray.getColorStateList(0);
    localTypedArray.recycle();
  }
  
  private void b()
  {
    setColorFilter(this.a.getColorForState(getDrawableState(), 0));
  }
  
  public void a()
  {
    this.a = null;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.a != null) {
      b();
    }
  }
  
  public void setColorFilter(ColorStateList paramColorStateList)
  {
    this.a = paramColorStateList;
    b();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.ah
 * JD-Core Version:    0.7.0.1
 */