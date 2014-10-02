package com.viber.voip.widget;

import android.content.Context;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class l
  extends FrameLayout
{
  private final int a;
  private final int b;
  private final int c;
  private final int d;
  private final int e;
  private final int f;
  private final int g;
  private int h;
  private final View[] i;
  
  public l(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    super(paramContext);
    this.b = paramInt1;
    this.a = paramInt2;
    this.e = paramInt5;
    this.f = paramInt6;
    this.c = paramInt3;
    this.d = paramInt4;
    this.g = paramInt7;
    this.i = new View[paramInt2];
    a();
  }
  
  private void a()
  {
    for (int j = getChildCount(); j < this.a; j++)
    {
      this.i[j] = inflate(getContext(), this.b, null);
      this.i[j].setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      addView(this.i[j]);
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a();
    this.h = 0;
    int j = 0;
    if (j < this.a)
    {
      View localView = getChildAt(j);
      int k;
      label36:
      int m;
      label49:
      int n;
      if (paramInt2 == 0)
      {
        k = this.e;
        if (paramInt2 != paramInt1 - 1) {
          break label123;
        }
        m = this.f;
        if (j != 0) {
          break label132;
        }
        n = this.c;
        label59:
        if (j != -1 + this.a) {
          break label141;
        }
      }
      label132:
      label141:
      for (int i1 = this.d;; i1 = this.g)
      {
        ((FrameLayout.LayoutParams)localView.getLayoutParams()).setMargins(n, k, i1, m);
        this.h += n + i1;
        j++;
        break;
        k = this.g;
        break label36;
        label123:
        m = this.g;
        break label49;
        n = this.g;
        break label59;
      }
    }
  }
  
  public View[] getViews()
  {
    return this.i;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = 0;
    int k = 0;
    while (j < getChildCount())
    {
      View localView = getChildAt(j);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      int m = localView.getMeasuredWidth();
      int n = localView.getMeasuredHeight();
      localView.layout(k + localLayoutParams.leftMargin, localLayoutParams.topMargin, k + m + localLayoutParams.leftMargin, n + localLayoutParams.topMargin);
      k += m + localLayoutParams.leftMargin + localLayoutParams.rightMargin;
      j++;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.getSize(paramInt1);
    int k = getChildCount();
    if (k == 0)
    {
      setMeasuredDimension(j, 0);
      return;
    }
    int m = this.h;
    int n = (j - m) / this.a;
    int i1 = j - n * this.a - m;
    int i2 = 0;
    if (i2 < k)
    {
      View localView = getChildAt(i2);
      if (i2 < i1) {}
      for (int i3 = 1;; i3 = 0)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(i3 + n, 1073741824), View.MeasureSpec.makeMeasureSpec(n, 1073741824));
        i2++;
        break;
      }
    }
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)getChildAt(0).getLayoutParams();
    setMeasuredDimension(j, n + localLayoutParams.bottomMargin + localLayoutParams.topMargin);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.l
 * JD-Core Version:    0.7.0.1
 */