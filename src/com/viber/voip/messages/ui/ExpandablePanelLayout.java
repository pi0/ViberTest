package com.viber.voip.messages.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.util.SparseArrayCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

public class ExpandablePanelLayout
  extends FrameLayout
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnPreDrawListener
{
  private static int a;
  private static int c = 0;
  private static int d = 0;
  private Rect b = new Rect();
  private boolean e = true;
  private int f = 0;
  private int g = 0;
  private int h = -1;
  private boolean i = false;
  private int j;
  private bi k;
  private bj l;
  private SparseArrayCompat<View> m;
  private bl n;
  private View o;
  private float p = 0.0F;
  
  public ExpandablePanelLayout(Context paramContext)
  {
    super(paramContext);
    c();
  }
  
  public ExpandablePanelLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c();
  }
  
  public ExpandablePanelLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c();
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      requestLayout();
      return;
      if (this.n != null) {
        this.n.g();
      }
      if ((3 == this.g) || (1 == this.g))
      {
        c(-1);
        continue;
        if (this.n != null) {
          this.n.f();
        }
        this.g = 2;
        if (-1 != this.h) {
          e();
        } else {
          d();
        }
      }
    }
  }
  
  private void c()
  {
    if (getRootView().getHeight() > getRootView().getWidth()) {}
    for (boolean bool = true;; bool = false)
    {
      this.e = bool;
      a = getResources().getDimensionPixelOffset(2131362206);
      if (c == 0)
      {
        c = ViberApplication.preferences().b("keyboard_height_portrait", a);
        ViberApplication.log(3, "ExpandablePanelLayout", "init mSoftInputHeightPortrait=" + c);
      }
      if (d == 0)
      {
        d = ViberApplication.preferences().b("keyboard_height_landscape", a);
        ViberApplication.log(3, "ExpandablePanelLayout", "init mSoftInputHeightPortrait=" + d);
      }
      return;
    }
  }
  
  private void c(int paramInt)
  {
    if (this.f != 0) {
      return;
    }
    if (-1 == paramInt) {
      paramInt = this.h;
    }
    for (;;)
    {
      View localView1 = (View)this.m.get(paramInt);
      View localView2 = this.k.a(paramInt, localView1);
      if (localView2 == null) {
        break;
      }
      this.m.put(paramInt, localView2);
      ViewParent localViewParent = localView2.getParent();
      if ((localViewParent == null) || (this != localViewParent))
      {
        if ((localViewParent != null) && ((localViewParent instanceof ViewGroup))) {
          ((ViewGroup)localViewParent).removeView(localView2);
        }
        addView(localView2);
        localView2.requestLayout();
      }
      if (localView2 != this.o)
      {
        if (this.o != null) {
          this.o.setVisibility(8);
        }
        this.o = localView2;
        if (localView2 != null) {
          localView2.setVisibility(0);
        }
      }
      if (1 == this.g) {
        localView2.startAnimation(AnimationUtils.makeInChildBottomAnimation(getContext()));
      }
      this.g = 3;
      setVisibility(0);
      d();
      return;
      this.h = paramInt;
    }
  }
  
  private void d()
  {
    int i1 = -1;
    if ((this.l != null) && (this.k != null))
    {
      if (this.h != i1) {
        i1 = this.k.a(this.h);
      }
      this.l.a(this.g, i1, this.o);
    }
  }
  
  private void e()
  {
    setVisibility(8);
    d();
  }
  
  public void a()
  {
    this.g = 0;
    e();
  }
  
  public void a(int paramInt)
  {
    this.h = this.k.b(paramInt);
    if ((!isShown()) && (this.f == 0))
    {
      setVisibility(0);
      invalidate();
      requestLayout();
    }
    for (;;)
    {
      this.g = 1;
      return;
      if (this.f == 0) {
        c(this.k.b(paramInt));
      }
    }
  }
  
  public boolean b()
  {
    return (isShown()) && (3 == this.g);
  }
  
  public boolean b(int paramInt)
  {
    return (b()) && (paramInt == this.k.a(this.h));
  }
  
  public int getCurrentPanel()
  {
    return this.h;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    getViewTreeObserver().addOnGlobalLayoutListener(this);
    getViewTreeObserver().addOnPreDrawListener(this);
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.m.clear();
    requestLayout();
  }
  
  @SuppressLint({"NewApi"})
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    getViewTreeObserver().removeOnPreDrawListener(this);
    if (Build.VERSION.SDK_INT >= 16)
    {
      getViewTreeObserver().removeOnGlobalLayoutListener(this);
      return;
    }
    getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
  
  public void onGlobalLayout()
  {
    getWindowVisibleDisplayFrame(this.b);
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    boolean bool1;
    int i1;
    if (localDisplayMetrics.heightPixels > localDisplayMetrics.widthPixels)
    {
      bool1 = true;
      this.e = bool1;
      i1 = localDisplayMetrics.heightPixels - this.b.bottom;
      if ((this.e) && (Build.BRAND.equals("Amazon")))
      {
        if (i1 != 78) {
          break label258;
        }
        i1 -= 78;
      }
      label75:
      int i2 = this.f;
      if (i1 <= this.j) {
        break label276;
      }
      this.f = 1;
      label94:
      boolean bool2;
      if (i2 == this.f)
      {
        int i4 = this.j;
        bool2 = false;
        if (i4 == i1) {}
      }
      else
      {
        bool2 = true;
      }
      this.i = bool2;
      this.j = i1;
      if (2 == this.f)
      {
        if ((!this.e) || (c == i1)) {
          break label320;
        }
        this.i = true;
        if (c != i1) {
          ViberApplication.preferences().a("keyboard_height_portrait", i1);
        }
        c = i1;
      }
      label182:
      if (this.i) {
        if (!this.e) {
          break label365;
        }
      }
    }
    label258:
    label276:
    label320:
    label365:
    for (int i3 = c;; i3 = d)
    {
      a(this.f, i3);
      Log.d("SOFTINPUT", "visible: " + this.f + " height: " + i3);
      return;
      bool1 = false;
      break;
      if (i1 == 90)
      {
        i1 -= 90;
        break label75;
      }
      i1 -= 78;
      break label75;
      if ((i1 == this.j) && (i1 != 0))
      {
        this.f = 2;
        break label94;
      }
      if (i1 < this.j)
      {
        this.f = 3;
        break label94;
      }
      this.f = 0;
      break label94;
      if ((this.e) || (d == i1)) {
        break label182;
      }
      this.i = true;
      if (d != i1) {
        ViberApplication.preferences().a("keyboard_height_landscape", i1);
      }
      d = i1;
      break label182;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1;
    if (this.e)
    {
      i1 = c;
      if (i1 == 0) {
        break label187;
      }
      if (i1 < a / 2)
      {
        ViberApplication.log(3, "ExpandablePanelLayout", "onMeasure height=" + i1 + " is too small! use default");
        i1 = a;
      }
      getLayoutParams().height = i1;
    }
    for (;;)
    {
      ViberApplication.log(3, "ExpandablePanelLayout", "onMeasure height=" + i1 + " isPortrait=" + this.e);
      super.onMeasure(paramInt1, paramInt2);
      if ((1 == this.g) || ((3 == this.g) && (getMeasuredWidth() != this.p) && (this.f == 0)))
      {
        this.p = getMeasuredWidth();
        this.m.clear();
        c(this.h);
        super.onMeasure(paramInt1, paramInt2);
      }
      return;
      i1 = d;
      break;
      label187:
      if ((d == 0) && (c == 0))
      {
        c = getLayoutParams().height;
        d = getLayoutParams().height;
      }
    }
  }
  
  public boolean onPreDraw()
  {
    return (!this.i) || (!((View)getParent()).isShown());
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    ExpandablePanelLayout.SavedState localSavedState = (ExpandablePanelLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (1 != this.g) {
      this.g = ExpandablePanelLayout.SavedState.a(localSavedState);
    }
    this.h = ExpandablePanelLayout.SavedState.b(localSavedState);
    c = ExpandablePanelLayout.SavedState.c(localSavedState);
    d = ExpandablePanelLayout.SavedState.d(localSavedState);
    if ((3 == this.g) || (1 == this.g)) {
      c(-1);
    }
    requestLayout();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    ExpandablePanelLayout.SavedState localSavedState = new ExpandablePanelLayout.SavedState(super.onSaveInstanceState());
    ExpandablePanelLayout.SavedState.a(localSavedState, this.g);
    ExpandablePanelLayout.SavedState.b(localSavedState, this.h);
    ExpandablePanelLayout.SavedState.c(localSavedState, c);
    ExpandablePanelLayout.SavedState.d(localSavedState, d);
    return localSavedState;
  }
  
  public void setAdapter(bi parambi)
  {
    this.k = parambi;
    this.m = new SparseArrayCompat(parambi.a());
  }
  
  public void setOnSoftKeyboardVisibilityChangeListener(bl parambl)
  {
    this.n = parambl;
  }
  
  public void setStateListener(bj parambj)
  {
    this.l = parambj;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.ExpandablePanelLayout
 * JD-Core Version:    0.7.0.1
 */