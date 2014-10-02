package com.viber.voip.widget.dslv;

import android.os.SystemClock;
import android.view.View;

class k
  implements Runnable
{
  private boolean b;
  private long c;
  private long d;
  private int e;
  private float f;
  private long g;
  private int h;
  private float i;
  private boolean j = false;
  
  public k(DragSortListView paramDragSortListView) {}
  
  public void a(int paramInt)
  {
    if (!this.j)
    {
      this.b = false;
      this.j = true;
      this.g = SystemClock.uptimeMillis();
      this.c = this.g;
      this.h = paramInt;
      this.a.post(this);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a.removeCallbacks(this);
      this.j = false;
      return;
    }
    this.b = true;
  }
  
  public boolean a()
  {
    return this.j;
  }
  
  public int b()
  {
    if (this.j) {
      return this.h;
    }
    return -1;
  }
  
  public void run()
  {
    if (this.b)
    {
      this.j = false;
      return;
    }
    int k = this.a.getFirstVisiblePosition();
    int m = this.a.getLastVisiblePosition();
    int n = this.a.getCount();
    int i1 = this.a.getPaddingTop();
    int i2 = this.a.getHeight() - i1 - this.a.getPaddingBottom();
    int i3 = Math.min(DragSortListView.f(this.a), DragSortListView.r(this.a) + DragSortListView.d(this.a));
    int i4 = Math.max(DragSortListView.f(this.a), DragSortListView.r(this.a) - DragSortListView.d(this.a));
    if (this.h == 0)
    {
      View localView3 = this.a.getChildAt(0);
      if (localView3 == null)
      {
        this.j = false;
        return;
      }
      if ((k == 0) && (localView3.getTop() == i1))
      {
        this.j = false;
        return;
      }
      this.i = DragSortListView.u(this.a).a((DragSortListView.s(this.a) - i4) / DragSortListView.t(this.a), this.c);
      this.d = SystemClock.uptimeMillis();
      this.f = ((float)(this.d - this.c));
      this.e = Math.round(this.i * this.f);
      if (this.e < 0) {
        break label471;
      }
      this.e = Math.min(i2, this.e);
      m = k;
    }
    for (;;)
    {
      View localView2 = this.a.getChildAt(m - k);
      int i5 = localView2.getTop() + this.e;
      if ((m == 0) && (i5 > i1)) {
        i5 = i1;
      }
      DragSortListView.b(this.a, true);
      this.a.setSelectionFromTop(m, i5 - i1);
      this.a.layoutChildren();
      this.a.invalidate();
      DragSortListView.b(this.a, false);
      DragSortListView.c(this.a, m, localView2, false);
      this.c = this.d;
      this.a.post(this);
      return;
      View localView1 = this.a.getChildAt(m - k);
      if (localView1 == null)
      {
        this.j = false;
        return;
      }
      if ((m == n - 1) && (localView1.getBottom() <= i2 + i1))
      {
        this.j = false;
        return;
      }
      this.i = (-DragSortListView.u(this.a).a((i3 - DragSortListView.v(this.a)) / DragSortListView.w(this.a), this.c));
      break;
      label471:
      this.e = Math.max(-i2, this.e);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.dslv.k
 * JD-Core Version:    0.7.0.1
 */