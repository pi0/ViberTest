package com.viber.voip.gallery.animation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout.LayoutParams;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.gl;

@SuppressLint({"InlinedApi"})
public class SwipeableHorizontalScrollView
  extends HorizontalScrollView
  implements y
{
  public static final String a = SwipeableHorizontalScrollView.class.getSimpleName();
  private ViewGroup b;
  private s c;
  private b d;
  private Rect e = new Rect();
  private Rect f = new Rect();
  private Rect g = new Rect();
  private final int h = 2131165295;
  
  public SwipeableHorizontalScrollView(Context paramContext)
  {
    super(paramContext);
    c();
  }
  
  public SwipeableHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c();
  }
  
  public SwipeableHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(View paramView, int paramInt)
  {
    a("notifyViewRemoved removedViewIndex=" + paramInt);
    if (this.d != null) {
      this.d.a(paramView, paramView.getTag(2131165295), paramInt);
    }
  }
  
  private void a(x paramx)
  {
    setEnabled(true);
    if (paramx != null) {
      paramx.a();
    }
  }
  
  private void a(x paramx, int paramInt1, View paramView, int paramInt2, View... paramVarArgs)
  {
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++) {
      ViewHelper.setTranslationX(paramVarArgs[j], 0.0F);
    }
    this.b.removeView(paramView);
    if (paramInt1 > 0)
    {
      getViewTreeObserver().addOnPreDrawListener(new q(this, paramInt1, paramx));
      return;
    }
    a(paramx);
  }
  
  private void a(x paramx, View paramView, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramx, paramView, paramInt1, paramInt2, paramBoolean1, paramBoolean2, -1, -1);
  }
  
  private void a(x paramx, View paramView, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3)
  {
    a(paramx, paramView, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3, -1);
  }
  
  private void a(x paramx, View paramView, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, int paramInt4)
  {
    this.b.getViewTreeObserver().addOnPreDrawListener(new m(this, paramBoolean1, paramInt2, paramView, paramInt1, paramBoolean2, paramx, paramInt4, paramInt3));
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private void c()
  {
    this.c = new s(getContext(), this, w.a, 50);
  }
  
  @SuppressLint({"NewApi"})
  private void e(View paramView)
  {
    paramView.setOnTouchListener(this.c);
    if (gl.b())
    {
      paramView.setLayerType(2, null);
      return;
    }
    a("no layer type hardware - prehoneycomb");
  }
  
  public View a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.b.getChildCount())) {
      return null;
    }
    return this.b.getChildAt(paramInt);
  }
  
  public void a()
  {
    this.b.removeAllViews();
  }
  
  public void a(View paramView)
  {
    a("onSwipeStarted");
  }
  
  public void a(View paramView, Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    e(paramView);
    if (paramObject != null) {
      paramView.setTag(2131165295, paramObject);
    }
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(paramInt1, paramInt2);
    localLayoutParams.leftMargin = paramInt3;
    localLayoutParams.topMargin = paramInt4;
    localLayoutParams.rightMargin = paramInt5;
    localLayoutParams.bottomMargin = paramInt6;
    this.b.addView(paramView, localLayoutParams);
    b();
  }
  
  public void a(View paramView, boolean paramBoolean, x paramx)
  {
    a("onSwipeEnded remove=" + paramBoolean);
    if (!paramBoolean)
    {
      paramx.a();
      return;
    }
    int i = this.b.indexOfChild(paramView);
    setEnabled(false);
    a(paramView, i);
    getDrawingRect(this.e);
    this.b.getChildAt(0).getHitRect(this.g);
    this.b.getChildAt(-1 + this.b.getChildCount()).getHitRect(this.f);
    boolean bool1;
    if (((Rect.intersects(this.e, this.f)) && (Rect.intersects(this.e, this.g))) || (this.e.contains(this.g)))
    {
      boolean bool2 = this.e.contains(this.g);
      bool1 = false;
      if (!bool2)
      {
        if (i == 0)
        {
          a(paramx, paramView, this.g.right - this.e.left, i, false, false);
          return;
        }
        a(paramx, paramView, -1, i, false, true, this.e.right - this.f.left);
      }
    }
    else
    {
      if (i == 0)
      {
        a(paramx, paramView, this.g.right - this.e.left, i, false, false);
        return;
      }
      if (i == -1 + this.b.getChildCount())
      {
        a(paramx, paramView, -1, i, false, true, this.e.right - this.f.left);
        return;
      }
      if (this.e.right >= this.f.left) {}
      for (bool1 = true; (bool1) && (Rect.intersects(this.e, this.f)) && (!this.e.contains(this.f)); bool1 = false)
      {
        a(paramx, paramView, -1, i, bool1, false, -1, this.f.right - this.e.right);
        return;
      }
    }
    a(paramx, paramView, -1, i, bool1, false);
  }
  
  public boolean a(Object paramObject)
  {
    if (paramObject == null) {}
    for (;;)
    {
      return false;
      for (int i = 0; i < this.b.getChildCount(); i++) {
        if (paramObject.equals(this.b.getChildAt(i).getTag(2131165295)))
        {
          this.b.removeViewAt(i);
          return true;
        }
      }
    }
  }
  
  void b()
  {
    getViewTreeObserver().addOnPreDrawListener(new r(this));
  }
  
  public void b(View paramView)
  {
    a("onViewTouched");
  }
  
  public void c(View paramView) {}
  
  public void d(View paramView)
  {
    a("onViewRestored");
  }
  
  public View getFirstChild()
  {
    return a(0);
  }
  
  public View getLastChild()
  {
    return a(-1 + this.b.getChildCount());
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (!isInEditMode())
    {
      this.b = ((ViewGroup)findViewById(2131165290));
      if (this.b == null) {
        throw new RuntimeException("SwipeableHorizontalScrollView must have a view with id attribute is 'R.id.scroll_content'");
      }
      if (gl.b())
      {
        this.b.setClipChildren(false);
        setClipChildren(false);
      }
      int i = this.b.getChildCount();
      for (int j = 0; j < i; j++) {
        e(this.b.getChildAt(j));
      }
    }
  }
  
  public void setViewRemoveListener(b paramb)
  {
    a("setViewRemoveListener");
    this.d = paramb;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.animation.SwipeableHorizontalScrollView
 * JD-Core Version:    0.7.0.1
 */