package com.viber.voip.messages.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import com.viber.voip.util.gl;

public class ei
  extends FrameLayout
{
  private int a;
  private int b;
  private int c;
  private boolean d;
  private boolean e;
  private boolean f;
  
  public ei(Context paramContext, int paramInt)
  {
    super(paramContext, null, 2130772299);
    LayoutInflater.from(paramContext).inflate(paramInt, this);
  }
  
  public boolean a()
  {
    return this.f;
  }
  
  public int getPackageId()
  {
    return this.c;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.b > 0) && (getMeasuredWidth() > this.b)) {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.b, 1073741824), paramInt2);
    }
  }
  
  public void setIconDrawable(Drawable paramDrawable)
  {
    if (paramDrawable != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.f = bool;
      gl.a(findViewById(2131165398), paramDrawable);
      return;
    }
  }
  
  public void setIgnorePress(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public void setPackageId(int paramInt)
  {
    this.c = paramInt;
  }
  
  public void setPromotion(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public void setShowNewPackageStatus(boolean paramBoolean)
  {
    View localView = findViewById(2131166138);
    if (paramBoolean) {}
    for (int i = 0;; i = 4)
    {
      localView.setVisibility(i);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.ei
 * JD-Core Version:    0.7.0.1
 */