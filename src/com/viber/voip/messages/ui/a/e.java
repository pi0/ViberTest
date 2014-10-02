package com.viber.voip.messages.ui.a;

import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import com.viber.voip.messages.adapters.q;
import com.viber.voip.messages.ui.bp;

class e
  extends bp
{
  e(c paramc, h paramh) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    View localView;
    int i;
    if ((c.b(this.b) != null) && (c.c(this.b) != -2147483648))
    {
      localView = c.d(this.b).getChildAt(0);
      i = 0;
      if (localView != null) {
        break label144;
      }
      if ((c.e(this.b).getBottom() != c.d(this.b).getHeight()) || (-1 + c.d(this.b).getCount() != c.d(this.b).getLastVisiblePosition())) {
        break label154;
      }
      c.b(this.b).i();
    }
    for (;;)
    {
      c.a(this.b, paramInt1);
      c.b(this.b, i);
      if (h.b.equals(this.a)) {
        c.c(this.b, paramInt1);
      }
      label144:
      label154:
      do
      {
        return;
        i = localView.getTop();
        break;
      } while ((c.c(this.b) == paramInt1) && (Math.abs(c.f(this.b) - i) < c.g(this.b)));
      if ((paramInt1 > c.c(this.b)) || ((c.c(this.b) == paramInt1) && (c.f(this.b) > i))) {
        c.b(this.b).g();
      } else if ((paramInt1 < c.c(this.b)) || ((c.c(this.b) == paramInt1) && (c.f(this.b) < i))) {
        c.b(this.b).h();
      }
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    q localq = c.a(this.b);
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      localq.a(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.a.e
 * JD-Core Version:    0.7.0.1
 */