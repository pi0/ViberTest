package com.viber.voip.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnCreateContextMenuListener;
import android.widget.AbsListView.RecyclerListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.util.gl;

public abstract class ac
  extends ViberListView
{
  public static final String h = ac.class.getSimpleName();
  private AdapterView.OnItemClickListener A = new ah(this);
  private boolean a;
  private float b = -1.0F;
  private float c = -1.0F;
  private float[] d = new float[3];
  private int[] e;
  private Runnable f = new ae(this);
  private AdapterView.OnItemLongClickListener g = new af(this);
  protected boolean i;
  protected boolean j;
  protected boolean k;
  protected boolean l;
  protected boolean m;
  protected boolean n;
  protected ai o;
  protected int p;
  protected int q;
  protected int r = 1118481;
  protected float s;
  AbsListView.RecyclerListener t = new ad(this);
  Handler u = new Handler();
  protected AdapterView.OnItemLongClickListener v;
  protected View.OnCreateContextMenuListener w;
  protected AdapterView.OnItemClickListener x;
  private View.OnCreateContextMenuListener z = new ag(this);
  
  public ac(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ac(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public ac(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private float a(float[] paramArrayOfFloat)
  {
    int i1 = 0;
    int i2 = 0;
    float f1 = 0.0F;
    while (i2 < 3)
    {
      f1 += paramArrayOfFloat[i2];
      if (paramArrayOfFloat[i2] != 0.0F) {
        i1++;
      }
      i2++;
    }
    return f1 / i1;
  }
  
  private void a()
  {
    if (gl.b()) {
      setOverScrollMode(2);
    }
    setDescendantFocusability(262144);
    this.o = c();
  }
  
  private void a(float paramFloat)
  {
    int i1 = 0;
    for (int i2 = 0;; i2++) {
      try
      {
        if (i2 <= getLastVisiblePosition() - getFirstVisiblePosition())
        {
          View localView = getChildAt(i2);
          if (localView != null)
          {
            ViewHelper.setTranslationY(localView, (int)paramFloat);
            if (ViewHelper.getY(localView) + localView.getHeight() < 0.0F) {
              i1++;
            }
          }
        }
        else
        {
          this.q = i1;
          this.s = paramFloat;
          invalidate();
          return;
        }
      }
      finally {}
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    for (int i1 = 0; i1 < 2; i1++) {
      this.d[i1] = this.d[(i1 + 1)];
    }
    float f1 = paramMotionEvent.getY();
    this.d[2] = (f1 - this.s);
  }
  
  private void a(View paramView)
  {
    if (this.o.e != null)
    {
      int i1 = View.MeasureSpec.makeMeasureSpec(this.o.h, 1073741824);
      int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
      this.o.e.measure(i1, i2);
      this.o.e.layout(0, 0, this.o.e.getMeasuredWidth(), this.o.e.getMeasuredHeight());
    }
  }
  
  private void b()
  {
    b(getOverscrollDirection());
    MotionEvent localMotionEvent = MotionEvent.obtain(SystemClock.currentThreadTimeMillis(), SystemClock.uptimeMillis(), 0, 1.0F, this.d[2], 0);
    s();
    this.a = true;
    dispatchTouchEvent(localMotionEvent);
    setOverscrolled(false);
    localMotionEvent.recycle();
    setRecyclerListener(null);
  }
  
  private void b(MotionEvent paramMotionEvent)
  {
    boolean bool1;
    boolean bool2;
    if (!u())
    {
      bool1 = e();
      bool2 = t();
      if ((bool1) || (bool2)) {
        switch (paramMotionEvent.getAction())
        {
        }
      }
    }
    do
    {
      return;
      this.c = paramMotionEvent.getY();
      return;
      if (this.c == -1.0F) {
        this.c = paramMotionEvent.getY();
      }
      float f1 = paramMotionEvent.getY() - this.c;
      if (((bool1) && (f1 > 5.0F) && ((this.n) || (this.m))) || ((bool2) && (-f1 > 5.0F) && (this.m)))
      {
        setOverscrolled(true);
        return;
      }
    } while (!this.i);
    setOverscrolled(false);
  }
  
  private boolean b(float paramFloat)
  {
    float f1 = a(this.d) - paramFloat;
    if ((f1 < 0.0F) && (t())) {
      setOverscrollDirection(1052688);
    }
    if ((f1 > 0.0F) && (e())) {
      setOverscrollDirection(65793);
    }
    if (((f1 > 0.0F) && (t())) || ((f1 < 0.0F) && (e()) && (t() != e())))
    {
      b();
      a(a(getOverscrollDirection(), 0.0F));
      return false;
    }
    a(a(getOverscrollDirection(), f1));
    return true;
  }
  
  private void d()
  {
    for (int i1 = 0; i1 < 3; i1++) {
      this.d[i1] = 0.0F;
    }
  }
  
  private boolean e()
  {
    if (getCount() == 0) {}
    do
    {
      return true;
      if ((getFirstVisiblePosition() != 0) || (getChildAt(0) == null)) {
        break;
      }
    } while (getChildAt(0).getTop() >= 0);
    return false;
    return false;
  }
  
  private void f()
  {
    setRecyclerListener(this.t);
    this.e = new int[1 + (getLastVisiblePosition() - getFirstVisiblePosition())];
    for (int i1 = 0; i1 <= getLastVisiblePosition() - getFirstVisiblePosition(); i1++) {
      if (getChildAt(i1) != null) {
        this.e[i1] = getChildAt(i1).getTop();
      }
    }
  }
  
  private int getOverscrollDirection()
  {
    return this.r;
  }
  
  private void setOverscrollDirection(int paramInt)
  {
    this.r = paramInt;
  }
  
  private void setOverscrolled(boolean paramBoolean)
  {
    if ((!this.i) && (paramBoolean == true))
    {
      MotionEvent localMotionEvent = MotionEvent.obtain(SystemClock.currentThreadTimeMillis(), SystemClock.uptimeMillis(), 1, 0.0F, 0.0F, 0);
      this.a = true;
      dispatchTouchEvent(localMotionEvent);
      localMotionEvent.recycle();
    }
    this.i = paramBoolean;
  }
  
  protected abstract float a(int paramInt, float paramFloat);
  
  protected void a(int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    if ((this.o == null) || (this.o.e == null) || (getAdapter() == null) || (getChildCount() == 0)) {}
    View localView1;
    int i1;
    View localView2;
    boolean bool2;
    label71:
    do
    {
      return;
      localView1 = getChildAt(paramInt2);
      if (getChildCount() >= 2) {
        break;
      }
      i1 = paramInt2;
      localView2 = getChildAt(i1);
      if (this.p == paramInt1) {
        break label380;
      }
      bool2 = bool1;
      this.l = bool2;
      if (this.l)
      {
        this.p = paramInt1;
        a(paramInt2, localView1);
      }
    } while ((localView1 == null) || (localView2 == null));
    Object localObject1;
    label121:
    ak localak1;
    Object localObject2;
    label147:
    int i2;
    if (getHeaderTag() == -1)
    {
      localObject1 = localView1.getTag();
      localak1 = new ak(localObject1);
      if (getHeaderTag() != -1) {
        break label400;
      }
      localObject2 = localView2.getTag();
      ak localak2 = new ak(localObject2);
      this.j = bool1;
      if ((paramInt1 == 0) && (!ak.a(localak1))) {
        this.j = false;
      }
      if (!ak.b(localak1)) {
        this.j = false;
      }
      if ((!localak2.a()) || (d(i1) == bool1)) {
        break label414;
      }
      i2 = localView1.getHeight() + (int)ViewHelper.getY(localView1) + getDividerHeight() - this.o.e.getHeight();
      label241:
      if ((!localak1.a()) || (ViewHelper.getY(localView1) + this.o.d <= 0.0F)) {
        break label448;
      }
      i2 = (int)ViewHelper.getY(localView1) + this.o.d;
      label284:
      this.o.b(i2);
      this.o.a(this.j);
      if ((this.o.i != 0) || (this.j != bool1) || ((ViewHelper.getY(localView1) >= 0.0F) && (localView1.getTop() >= 0)) || ((!ak.a(localak1)) && (!ak.a(localak2)))) {
        break label459;
      }
    }
    for (;;)
    {
      this.k = bool1;
      a(localak1);
      r();
      return;
      i1 = paramInt2 + 1;
      break;
      label380:
      bool2 = false;
      break label71;
      localObject1 = localView1.getTag(getHeaderTag());
      break label121;
      label400:
      localObject2 = localView2.getTag(getHeaderTag());
      break label147;
      label414:
      if ((localak1.a()) && ((int)ViewHelper.getY(localView1) > 0))
      {
        i2 = (int)ViewHelper.getY(localView1);
        break label241;
      }
      i2 = 0;
      break label241;
      label448:
      if (i2 <= 0) {
        break label284;
      }
      i2 = 0;
      break label284;
      label459:
      bool1 = false;
    }
  }
  
  protected abstract void a(int paramInt, View paramView);
  
  public abstract void a(ak paramak);
  
  protected abstract void b(int paramInt);
  
  protected abstract ai c();
  
  protected boolean d(int paramInt)
  {
    return paramInt == -1 + getCount();
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if (this.j)
    {
      int i1 = paramCanvas.save();
      paramCanvas.translate(this.o.g, this.o.i);
      this.o.e.draw(paramCanvas);
      paramCanvas.restoreToCount(i1);
    }
  }
  
  protected void e(int paramInt)
  {
    this.s += paramInt;
  }
  
  protected float getBottomFadingEdgeStrength()
  {
    return 0.0F;
  }
  
  protected View.OnCreateContextMenuListener getExtendedCreateContextMenuItemClickListener()
  {
    return this.z;
  }
  
  protected AdapterView.OnItemClickListener getExtendedItemClickListener()
  {
    return this.A;
  }
  
  protected AdapterView.OnItemLongClickListener getExtendedItemLongClickListener()
  {
    return this.g;
  }
  
  protected abstract int getHeaderTag();
  
  protected float getTopFadingEdgeStrength()
  {
    return 0.0F;
  }
  
  protected boolean i()
  {
    return !u();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.i)
    {
      a(0.0F);
      s();
      setOverscrolled(false);
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    a(getFirstVisiblePosition() + this.q, this.q);
    super.onDraw(paramCanvas);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.o != null)
    {
      this.o.g = getPaddingLeft();
      this.o.h = (paramInt3 - paramInt1 - this.o.g - getPaddingRight());
    }
    if (u()) {
      a(this.s);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.a == true)
    {
      this.a = false;
      return super.onTouchEvent(paramMotionEvent);
    }
    b(paramMotionEvent);
    if (!u())
    {
      this.q = 0;
      return super.onTouchEvent(paramMotionEvent);
    }
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    case 0: 
      this.q = 0;
      return super.onTouchEvent(paramMotionEvent);
    case 2: 
      a(paramMotionEvent);
      if (this.b == -1.0F)
      {
        f();
        this.b = paramMotionEvent.getY();
      }
      b(this.b);
      return false;
    }
    this.b = -1.0F;
    this.q = 0;
    this.c = -1.0F;
    d();
    b(getOverscrollDirection());
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void p()
  {
    setAdapter(null);
  }
  
  protected void r()
  {
    a(this.o.e);
  }
  
  public void s()
  {
    this.s = 0.0F;
    a(this.s);
    setOverscrolled(false);
    this.b = -1.0F;
    d();
  }
  
  public void setEnablSmoothOverscroll(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }
  
  public void setEnablePull(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }
  
  public void setOnCreateContextMenuListener(View.OnCreateContextMenuListener paramOnCreateContextMenuListener)
  {
    this.w = paramOnCreateContextMenuListener;
    super.setOnCreateContextMenuListener(getExtendedCreateContextMenuItemClickListener());
  }
  
  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.x = paramOnItemClickListener;
    super.setOnItemClickListener(getExtendedItemClickListener());
  }
  
  public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    this.v = paramOnItemLongClickListener;
    super.setOnItemLongClickListener(getExtendedItemLongClickListener());
  }
  
  protected boolean t()
  {
    if (getCount() == 0) {}
    do
    {
      return true;
      if ((getLastVisiblePosition() != -1 + getCount()) || (getChildAt(-1 + getChildCount()) == null)) {
        break;
      }
    } while (getChildAt(-1 + getChildCount()).getBottom() <= getBottom());
    return false;
    return false;
  }
  
  public boolean u()
  {
    return this.i;
  }
  
  protected void v()
  {
    if (this.s != 0.0F)
    {
      this.s -= this.s / 3.0F;
      if ((this.s < 3.0F) && (this.s > -3.0F))
      {
        this.s = 0.0F;
        setOverscrolled(false);
      }
      if (this.b == -1.0F)
      {
        a(this.s);
        this.u.postDelayed(this.f, 0L);
      }
      return;
    }
    setRecyclerListener(null);
    a(this.s);
    setOverscrolled(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.ac
 * JD-Core Version:    0.7.0.1
 */