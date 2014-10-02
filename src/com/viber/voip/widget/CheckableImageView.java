package com.viber.voip.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.ImageView;
import com.viber.voip.bb;

public class CheckableImageView
  extends ImageView
  implements Checkable
{
  private boolean a;
  private boolean b;
  private Drawable c;
  private Drawable d;
  private Rect e;
  
  public CheckableImageView(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public CheckableImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CheckableImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.CheckableImageView);
    this.c = localTypedArray.getDrawable(1);
    Drawable localDrawable = localTypedArray.getDrawable(3);
    if (localDrawable != null) {
      setSelector(localDrawable);
    }
    this.a = localTypedArray.getBoolean(0, false);
    this.b = localTypedArray.getBoolean(2, false);
    localTypedArray.recycle();
    this.e = new Rect();
  }
  
  private void a(Canvas paramCanvas)
  {
    if (this.d == null) {
      return;
    }
    Drawable localDrawable = this.d;
    this.e.set(0, 0, getWidth(), getHeight());
    localDrawable.setBounds(this.e);
    localDrawable.draw(paramCanvas);
  }
  
  private boolean a()
  {
    return (!isInTouchMode()) || (isPressed());
  }
  
  private void b()
  {
    if (this.d != null)
    {
      if (a()) {
        this.d.setState(getDrawableState());
      }
    }
    else {
      return;
    }
    this.d.setState(new int[] { 0 });
  }
  
  private void b(Canvas paramCanvas)
  {
    if (this.c == null) {
      return;
    }
    Drawable localDrawable = this.c;
    int i = getPaddingLeft();
    int j = getPaddingTop();
    int k = getWidth() - getPaddingRight();
    int m = getHeight() - getPaddingBottom();
    this.e.set(i, j, k, m);
    localDrawable.setBounds(this.e);
    localDrawable.draw(paramCanvas);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    b();
  }
  
  public Drawable getSelector()
  {
    return this.d;
  }
  
  public boolean isChecked()
  {
    return this.a;
  }
  
  @TargetApi(11)
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (this.d != null) {
      this.d.jumpToCurrentState();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    boolean bool = this.b;
    if (!bool) {
      a(paramCanvas);
    }
    super.onDraw(paramCanvas);
    if (this.a) {
      b(paramCanvas);
    }
    if (bool) {
      a(paramCanvas);
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    this.a = paramBoolean;
    invalidate();
  }
  
  public void setPressed(boolean paramBoolean)
  {
    if ((paramBoolean) && ((getParent() instanceof View)) && (((View)getParent()).isPressed())) {
      return;
    }
    super.setPressed(paramBoolean);
  }
  
  public void setSelector(int paramInt)
  {
    setSelector(getResources().getDrawable(paramInt));
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    if (this.d != null)
    {
      this.d.setCallback(null);
      unscheduleDrawable(this.d);
    }
    this.d = paramDrawable;
    paramDrawable.setCallback(this);
    b();
  }
  
  public void toggle()
  {
    if (!this.a) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (this.d == paramDrawable) || (super.verifyDrawable(paramDrawable));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.CheckableImageView
 * JD-Core Version:    0.7.0.1
 */