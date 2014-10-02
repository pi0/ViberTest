package it.sephiroth.android.library.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewConfiguration;
import it.sephiroth.android.library.a.b;

public class m
  implements Runnable
{
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private final int g;
  private int h;
  
  m(AbsHListView paramAbsHListView)
  {
    this.g = ViewConfiguration.get(paramAbsHListView.getContext()).getScaledFadingEdgeLength();
  }
  
  public void a()
  {
    this.a.removeCallbacks(this);
  }
  
  void a(int paramInt)
  {
    a();
    if (this.a.aj) {
      this.a.P = new n(this, paramInt);
    }
    int i;
    do
    {
      return;
      i = this.a.getChildCount();
    } while (i == 0);
    int j = this.a.W;
    int k = -1 + (i + j);
    int m = Math.max(0, Math.min(-1 + this.a.getCount(), paramInt));
    int n;
    if (m < j)
    {
      n = 1 + (j - m);
      this.b = 2;
      if (n <= 0) {
        break label174;
      }
    }
    label174:
    for (this.f = (200 / n);; this.f = 200)
    {
      this.c = m;
      this.d = -1;
      this.e = -1;
      this.a.b.a(this);
      return;
      if (m > k)
      {
        n = 1 + (m - k);
        this.b = 1;
        break;
      }
      a(m, -1, 200);
      return;
    }
  }
  
  void a(int paramInt1, int paramInt2)
  {
    a();
    if (paramInt2 == -1) {
      a(paramInt1);
    }
    int j;
    int k;
    int m;
    int i3;
    do
    {
      int i;
      do
      {
        return;
        if (this.a.aj)
        {
          this.a.P = new o(this, paramInt1, paramInt2);
          return;
        }
        i = this.a.getChildCount();
      } while (i == 0);
      j = this.a.W;
      k = -1 + (i + j);
      m = Math.max(0, Math.min(-1 + this.a.getCount(), paramInt1));
      if (m >= j) {
        break;
      }
      i3 = k - paramInt2;
    } while (i3 < 1);
    int i1 = 1 + (j - m);
    int i2 = i3 - 1;
    if (i2 < i1)
    {
      this.b = 4;
      label137:
      if (i2 <= 0) {
        break label260;
      }
    }
    label260:
    for (this.f = (200 / i2);; this.f = 200)
    {
      this.c = m;
      this.d = paramInt2;
      this.e = -1;
      this.a.b.a(this);
      return;
      for (this.b = 2;; this.b = 1)
      {
        i2 = i1;
        break label137;
        if (m <= k) {
          break label249;
        }
        int n = paramInt2 - j;
        if (n < 1) {
          break;
        }
        i1 = 1 + (m - k);
        i2 = n - 1;
        if (i2 < i1)
        {
          this.b = 3;
          break label137;
        }
      }
      label249:
      a(m, paramInt2, 200);
      return;
    }
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = this.a.W;
    int j = -1 + (i + this.a.getChildCount());
    int k = this.a.v.left;
    int m = this.a.getWidth() - this.a.v.right;
    if ((paramInt1 < i) || (paramInt1 > j)) {
      Log.w("AbsListView", "scrollToVisible called with targetPos " + paramInt1 + " not visible [" + i + ", " + j + "]");
    }
    if ((paramInt2 < i) || (paramInt2 > j)) {
      paramInt2 = -1;
    }
    View localView1 = this.a.getChildAt(paramInt1 - i);
    int n = localView1.getLeft();
    int i1 = localView1.getRight();
    if (i1 > m) {}
    for (int i2 = i1 - m;; i2 = 0)
    {
      if (n < k) {
        i2 = n - k;
      }
      if (i2 == 0) {
        return;
      }
      int i3;
      int i4;
      int i5;
      if (paramInt2 >= 0)
      {
        View localView2 = this.a.getChildAt(paramInt2 - i);
        i3 = localView2.getLeft();
        i4 = localView2.getRight();
        i5 = Math.abs(i2);
        if ((i2 >= 0) || (i4 + i5 <= m)) {
          break label267;
        }
      }
      for (i2 = Math.max(0, i4 - m);; i2 = Math.min(0, i3 - k)) {
        label267:
        do
        {
          this.a.c(i2, paramInt3);
          return;
        } while ((i2 <= 0) || (i3 - i5 >= k));
      }
    }
  }
  
  public void run()
  {
    int i = this.a.getWidth();
    int j = this.a.W;
    switch (this.b)
    {
    default: 
    case 1: 
    case 3: 
    case 2: 
    case 4: 
      int i14;
      int i15;
      do
      {
        int i8;
        do
        {
          View localView2;
          do
          {
            int i21;
            int i22;
            do
            {
              int i18;
              do
              {
                int i23;
                int i24;
                do
                {
                  return;
                  i23 = -1 + this.a.getChildCount();
                  i24 = j + i23;
                } while (i23 < 0);
                if (i24 == this.e)
                {
                  this.a.b.a(this);
                  return;
                }
                View localView4 = this.a.getChildAt(i23);
                int i25 = localView4.getWidth();
                int i26 = i - localView4.getLeft();
                if (i24 < -1 + this.a.ao) {}
                for (int i27 = Math.max(this.a.v.right, this.g);; i27 = this.a.v.right)
                {
                  int i28 = i27 + (i25 - i26);
                  this.a.a(i28, this.f, true);
                  this.e = i24;
                  if (i24 >= this.c) {
                    break;
                  }
                  this.a.b.a(this);
                  return;
                }
                i18 = this.a.getChildCount();
              } while ((j == this.d) || (i18 <= 1) || (i18 + j >= this.a.ao));
              int i19 = j + 1;
              if (i19 == this.e)
              {
                this.a.b.a(this);
                return;
              }
              View localView3 = this.a.getChildAt(1);
              int i20 = localView3.getWidth();
              i21 = localView3.getLeft();
              i22 = Math.max(this.a.v.right, this.g);
              if (i19 < this.d)
              {
                this.a.a(Math.max(0, i21 + i20 - i22), this.f, true);
                this.e = i19;
                this.a.b.a(this);
                return;
              }
            } while (i21 <= i22);
            this.a.a(i21 - i22, this.f, true);
            return;
            if (j == this.e)
            {
              this.a.b.a(this);
              return;
            }
            localView2 = this.a.getChildAt(0);
          } while (localView2 == null);
          int i16 = localView2.getLeft();
          if (j > 0) {}
          for (int i17 = Math.max(this.g, this.a.v.left);; i17 = this.a.v.left)
          {
            this.a.a(i16 - i17, this.f, true);
            this.e = j;
            if (j <= this.c) {
              break;
            }
            this.a.b.a(this);
            return;
          }
          i8 = -2 + this.a.getChildCount();
        } while (i8 < 0);
        int i9 = j + i8;
        if (i9 == this.e)
        {
          this.a.b.a(this);
          return;
        }
        View localView1 = this.a.getChildAt(i8);
        int i10 = localView1.getWidth();
        int i11 = localView1.getLeft();
        int i12 = i - i11;
        int i13 = Math.max(this.a.v.left, this.g);
        this.e = i9;
        if (i9 > this.d)
        {
          this.a.a(-(i12 - i13), this.f, true);
          this.a.b.a(this);
          return;
        }
        i14 = i - i13;
        i15 = i11 + i10;
      } while (i14 <= i15);
      this.a.a(-(i14 - i15), this.f, true);
      return;
    }
    if (this.e == j)
    {
      this.a.b.a(this);
      return;
    }
    this.e = j;
    int k = this.a.getChildCount();
    int m = this.c;
    int n = -1 + (j + k);
    int i1;
    if (m < j) {
      i1 = 1 + (j - m);
    }
    float f1;
    for (;;)
    {
      f1 = Math.min(Math.abs(i1 / k), 1.0F);
      if (m >= j) {
        break;
      }
      int i6 = (int)(f1 * -this.a.getWidth());
      int i7 = (int)(f1 * this.f);
      this.a.a(i6, i7, true);
      this.a.b.a(this);
      return;
      i1 = 0;
      if (m > n) {
        i1 = m - n;
      }
    }
    if (m > n)
    {
      int i4 = (int)(f1 * this.a.getWidth());
      int i5 = (int)(f1 * this.f);
      this.a.a(i4, i5, true);
      this.a.b.a(this);
      return;
    }
    int i2 = this.a.getChildAt(m - j).getLeft() - this.h;
    int i3 = (int)(this.f * (Math.abs(i2) / this.a.getWidth()));
    this.a.a(i2, i3, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.m
 * JD-Core Version:    0.7.0.1
 */