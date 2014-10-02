package com.slidingmenu.lib;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
  extends ViewGroup
{
  private static final Interpolator e = new b();
  private boolean A = false;
  private float B = 0.0F;
  protected int a = -1;
  protected VelocityTracker b;
  protected int c;
  protected int d = 0;
  private View f;
  private int g;
  private Scroller h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private int m;
  private float n;
  private float o;
  private float p;
  private int q;
  private int r;
  private f s;
  private boolean t = true;
  private d u;
  private d v;
  private l w;
  private n x;
  private p y;
  private List<View> z = new ArrayList();
  
  public a(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public a(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private int a(float paramFloat, int paramInt1, int paramInt2)
  {
    int i1 = this.g;
    if ((Math.abs(paramInt2) > this.r) && (Math.abs(paramInt1) > this.q))
    {
      if ((paramInt1 > 0) && (paramInt2 > 0)) {
        i1--;
      }
      while ((paramInt1 >= 0) || (paramInt2 >= 0)) {
        return i1;
      }
      return i1 + 1;
    }
    return Math.round(paramFloat + this.g);
  }
  
  private int a(MotionEvent paramMotionEvent, int paramInt)
  {
    int i1 = MotionEventCompat.findPointerIndex(paramMotionEvent, paramInt);
    if (i1 == -1) {
      this.a = -1;
    }
    return i1;
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    Rect localRect = new Rect();
    Iterator localIterator = this.z.iterator();
    while (localIterator.hasNext())
    {
      View localView = (View)localIterator.next();
      int[] arrayOfInt = new int[2];
      localView.getLocationOnScreen(arrayOfInt);
      localView.getHitRect(localRect);
      localRect.offset(arrayOfInt[0] - localView.getLeft(), arrayOfInt[1] - localView.getTop());
      if ((localView.isShown()) && (localRect.contains((int)paramMotionEvent.getRawX(), (int)paramMotionEvent.getRawY()))) {
        return true;
      }
    }
    return false;
  }
  
  private void b(MotionEvent paramMotionEvent, int paramInt)
  {
    int i1 = this.a;
    int i2 = a(paramMotionEvent, i1);
    if ((i1 == -1) || (i2 == -1)) {}
    float f3;
    do
    {
      return;
      float f1 = MotionEventCompat.getX(paramMotionEvent, i2);
      float f2 = f1 - this.o;
      f3 = Math.abs(f2);
      float f4 = MotionEventCompat.getY(paramMotionEvent, i2);
      float f5 = Math.abs(f4 - this.p);
      if (b()) {}
      for (int i3 = this.m / 2; (f3 > i3) && (f3 > f5) && (b(f2)); i3 = this.m)
      {
        f();
        if (this.y != null) {
          this.y.d_(paramInt);
        }
        this.o = f1;
        this.p = f4;
        setScrollingCacheEnabled(true);
        return;
      }
    } while (f3 <= this.m);
    this.l = true;
  }
  
  private boolean b(float paramFloat)
  {
    if (b()) {
      return this.s.b(paramFloat);
    }
    return this.s.a(paramFloat);
  }
  
  private boolean b(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    int i1 = (int)(paramMotionEvent.getX() + this.B);
    if (b()) {
      bool = this.s.a(this.f, this.g, i1);
    }
    do
    {
      do
      {
        return bool;
        switch (this.d)
        {
        default: 
          return false;
        }
      } while (!a(paramMotionEvent));
      return false;
      return false;
    } while ((this.s.b(this.f, i1)) && (!a(paramMotionEvent)));
    return false;
  }
  
  private void c(int paramInt)
  {
    int i1 = getWidth();
    int i2 = paramInt / i1;
    int i3 = paramInt % i1;
    a(i2, i3 / i1, i3);
  }
  
  private void c(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i1) == this.a) {
      if (i1 != 0) {
        break label56;
      }
    }
    label56:
    for (int i2 = 1;; i2 = 0)
    {
      this.o = MotionEventCompat.getX(paramMotionEvent, i2);
      this.a = MotionEventCompat.getPointerId(paramMotionEvent, i2);
      if (this.b != null) {
        this.b.clear();
      }
      return;
    }
  }
  
  private void e()
  {
    if (this.j)
    {
      setScrollingCacheEnabled(false);
      this.h.abortAnimation();
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.h.getCurrX();
      int i4 = this.h.getCurrY();
      if ((i1 != i3) || (i2 != i4)) {
        scrollTo(i3, i4);
      }
      if (!b()) {
        break label93;
      }
      if (this.x != null) {
        this.x.b();
      }
    }
    for (;;)
    {
      this.j = false;
      return;
      label93:
      if (this.w != null) {
        this.w.a();
      }
    }
  }
  
  private void f()
  {
    this.k = true;
    this.A = false;
  }
  
  private void g()
  {
    this.A = false;
    this.k = false;
    this.l = false;
    this.a = -1;
    if (this.b != null)
    {
      this.b.recycle();
      this.b = null;
    }
  }
  
  private int getLeftBound()
  {
    return this.s.a(this.f);
  }
  
  private int getRightBound()
  {
    return this.s.b(this.f);
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.i != paramBoolean) {
      this.i = paramBoolean;
    }
  }
  
  float a(float paramFloat)
  {
    return FloatMath.sin((float)(0.47123891676382D * (paramFloat - 0.5F)));
  }
  
  public int a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 0: 
    case 2: 
      return this.s.a(this.f, paramInt);
    }
    return this.f.getLeft();
  }
  
  d a(d paramd)
  {
    d locald = this.v;
    this.v = paramd;
    return locald;
  }
  
  void a()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.h = new Scroller(localContext, e);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    this.m = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
    this.q = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.c = localViewConfiguration.getScaledMaximumFlingVelocity();
    a(new c(this));
    this.r = ((int)(25.0F * localContext.getResources().getDisplayMetrics().density));
  }
  
  protected void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.u != null) {
      this.u.a(paramInt1, paramFloat, paramInt2);
    }
    if (this.v != null) {
      this.v.a(paramInt1, paramFloat, paramInt2);
    }
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0) {
      setScrollingCacheEnabled(false);
    }
    int i1;
    int i2;
    int i3;
    int i4;
    do
    {
      do
      {
        return;
        i1 = getScrollX();
        i2 = getScrollY();
        i3 = paramInt1 - i1;
        i4 = paramInt2 - i2;
        if ((i3 != 0) || (i4 != 0)) {
          break label92;
        }
        e();
        if (!b()) {
          break;
        }
      } while (this.x == null);
      this.x.b();
      return;
    } while (this.w == null);
    this.w.a();
    return;
    label92:
    setScrollingCacheEnabled(true);
    this.j = true;
    int i5 = getBehindWidth();
    int i6 = i5 / 2;
    float f1 = Math.min(1.0F, 1.0F * Math.abs(i3) / i5);
    float f2 = i6 + i6 * a(f1);
    int i7 = Math.abs(paramInt3);
    if (i7 > 0) {}
    for (int i8 = 4 * Math.round(1000.0F * Math.abs(f2 / i7));; i8 = 600)
    {
      int i9 = Math.min(i8, 600);
      this.h.startScroll(i1, i2, i3, i4, i9);
      invalidate();
      return;
      ((int)(100.0F * (1.0F + Math.abs(i3) / i5)));
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    a(paramInt, paramBoolean, false);
  }
  
  void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((!paramBoolean2) && (this.g == paramInt1))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i1 = this.s.a(paramInt1);
    if (this.g != i1) {}
    int i3;
    for (int i2 = 1;; i2 = 0)
    {
      this.g = i1;
      i3 = a(this.g);
      if ((i2 != 0) && (this.u != null)) {
        this.u.a(i1);
      }
      if ((i2 != 0) && (this.v != null)) {
        this.v.a(i1);
      }
      if (!paramBoolean1) {
        break;
      }
      a(i3, 0, paramInt2);
      return;
    }
    e();
    scrollTo(i3, 0);
  }
  
  public void a(View paramView)
  {
    if (!this.z.contains(paramView)) {
      this.z.add(paramView);
    }
  }
  
  public boolean a(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0) {
      switch (paramKeyEvent.getKeyCode())
      {
      }
    }
    do
    {
      do
      {
        return false;
        return b(17);
        return b(66);
      } while (Build.VERSION.SDK_INT < 11);
      if (KeyEventCompat.hasNoModifiers(paramKeyEvent)) {
        return b(2);
      }
    } while (!KeyEventCompat.hasModifiers(paramKeyEvent, 1));
    return b(1);
  }
  
  public boolean b()
  {
    return (this.g == 0) || (this.g == 2);
  }
  
  public boolean b(int paramInt)
  {
    View localView1 = findFocus();
    if (localView1 == this) {
      localView1 = null;
    }
    View localView2 = FocusFinder.getInstance().findNextFocus(this, localView1, paramInt);
    boolean bool;
    if ((localView2 != null) && (localView2 != localView1)) {
      if (paramInt == 17) {
        bool = localView2.requestFocus();
      }
    }
    for (;;)
    {
      if (bool) {
        playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
      }
      return bool;
      if (paramInt == 66)
      {
        if ((localView1 != null) && (localView2.getLeft() <= localView1.getLeft()))
        {
          bool = d();
          continue;
        }
        bool = localView2.requestFocus();
        continue;
        if ((paramInt == 17) || (paramInt == 1))
        {
          bool = c();
          continue;
        }
        if ((paramInt == 66) || (paramInt == 2))
        {
          bool = d();
          continue;
        }
      }
      bool = false;
    }
  }
  
  boolean c()
  {
    if (this.g > 0)
    {
      a(-1 + this.g, true);
      return true;
    }
    return false;
  }
  
  public void computeScroll()
  {
    if ((!this.h.isFinished()) && (this.h.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.h.getCurrX();
      int i4 = this.h.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        c(i3);
      }
      invalidate();
      return;
    }
    e();
  }
  
  boolean d()
  {
    if (this.g < 1)
    {
      a(1 + this.g, true);
      return true;
    }
    return false;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    this.s.a(this.f, paramCanvas);
    this.s.a(this.f, paramCanvas, getPercentOpen());
    this.s.b(this.f, paramCanvas, getPercentOpen());
    super.dispatchDraw(paramCanvas);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (a(paramKeyEvent));
  }
  
  public int getBehindWidth()
  {
    if (this.s == null) {
      return 0;
    }
    return this.s.getBehindWidth();
  }
  
  public View getContent()
  {
    return this.f;
  }
  
  public int getContentLeft()
  {
    return this.f.getLeft() + this.f.getPaddingLeft();
  }
  
  public int getCurrentItem()
  {
    return this.g;
  }
  
  protected float getPercentOpen()
  {
    return Math.abs(this.B - this.f.getLeft()) / getBehindWidth();
  }
  
  public int getTouchMode()
  {
    return this.d;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.t) {
      return false;
    }
    int i1 = 0xFF & paramMotionEvent.getAction();
    if ((i1 == 3) || (i1 == 1) || ((i1 != 0) && (this.l)))
    {
      g();
      return false;
    }
    switch (i1)
    {
    }
    for (;;)
    {
      if (!this.k)
      {
        if (this.b == null) {
          this.b = VelocityTracker.obtain();
        }
        this.b.addMovement(paramMotionEvent);
      }
      if ((!this.k) && ((!this.A) || (!b()))) {
        break;
      }
      return true;
      b(paramMotionEvent, 0);
      continue;
      int i2 = MotionEventCompat.getActionIndex(paramMotionEvent);
      this.a = MotionEventCompat.getPointerId(paramMotionEvent, i2);
      if (this.a != -1)
      {
        float f1 = MotionEventCompat.getX(paramMotionEvent, i2);
        this.n = f1;
        this.o = f1;
        this.p = MotionEventCompat.getY(paramMotionEvent, i2);
        if (b(paramMotionEvent))
        {
          this.k = false;
          this.l = false;
          if ((b()) && (this.s.b(this.f, this.g, paramMotionEvent.getX() + this.B))) {
            this.A = true;
          }
        }
        else
        {
          this.l = true;
          continue;
          c(paramMotionEvent);
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt3 - paramInt1;
    int i2 = paramInt4 - paramInt2;
    this.f.layout(0, 0, i1, i2);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = getDefaultSize(0, paramInt1);
    int i2 = getDefaultSize(0, paramInt2);
    setMeasuredDimension(i1, i2);
    int i3 = getChildMeasureSpec(paramInt1, 0, i1);
    int i4 = getChildMeasureSpec(paramInt2, 0, i2);
    this.f.measure(i3, i4);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
    {
      e();
      scrollTo(a(this.g), getScrollY());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.t) {}
    while ((!this.k) && (!b(paramMotionEvent))) {
      return false;
    }
    int i1 = paramMotionEvent.getAction();
    if (this.b == null) {
      this.b = VelocityTracker.obtain();
    }
    this.b.addMovement(paramMotionEvent);
    float f4;
    float f5;
    float f6;
    switch (i1 & 0xFF)
    {
    case 4: 
    default: 
    case 0: 
    case 2: 
      int i6;
      do
      {
        do
        {
          for (;;)
          {
            return true;
            e();
            this.a = MotionEventCompat.getPointerId(paramMotionEvent, MotionEventCompat.getActionIndex(paramMotionEvent));
            float f7 = paramMotionEvent.getX();
            this.n = f7;
            this.o = f7;
          }
          if (!this.k)
          {
            b(paramMotionEvent, 1);
            if (this.l) {
              break;
            }
          }
        } while (!this.k);
        i6 = a(paramMotionEvent, this.a);
      } while (this.a == -1);
      float f2 = MotionEventCompat.getX(paramMotionEvent, i6);
      float f3 = this.o - f2;
      this.o = f2;
      f4 = f3 + getScrollX();
      f5 = getLeftBound();
      f6 = getRightBound();
      if (f4 >= f5) {
        break;
      }
    }
    for (;;)
    {
      this.o += f5 - (int)f5;
      scrollTo((int)f5, getScrollY());
      c((int)f5);
      break;
      if (f4 > f6)
      {
        f5 = f6;
        continue;
        if (this.k)
        {
          VelocityTracker localVelocityTracker = this.b;
          localVelocityTracker.computeCurrentVelocity(1000, this.c);
          int i4 = (int)VelocityTrackerCompat.getXVelocity(localVelocityTracker, this.a);
          float f1 = (getScrollX() - a(this.g)) / getBehindWidth();
          int i5 = a(paramMotionEvent, this.a);
          if (this.a != -1) {
            a(a(f1, i4, (int)(MotionEventCompat.getX(paramMotionEvent, i5) - this.n)), true, true, i4);
          }
          for (;;)
          {
            this.a = -1;
            g();
            break;
            a(this.g, true, true, i4);
          }
        }
        if ((!this.A) || (!this.s.b(this.f, this.g, paramMotionEvent.getX() + this.B))) {
          break;
        }
        setCurrentItem(1);
        g();
        break;
        if (!this.k) {
          break;
        }
        a(this.g, true, true);
        this.a = -1;
        g();
        break;
        int i3 = MotionEventCompat.getActionIndex(paramMotionEvent);
        this.o = MotionEventCompat.getX(paramMotionEvent, i3);
        this.a = MotionEventCompat.getPointerId(paramMotionEvent, i3);
        break;
        c(paramMotionEvent);
        int i2 = a(paramMotionEvent, this.a);
        if (this.a == -1) {
          break;
        }
        this.o = MotionEventCompat.getX(paramMotionEvent, i2);
        break;
      }
      f5 = f4;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    super.scrollTo(paramInt1, paramInt2);
    this.B = paramInt1;
    if (this.t) {
      this.s.a(this.f, paramInt1, paramInt2);
    }
    ((SlidingMenu)getParent()).a(getPercentOpen());
  }
  
  public void setAboveOffset(int paramInt)
  {
    this.f.setPadding(paramInt, this.f.getPaddingTop(), this.f.getPaddingRight(), this.f.getPaddingBottom());
  }
  
  public void setContent(View paramView)
  {
    if (this.f != null) {
      removeView(this.f);
    }
    this.f = paramView;
    addView(this.f);
  }
  
  public void setCurrentItem(int paramInt)
  {
    a(paramInt, true, false);
  }
  
  public void setCustomViewBehind(f paramf)
  {
    this.s = paramf;
  }
  
  public void setDragListener(p paramp)
  {
    this.y = paramp;
  }
  
  public void setOnClosedListener(l paraml)
  {
    this.w = paraml;
  }
  
  public void setOnOpenedListener(n paramn)
  {
    this.x = paramn;
  }
  
  public void setOnPageChangeListener(d paramd)
  {
    this.u = paramd;
  }
  
  public void setSlidingEnabled(boolean paramBoolean)
  {
    this.t = paramBoolean;
  }
  
  public void setTouchMode(int paramInt)
  {
    this.d = paramInt;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.slidingmenu.lib.a
 * JD-Core Version:    0.7.0.1
 */