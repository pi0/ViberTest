package com.viber.voip.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import com.viber.voip.messages.extras.image.h;

public abstract class t
  extends ac
{
  private View A;
  private RelativeLayout B;
  private AbsListView.LayoutParams C = new AbsListView.LayoutParams(-1, -2);
  private Handler D = new Handler();
  private boolean E;
  private boolean F;
  private AdapterView.OnItemLongClickListener G;
  private Runnable H = new w(this);
  private final int a = h.a(60.0F);
  private aj b;
  protected y c;
  protected int d;
  public boolean e = false;
  protected boolean f;
  Handler g = new Handler();
  private x z;
  
  public t(Context paramContext)
  {
    super(paramContext);
  }
  
  public t(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public t(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(int paramInt)
  {
    if (paramInt > 0) {}
  }
  
  private void a(View paramView)
  {
    if ((getPullToRefreshHeader() != null) && (getPullToRefreshHeader().e != null))
    {
      int i = View.MeasureSpec.makeMeasureSpec(getPullToRefreshHeader().h, 1073741824);
      int j = View.MeasureSpec.makeMeasureSpec(0, 0);
      getPullToRefreshHeader().e.measure(i, j);
      getPullToRefreshHeader().e.layout(0, 0, getPullToRefreshHeader().e.getMeasuredWidth(), getPullToRefreshHeader().e.getMeasuredHeight());
    }
    invalidate();
  }
  
  private y getPullToRefreshHeader()
  {
    return this.c;
  }
  
  protected float a(int paramInt, float paramFloat)
  {
    if ((!this.n) && (!this.m)) {
      paramFloat = 0.0F;
    }
    do
    {
      return paramFloat;
      if (((this.d == 1) && (!this.m)) || ((this.r == 1052688) && (!this.m))) {
        return 0.0F;
      }
      if (this.d == 4)
      {
        this.F = true;
        return 0.0F;
      }
    } while (((this.d == 1) && (this.m)) || (paramFloat == 0.0F) || (paramFloat == 0.0F) || ((!this.n) && (this.m == true)) || (getPullToRefreshHeader() == null) || (paramInt != 65793));
    this.f = true;
    getPullToRefreshHeader().e.setLayoutParams(new AbsListView.LayoutParams(getWidth(), this.a));
    if ((paramFloat - this.a < 0.0F) && (this.d != 2)) {
      setPullState(2);
    }
    for (;;)
    {
      getPullToRefreshHeader().a((int)paramFloat - this.a, this.c.j);
      a(this.c.e);
      return paramFloat;
      if ((paramFloat - this.a > 0.0F) && (this.d != 3)) {
        setPullState(3);
      }
    }
  }
  
  protected void a(int paramInt, View paramView)
  {
    a(paramInt);
  }
  
  public void a(long paramLong)
  {
    this.D.postDelayed(new u(this), paramLong);
  }
  
  public void a(y paramy, x paramx)
  {
    this.z = paramx;
    this.c = paramy;
    this.A = paramx.a();
    this.A.setVisibility(8);
    if (this.B == null)
    {
      this.B = new RelativeLayout(getContext());
      this.B.setLayoutParams(this.C);
      this.B.setGravity(81);
    }
    this.B.addView(this.A);
    if ((!this.E) && (getAdapter() == null))
    {
      addHeaderView(this.B);
      this.E = true;
    }
    setEnablePull(true);
  }
  
  protected void b(int paramInt)
  {
    if ((this.z != null) && (paramInt == 65793) && (this.d == 4) && (this.s > 0.0F)) {
      e(-this.z.b());
    }
    v();
    this.f = false;
    invalidate();
  }
  
  protected void c(int paramInt)
  {
    if ((this.d != 1) && (getPullToRefreshHeader() != null))
    {
      getPullToRefreshHeader().a(paramInt);
      if ((paramInt == 4) && (this.A != null)) {
        this.A.setVisibility(0);
      }
    }
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if ((this.f) && (getPullToRefreshHeader() != null))
    {
      int i = paramCanvas.save();
      paramCanvas.translate(0.0F, getPullToRefreshHeader().i);
      getPullToRefreshHeader().e.draw(paramCanvas);
      paramCanvas.restoreToCount(i);
    }
  }
  
  public void f()
  {
    s();
    setPullState(6);
  }
  
  public void h()
  {
    if (this.A != null)
    {
      this.A.setVisibility(8);
      this.C = new AbsListView.LayoutParams(-1, -2);
      this.B.setLayoutParams(this.C);
    }
  }
  
  protected boolean i()
  {
    if (!super.i()) {
      return false;
    }
    if ((q()) && (this.F == true))
    {
      this.F = false;
      return false;
    }
    return true;
  }
  
  public void j()
  {
    setPullState(1);
  }
  
  public void k()
  {
    if (this.d == 1) {
      this.d = 5;
    }
  }
  
  public void l()
  {
    this.p = -1;
    setPullState(5);
    v();
  }
  
  public void m()
  {
    setPullState(4);
  }
  
  public void n()
  {
    a(2000L);
  }
  
  public void o()
  {
    if (getFirstVisiblePosition() == 1)
    {
      smoothScrollToPosition(1);
      h();
      return;
    }
    if (getFirstVisiblePosition() == 0)
    {
      if (this.B.getHeight() > 10)
      {
        this.C = new AbsListView.LayoutParams(-1, -10 + this.B.getHeight());
        this.B.setLayoutParams(this.C);
        this.g.postDelayed(this.H, 1L);
        return;
      }
      h();
      return;
    }
    h();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    a(getFirstVisiblePosition());
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (getPullToRefreshHeader() != null)
    {
      getPullToRefreshHeader().g = getPaddingLeft();
      getPullToRefreshHeader().h = (paramInt3 - paramInt1 - getPullToRefreshHeader().g - getPaddingRight());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!u()) {
      return super.onTouchEvent(paramMotionEvent);
    }
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      setPullState(2);
      continue;
      if ((this.r == 65793) && (this.d == 3))
      {
        m();
        if (this.b != null) {
          this.b.a();
        }
      }
    }
  }
  
  public void p()
  {
    super.p();
    this.b = null;
  }
  
  public boolean q()
  {
    return this.d == 4;
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    setPullState(5);
    super.setAdapter(paramListAdapter);
  }
  
  public void setOnLongItemClickListener(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    this.G = paramOnItemLongClickListener;
    setOnItemLongClickListener(new v(this));
  }
  
  public void setOnRefreshListener(aj paramaj)
  {
    this.b = paramaj;
  }
  
  public void setPullState(int paramInt)
  {
    if (this.d != 1)
    {
      this.d = paramInt;
      c(paramInt);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.t
 * JD-Core Version:    0.7.0.1
 */