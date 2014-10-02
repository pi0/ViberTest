package it.sephiroth.android.library.widget;

import android.view.View;
import android.view.animation.Interpolator;
import it.sephiroth.android.library.a.b;

class g
  implements Runnable
{
  private final at b;
  private int c;
  private final Runnable d = new h(this);
  
  g(AbsHListView paramAbsHListView)
  {
    this.b = new at(paramAbsHListView.getContext());
  }
  
  void a()
  {
    if (this.b.a(this.a.getScrollX(), 0, 0, 0, 0, 0))
    {
      this.a.G = 6;
      this.a.invalidate();
      this.a.b.a(this);
      return;
    }
    this.a.G = -1;
    this.a.b(0);
  }
  
  void a(int paramInt)
  {
    if (paramInt < 0) {}
    for (int i = 2147483647;; i = 0)
    {
      this.c = i;
      this.b.a(null);
      this.b.a(i, 0, paramInt, 0, 0, 2147483647, 0, 2147483647);
      this.a.G = 4;
      this.a.b.a(this);
      return;
    }
  }
  
  void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i;
    at localat;
    if (paramInt1 < 0)
    {
      i = 2147483647;
      this.c = i;
      localat = this.b;
      if (!paramBoolean) {
        break label75;
      }
    }
    label75:
    for (Interpolator localInterpolator = AbsHListView.U;; localInterpolator = null)
    {
      localat.a(localInterpolator);
      this.b.a(i, 0, paramInt1, 0, paramInt2);
      this.a.G = 4;
      this.a.b.a(this);
      return;
      i = 0;
      break;
    }
  }
  
  void b()
  {
    this.a.G = -1;
    this.a.removeCallbacks(this);
    this.a.removeCallbacks(this.d);
    this.a.b(0);
    AbsHListView.k(this.a);
    this.b.e();
    if (AbsHListView.r()) {
      AbsHListView.a(this.a, 0, 0, 0, 0, 0, 0, 0, 0, false);
    }
  }
  
  void b(int paramInt)
  {
    this.b.a(null);
    this.b.a(this.a.getScrollX(), 0, paramInt, 0, -2147483648, 2147483647, 0, 0, this.a.getWidth(), 0);
    this.a.G = 6;
    this.a.invalidate();
    this.a.b.a(this);
  }
  
  void c()
  {
    this.a.postDelayed(this.d, 40L);
  }
  
  void c(int paramInt)
  {
    this.b.a(this.a.getScrollX(), 0, this.a.S);
    int i;
    int j;
    if (AbsHListView.r())
    {
      i = this.a.getOverScrollMode();
      if ((i != 0) && ((i != 1) || (AbsHListView.h(this.a)))) {
        break label126;
      }
      this.a.G = 6;
      j = (int)this.b.c();
      if (paramInt <= 0) {
        break label112;
      }
      AbsHListView.i(this.a).a(j);
    }
    for (;;)
    {
      this.a.invalidate();
      this.a.b.a(this);
      return;
      i = 2;
      break;
      label112:
      AbsHListView.j(this.a).a(j);
      continue;
      label126:
      this.a.G = -1;
      if (this.a.J != null) {
        this.a.J.a();
      }
    }
  }
  
  public void run()
  {
    int i = 1;
    boolean bool1;
    int i3;
    int i4;
    int i6;
    label199:
    View localView2;
    switch (this.a.G)
    {
    case 5: 
    default: 
      b();
    case 3: 
      do
      {
        return;
      } while (this.b.a());
    case 4: 
      if (this.a.aj) {
        this.a.e();
      }
      if ((this.a.ao == 0) || (this.a.getChildCount() == 0))
      {
        b();
        return;
      }
      at localat2 = this.b;
      bool1 = localat2.d();
      i3 = localat2.b();
      i4 = this.c - i3;
      if (i4 > 0)
      {
        this.a.B = this.a.W;
        View localView3 = this.a.getChildAt(0);
        this.a.C = localView3.getLeft();
        i6 = Math.min(-1 + (this.a.getWidth() - this.a.getPaddingRight() - this.a.getPaddingLeft()), i4);
        localView2 = this.a.getChildAt(this.a.B - this.a.W);
        if (localView2 == null) {
          break label632;
        }
      }
      break;
    }
    label421:
    label632:
    for (int i7 = localView2.getLeft();; i7 = 0)
    {
      boolean bool2 = this.a.d(i6, i6);
      if ((bool2) && (i6 != 0)) {}
      for (;;)
      {
        if (i == 0) {
          break label421;
        }
        if (localView2 != null)
        {
          int i8 = -(i6 - (localView2.getLeft() - i7));
          if (AbsHListView.r()) {
            AbsHListView.b(this.a, i8, 0, this.a.getScrollX(), 0, 0, 0, this.a.S, 0, false);
          }
        }
        if (!bool1) {
          break;
        }
        c(i6);
        return;
        int i5 = -1 + this.a.getChildCount();
        this.a.B = (i5 + this.a.W);
        View localView1 = this.a.getChildAt(i5);
        this.a.C = localView1.getLeft();
        i6 = Math.max(-(-1 + (this.a.getWidth() - this.a.getPaddingRight() - this.a.getPaddingLeft())), i4);
        break label199;
        i = 0;
      }
      if ((bool1) && (i == 0))
      {
        if (bool2) {
          this.a.invalidate();
        }
        this.c = i3;
        this.a.b.a(this);
        return;
      }
      b();
      return;
      at localat1 = this.b;
      if (localat1.d())
      {
        int j = this.a.getScrollX();
        int k = localat1.b();
        int m = k - j;
        if ((AbsHListView.r()) && (AbsHListView.c(this.a, m, 0, j, 0, 0, 0, this.a.S, 0, false)))
        {
          if ((j <= 0) && (k > 0)) {}
          for (int n = i;; n = 0)
          {
            int i1 = 0;
            if (j >= 0)
            {
              i1 = 0;
              if (k < 0) {
                i1 = i;
              }
            }
            if ((n == 0) && (i1 == 0)) {
              break;
            }
            int i2 = (int)localat1.c();
            if (i1 != 0) {
              i2 = -i2;
            }
            localat1.e();
            a(i2);
            return;
          }
          a();
          return;
        }
        this.a.invalidate();
        this.a.b.a(this);
        return;
      }
      b();
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.g
 * JD-Core Version:    0.7.0.1
 */