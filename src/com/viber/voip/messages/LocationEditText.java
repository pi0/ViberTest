package com.viber.voip.messages;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.EditText;
import android.widget.LinearLayout.LayoutParams;

public class LocationEditText
  extends EditText
{
  private Drawable a;
  private Rect b;
  private b c;
  private c d;
  private boolean e = true;
  private Runnable f = new a(this);
  
  public LocationEditText(Context paramContext)
  {
    super(paramContext);
  }
  
  public LocationEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public LocationEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void setLayoutHeight(int paramInt)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)getLayoutParams();
    if (localLayoutParams != null)
    {
      localLayoutParams.height = paramInt;
      setLayoutParams(localLayoutParams);
    }
  }
  
  protected void finalize()
  {
    this.a = null;
    this.b = null;
    super.finalize();
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    post(this.f);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i;
    int j;
    if ((paramMotionEvent.getAction() == 1) && (this.a != null))
    {
      this.b = this.a.getBounds();
      i = (int)paramMotionEvent.getX();
      j = (int)paramMotionEvent.getY();
      if ((i < getWidth() - this.b.width() - getPaddingLeft()) || (i > getWidth() - getPaddingRight()) || (j < getPaddingTop()) || (j > getHeight() - getPaddingBottom())) {
        break label127;
      }
      paramMotionEvent.setAction(3);
      if ((this.c != null) && (this.e)) {
        this.c.a();
      }
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      label127:
      if ((i > getWidth()) || (i < 0) || (j < 0) || (j > getHeight())) {
        paramMotionEvent.setAction(3);
      } else if (this.d != null) {
        this.d.a();
      }
    }
  }
  
  public void setCompoundDrawables(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    if (paramDrawable3 != null) {
      this.a = paramDrawable3;
    }
    super.setCompoundDrawables(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    this.e = paramBoolean;
    super.setEnabled(paramBoolean);
  }
  
  public void setOnEventListener(c paramc)
  {
    this.d = paramc;
  }
  
  public void setOnInterfaceLocationClickListener(b paramb)
  {
    this.c = paramb;
  }
  
  public void setRightImageResource(int paramInt)
  {
    setCompoundDrawablesWithIntrinsicBounds(null, null, getContext().getResources().getDrawable(paramInt), null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.LocationEditText
 * JD-Core Version:    0.7.0.1
 */