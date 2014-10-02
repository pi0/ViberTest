package com.viber.voip.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import com.viber.voip.bb;

public class ProportionalLayout
  extends ViewGroup
{
  private v a;
  private float b;
  
  public ProportionalLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public ProportionalLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public ProportionalLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.ProportionalLayout);
    if (!isInEditMode()) {}
    for (this.a = v.a(localTypedArray.getString(0));; this.a = v.a)
    {
      this.b = localTypedArray.getFloat(1, 1.0F);
      localTypedArray.recycle();
      return;
    }
  }
  
  public v getDirection()
  {
    return this.a;
  }
  
  public float getRatio()
  {
    return this.b;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (getChildCount() != 1) {
      throw new IllegalStateException("ProportionalLayout requires exactly one child");
    }
    getChildAt(0).layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (getChildCount() != 1) {
      throw new IllegalStateException("ProportionalLayout requires exactly one child");
    }
    View localView = getChildAt(0);
    measureChild(localView, paramInt1, paramInt2);
    int i = localView.getMeasuredWidth();
    int j = localView.getMeasuredHeight();
    if (this.a == v.b) {
      i = Math.round(j * this.b);
    }
    for (;;)
    {
      measureChild(localView, View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(j, 1073741824));
      setMeasuredDimension(resolveSize(i, paramInt1), resolveSize(j, paramInt2));
      return;
      j = Math.round(i * this.b);
    }
  }
  
  public void setDirection(v paramv)
  {
    this.a = paramv;
  }
  
  public void setRatio(float paramFloat)
  {
    this.b = paramFloat;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.ProportionalLayout
 * JD-Core Version:    0.7.0.1
 */