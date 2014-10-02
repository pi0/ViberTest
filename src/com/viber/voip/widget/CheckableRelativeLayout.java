package com.viber.voip.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.CheckBox;
import android.widget.Checkable;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.viber.voip.bb;

public class CheckableRelativeLayout
  extends RelativeLayout
  implements Checkable
{
  private CheckBox a;
  private final Rect b = new Rect();
  private int c = 5;
  
  public CheckableRelativeLayout(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public CheckableRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CheckableRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.CheckableRelativeLayout);
    int i = localTypedArray.getResourceId(1, -1);
    boolean bool1 = localTypedArray.getBoolean(0, false);
    this.c = localTypedArray.getInt(2, 5);
    boolean bool2 = localTypedArray.getBoolean(3, true);
    localTypedArray.recycle();
    this.a = new CheckBox(paramContext);
    if (i > 0) {
      this.a.setButtonDrawable(i);
    }
    this.a.setChecked(bool1);
    setCheckVisible(bool2);
    addView(this.a, generateDefaultLayoutParams());
  }
  
  private void setupCheckMarkLayoutParams(RelativeLayout.LayoutParams paramLayoutParams)
  {
    int i = 1;
    int j;
    label32:
    int k;
    if ((0x1 & this.c) != 0)
    {
      j = i;
      if ((j != 0) || ((0x2 & this.c) == 0)) {
        break label85;
      }
      paramLayoutParams.addRule(11);
      if ((0x4 & this.c) == 0) {
        break label94;
      }
      k = i;
      label44:
      if ((0x10 & this.c) == 0) {
        break label100;
      }
    }
    for (;;)
    {
      if ((k != 0) || (i != 0) || ((0x8 & this.c) == 0)) {
        break label105;
      }
      paramLayoutParams.addRule(12);
      return;
      j = 0;
      break;
      label85:
      paramLayoutParams.addRule(9);
      break label32;
      label94:
      k = 0;
      break label44;
      label100:
      i = 0;
    }
    label105:
    if ((k == 0) && (i != 0))
    {
      paramLayoutParams.addRule(10);
      return;
    }
    paramLayoutParams.addRule(15);
  }
  
  public boolean isChecked()
  {
    return this.a.isChecked();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = Math.round(paramMotionEvent.getX());
    int j = Math.round(paramMotionEvent.getY());
    if (this.b.contains(i, j)) {
      return true;
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.a.getHitRect(this.b);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setupCheckMarkLayoutParams((RelativeLayout.LayoutParams)this.a.getLayoutParams());
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setCheckMarkDrawable(int paramInt)
  {
    this.a.setButtonDrawable(paramInt);
  }
  
  public void setCheckMarkDrawable(Drawable paramDrawable)
  {
    this.a.setButtonDrawable(paramDrawable);
  }
  
  public void setCheckMarkGravity(int paramInt)
  {
    if ((paramInt > 0) && (paramInt != this.c))
    {
      this.c = paramInt;
      requestLayout();
    }
  }
  
  public void setCheckVisible(boolean paramBoolean)
  {
    CheckBox localCheckBox = this.a;
    if (paramBoolean) {}
    for (int i = 0;; i = 4)
    {
      localCheckBox.setVisibility(i);
      return;
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    this.a.setChecked(paramBoolean);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.a.setEnabled(paramBoolean);
  }
  
  public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    this.a.setOnCheckedChangeListener(paramOnCheckedChangeListener);
  }
  
  public void toggle()
  {
    if (!isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.CheckableRelativeLayout
 * JD-Core Version:    0.7.0.1
 */