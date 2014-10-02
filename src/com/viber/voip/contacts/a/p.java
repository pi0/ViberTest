package com.viber.voip.contacts.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;

class p
  extends FrameLayout
{
  private final int b;
  private int c;
  
  public p(n paramn, Context paramContext, int paramInt)
  {
    super(paramContext);
    this.b = paramInt;
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    for (int i = getChildCount(); i < n.a(this.a); i++)
    {
      View localView2 = inflate(getContext(), this.b, null);
      localView2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      o localo = new o(this.a, localView2);
      localView2.setTag(localo);
      addView(localView2);
      localo.n.setOnLongClickListener(new q(this, localo));
      localo.n.setOnClickListener(new r(this, localo));
    }
    this.c = 0;
    int j = 0;
    if (j < n.a(this.a))
    {
      View localView1 = getChildAt(j);
      if ((n.c(this.a)) && (!n.d(this.a))) {
        ((ViewGroup.MarginLayoutParams)localView1.findViewById(2131165398).getLayoutParams()).setMargins(n.e(this.a), n.e(this.a), n.e(this.a), n.e(this.a));
      }
      int k;
      label231:
      int m;
      label254:
      int n;
      label273:
      int i1;
      label292:
      int i2;
      if ((n.c(this.a)) && (!n.d(this.a)))
      {
        k = 0;
        if ((!n.c(this.a)) || (n.d(this.a))) {
          break label392;
        }
        m = 0;
        if (!n.d(this.a)) {
          break label406;
        }
        n = n.f(this.a);
        if (!n.d(this.a)) {
          break label418;
        }
        i1 = n.h(this.a);
        if (!paramBoolean1) {
          break label430;
        }
        i2 = getResources().getDimensionPixelOffset(2131362030);
        label307:
        if (paramBoolean2) {
          m = getResources().getDimensionPixelOffset(2131362031);
        }
        if (j != 0) {
          break label437;
        }
      }
      for (;;)
      {
        if (j == -1 + n.a(this.a)) {
          k = i1;
        }
        localView1.setPadding(n, i2, k, m);
        this.c += k + n;
        j++;
        break;
        k = getResources().getDimensionPixelOffset(2131362028);
        break label231;
        label392:
        m = getResources().getDimensionPixelOffset(2131362029);
        break label254;
        label406:
        n = n.g(this.a);
        break label273;
        label418:
        i1 = n.i(this.a);
        break label292;
        label430:
        i2 = m;
        break label307;
        label437:
        n = k;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    int j = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      int k = localView.getMeasuredWidth();
      localView.layout(j, 0, j + k, localView.getMeasuredHeight());
      j += k;
      i++;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = getChildCount();
    if (j == 0)
    {
      setMeasuredDimension(i, 0);
      return;
    }
    int k = this.c;
    int m = (i - k) / n.a(this.a);
    int n = i - m * n.a(this.a) - k;
    int i1 = 0;
    if (i1 < j)
    {
      View localView = getChildAt(i1);
      int i2 = m + localView.getPaddingRight() + localView.getPaddingLeft();
      if (i1 < n) {}
      for (int i3 = 1;; i3 = 0)
      {
        int i4 = i3 + i2;
        int i5 = m + localView.getPaddingBottom() + localView.getPaddingTop();
        localView.measure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
        i1++;
        break;
      }
    }
    setMeasuredDimension(i, m + getChildAt(0).getPaddingBottom() + getChildAt(0).getPaddingTop());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.a.p
 * JD-Core Version:    0.7.0.1
 */