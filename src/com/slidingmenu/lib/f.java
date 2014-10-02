package com.slidingmenu.lib;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

public class f
  extends ViewGroup
{
  private int a = 0;
  private a b;
  private View c;
  private View d;
  private int e = (int)TypedValue.applyDimension(1, 48.0F, getResources().getDisplayMetrics());
  private int f;
  private j g;
  private boolean h;
  private int i;
  private boolean j;
  private final Paint k = new Paint();
  private float l;
  private Drawable m;
  private Drawable n;
  private int o;
  private float p;
  private boolean q = true;
  private Bitmap r;
  private View s;
  
  public f(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public f(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private int getSelectorTop()
  {
    return this.s.getTop() + (this.s.getHeight() - this.r.getHeight()) / 2;
  }
  
  public int a(int paramInt)
  {
    if (paramInt > 1) {
      paramInt = 2;
    }
    while ((this.i == 0) && (paramInt > 1))
    {
      return 0;
      if (paramInt < 1) {
        paramInt = 0;
      }
    }
    if ((this.i == 1) && (paramInt < 1)) {
      return 2;
    }
    return paramInt;
  }
  
  public int a(View paramView)
  {
    if ((this.i == 0) || (this.i == 2)) {
      return paramView.getLeft() - getBehindWidth();
    }
    if (this.i == 1) {
      return paramView.getLeft();
    }
    return 0;
  }
  
  public int a(View paramView, int paramInt)
  {
    if (this.i == 0) {
      switch (paramInt)
      {
      }
    }
    for (;;)
    {
      return paramView.getLeft();
      return paramView.getLeft() - getBehindWidth();
      return paramView.getLeft();
      if (this.i == 1) {
        switch (paramInt)
        {
        case 1: 
        default: 
          break;
        case 0: 
          return paramView.getLeft();
        case 2: 
          return paramView.getLeft() + getBehindWidth();
        }
      } else if (this.i == 2) {
        switch (paramInt)
        {
        }
      }
    }
    return paramView.getLeft() - getBehindWidth();
    return paramView.getLeft() + getBehindWidth();
  }
  
  public void a(View paramView, int paramInt1, int paramInt2)
  {
    int i2;
    if (this.i == 0)
    {
      int i6 = paramView.getLeft();
      i2 = 0;
      if (paramInt1 >= i6) {
        i2 = 4;
      }
      scrollTo((int)((paramInt1 + getBehindWidth()) * this.l), paramInt2);
    }
    for (;;)
    {
      if (i2 == 4) {
        Log.v("CustomViewBehind", "behind INVISIBLE");
      }
      setVisibility(i2);
      return;
      if (this.i == 1)
      {
        int i5 = paramView.getLeft();
        i2 = 0;
        if (paramInt1 <= i5) {
          i2 = 4;
        }
        scrollTo((int)(getBehindWidth() - getWidth() + (paramInt1 - getBehindWidth()) * this.l), paramInt2);
      }
      else
      {
        int i1 = this.i;
        i2 = 0;
        if (i1 == 2)
        {
          View localView1 = this.c;
          int i3;
          label154:
          View localView2;
          if (paramInt1 >= paramView.getLeft())
          {
            i3 = 4;
            localView1.setVisibility(i3);
            localView2 = this.d;
            if (paramInt1 > paramView.getLeft()) {
              break label230;
            }
          }
          label230:
          for (int i4 = 4;; i4 = 0)
          {
            localView2.setVisibility(i4);
            i2 = 0;
            if (paramInt1 == 0) {
              i2 = 4;
            }
            if (paramInt1 > paramView.getLeft()) {
              break label236;
            }
            scrollTo((int)((paramInt1 + getBehindWidth()) * this.l), paramInt2);
            break;
            i3 = 0;
            break label154;
          }
          label236:
          scrollTo((int)(getBehindWidth() - getWidth() + (paramInt1 - getBehindWidth()) * this.l), paramInt2);
        }
      }
    }
  }
  
  public void a(View paramView, Canvas paramCanvas)
  {
    if ((this.m == null) || (this.o <= 0)) {
      return;
    }
    int i1;
    if (this.i == 0) {
      i1 = paramView.getLeft() - this.o;
    }
    for (;;)
    {
      this.m.setBounds(i1, 0, i1 + this.o, getHeight());
      this.m.draw(paramCanvas);
      return;
      if (this.i == 1)
      {
        if (this.d == null)
        {
          i1 = paramView.getRight();
        }
        else
        {
          if (this.n != null)
          {
            int i3 = paramView.getRight();
            this.n.setBounds(i3, 0, i3 + this.o, getHeight());
            this.n.draw(paramCanvas);
          }
          i1 = paramView.getLeft() - this.o;
        }
      }
      else if (this.i == 2)
      {
        if (this.n != null)
        {
          int i2 = paramView.getRight();
          this.n.setBounds(i2, 0, i2 + this.o, getHeight());
          this.n.draw(paramCanvas);
        }
        i1 = paramView.getLeft() - this.o;
      }
      else
      {
        i1 = 0;
      }
    }
  }
  
  public void a(View paramView, Canvas paramCanvas, float paramFloat)
  {
    if (!this.j) {
      return;
    }
    int i1 = (int)(255.0F * this.p * Math.abs(1.0F - paramFloat));
    this.k.setColor(Color.argb(i1, 0, 0, 0));
    int i3;
    int i2;
    if (this.i == 0)
    {
      i3 = paramView.getLeft() - getBehindWidth();
      i2 = paramView.getLeft();
    }
    for (;;)
    {
      paramCanvas.drawRect(i3, 0.0F, i2, getHeight(), this.k);
      return;
      if (this.i == 1)
      {
        i3 = paramView.getRight();
        i2 = paramView.getRight() + getBehindWidth();
      }
      else if (this.i == 2)
      {
        int i4 = paramView.getLeft() - getBehindWidth();
        int i5 = paramView.getLeft();
        paramCanvas.drawRect(i4, 0.0F, i5, getHeight(), this.k);
        i3 = paramView.getRight();
        i2 = paramView.getRight() + getBehindWidth();
      }
      else
      {
        i2 = 0;
        i3 = 0;
      }
    }
  }
  
  public boolean a(float paramFloat)
  {
    if (this.i == 0) {
      if (paramFloat <= 0.0F) {}
    }
    do
    {
      do
      {
        return true;
        return false;
        if (this.i != 1) {
          break;
        }
      } while (paramFloat < 0.0F);
      return false;
    } while (this.i == 2);
    return false;
  }
  
  public boolean a(View paramView, int paramInt, float paramFloat)
  {
    switch (this.a)
    {
    default: 
      return false;
    case 1: 
      return true;
    }
    return b(paramView, paramInt, paramFloat);
  }
  
  public int b(View paramView)
  {
    if (this.i == 0) {
      return paramView.getLeft();
    }
    if ((this.i == 1) || (this.i == 2)) {
      return paramView.getLeft() + getBehindWidth();
    }
    return 0;
  }
  
  public void b(View paramView, Canvas paramCanvas, float paramFloat)
  {
    if (!this.q) {}
    while ((this.r == null) || (this.s == null) || (!((String)this.s.getTag(2131165265)).equals("CustomViewBehindSelectedView"))) {
      return;
    }
    paramCanvas.save();
    int i1 = (int)(paramFloat * this.r.getWidth());
    if (this.i == 0)
    {
      int i4 = paramView.getLeft();
      int i5 = i4 - i1;
      paramCanvas.clipRect(i5, 0, i4, getHeight());
      paramCanvas.drawBitmap(this.r, i5, getSelectorTop(), null);
    }
    for (;;)
    {
      paramCanvas.restore();
      return;
      if (this.i == 1)
      {
        int i2 = paramView.getRight();
        int i3 = i1 + i2;
        paramCanvas.clipRect(i2, 0, i3, getHeight());
        paramCanvas.drawBitmap(this.r, i3 - this.r.getWidth(), getSelectorTop(), null);
      }
    }
  }
  
  public boolean b(float paramFloat)
  {
    if (this.i == 0) {
      if (paramFloat >= 0.0F) {}
    }
    do
    {
      do
      {
        return true;
        return false;
        if (this.i != 1) {
          break;
        }
      } while (paramFloat > 0.0F);
      return false;
    } while (this.i == 2);
    return false;
  }
  
  public boolean b(View paramView, int paramInt)
  {
    int i1 = paramView.getLeft();
    int i2 = paramView.getRight();
    if (this.i == 0) {
      if ((paramInt < i1) || (paramInt > i1 + this.e)) {}
    }
    do
    {
      do
      {
        return true;
        return false;
        if (this.i != 1) {
          break;
        }
      } while ((paramInt <= i2) && (paramInt >= i2 - this.e));
      return false;
      if (this.i != 2) {
        break;
      }
    } while (((paramInt >= i1) && (paramInt <= i1 + this.e)) || ((paramInt <= i2) && (paramInt >= i2 - this.e)));
    return false;
    return false;
  }
  
  public boolean b(View paramView, int paramInt, float paramFloat)
  {
    if ((this.i == 0) || ((this.i == 2) && (paramInt == 0))) {
      if (paramFloat < paramView.getLeft()) {}
    }
    do
    {
      return true;
      return false;
      if ((this.i != 1) && ((this.i != 2) || (paramInt != 2))) {
        break;
      }
    } while (paramFloat <= paramView.getRight());
    return false;
    return false;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (this.g != null)
    {
      paramCanvas.save();
      this.g.a(paramCanvas, this.b.getPercentOpen());
      super.dispatchDraw(paramCanvas);
      paramCanvas.restore();
      return;
    }
    super.dispatchDraw(paramCanvas);
  }
  
  public int getBehindWidth()
  {
    return this.c.getWidth();
  }
  
  public View getContent()
  {
    return this.c;
  }
  
  public int getMarginThreshold()
  {
    return this.e;
  }
  
  public int getMode()
  {
    return this.i;
  }
  
  public float getScrollScale()
  {
    return this.l;
  }
  
  public View getSecondaryContent()
  {
    return this.d;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return !this.h;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt3 - paramInt1;
    int i2 = paramInt4 - paramInt2;
    this.c.layout(0, 0, i1 - this.f, i2);
    if (this.d != null) {
      this.d.layout(0, 0, i1 - this.f, i2);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = getDefaultSize(0, paramInt1);
    int i2 = getDefaultSize(0, paramInt2);
    setMeasuredDimension(i1, i2);
    int i3 = getChildMeasureSpec(paramInt1, 0, i1 - this.f);
    int i4 = getChildMeasureSpec(paramInt2, 0, i2);
    this.c.measure(i3, i4);
    if (this.d != null) {
      this.d.measure(i3, i4);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return !this.h;
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    super.scrollTo(paramInt1, paramInt2);
    if (this.g != null) {
      invalidate();
    }
  }
  
  public void setCanvasTransformer(j paramj)
  {
    this.g = paramj;
  }
  
  public void setChildrenEnabled(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }
  
  public void setContent(View paramView)
  {
    if (this.c != null) {
      removeView(this.c);
    }
    this.c = paramView;
    addView(this.c);
  }
  
  public void setCustomViewAbove(a parama)
  {
    this.b = parama;
  }
  
  public void setFadeDegree(float paramFloat)
  {
    if ((paramFloat > 1.0F) || (paramFloat < 0.0F)) {
      throw new IllegalStateException("The BehindFadeDegree must be between 0.0f and 1.0f");
    }
    this.p = paramFloat;
  }
  
  public void setFadeEnabled(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }
  
  public void setMarginThreshold(int paramInt)
  {
    this.e = paramInt;
  }
  
  public void setMode(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      this.i = paramInt;
      return;
      if (this.c != null) {
        this.c.setVisibility(0);
      }
      if (this.d != null)
      {
        this.d.setVisibility(4);
        continue;
        if ((this.c != null) && (this.d != null))
        {
          this.c.setVisibility(4);
          this.d.setVisibility(0);
        }
        else
        {
          if (this.c != null) {
            this.c.setVisibility(0);
          }
          if (this.d != null) {
            this.d.setVisibility(4);
          }
        }
      }
    }
  }
  
  public void setScrollScale(float paramFloat)
  {
    this.l = paramFloat;
  }
  
  public void setSecondaryContent(View paramView)
  {
    if (this.d != null) {
      removeView(this.d);
    }
    this.d = paramView;
    addView(this.d);
  }
  
  public void setSecondaryShadowDrawable(Drawable paramDrawable)
  {
    this.n = paramDrawable;
    invalidate();
  }
  
  public void setSelectedView(View paramView)
  {
    if (this.s != null)
    {
      this.s.setTag(2131165265, null);
      this.s = null;
    }
    if ((paramView != null) && (paramView.getParent() != null))
    {
      this.s = paramView;
      this.s.setTag(2131165265, "CustomViewBehindSelectedView");
      invalidate();
    }
  }
  
  public void setSelectorBitmap(Bitmap paramBitmap)
  {
    this.r = paramBitmap;
    refreshDrawableState();
  }
  
  public void setSelectorEnabled(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }
  
  public void setShadowDrawable(Drawable paramDrawable)
  {
    this.m = paramDrawable;
    invalidate();
  }
  
  public void setShadowWidth(int paramInt)
  {
    this.o = paramInt;
    invalidate();
  }
  
  public void setTouchMode(int paramInt)
  {
    this.a = paramInt;
  }
  
  public void setWidthOffset(int paramInt)
  {
    this.f = paramInt;
    requestLayout();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.slidingmenu.lib.f
 * JD-Core Version:    0.7.0.1
 */