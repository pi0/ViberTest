package com.viber.voip.market.b.a;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.viber.voip.widget.dslv.DragSortListView;
import com.viber.voip.widget.dslv.j;

public class g
  extends com.viber.voip.widget.dslv.a
  implements j
{
  private final c a;
  private final i b;
  private final DragSortListView c;
  private h d;
  
  public g(DragSortListView paramDragSortListView, c paramc, i parami, h paramh)
  {
    super(paramDragSortListView, 2131165891, 0, 0);
    b(false);
    this.c = paramDragSortListView;
    this.b = parami;
    this.a = paramc;
    this.d = paramh;
  }
  
  public float a(float paramFloat, long paramLong)
  {
    if (paramFloat > 0.8F) {
      return this.b.getCount() / 10.0F;
    }
    return 1.0F * paramFloat;
  }
  
  public int a(MotionEvent paramMotionEvent)
  {
    int i = super.c(paramMotionEvent);
    int j = i - this.c.getHeaderViewsCount();
    if ((i > this.a.a()) && (j >= 0) && (j < this.b.getCount()) && (this.b.a(j) != null) && (!this.b.a(j).c())) {
      i = -1;
    }
    return i;
  }
  
  public View a(int paramInt)
  {
    View localView = super.a(paramInt);
    if (localView.getParent() == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(localView.getContext());
      localLinearLayout.setBackgroundResource(2130838201);
      localView.setId(2131165296);
      localLinearLayout.addView(localView);
    }
    if (this.d != null) {
      this.d.a(localView, paramInt);
    }
    return (View)localView.getParent();
  }
  
  public void a(View paramView)
  {
    super.a(paramView.findViewById(2131165296));
    if (this.d != null) {
      this.d.a();
    }
  }
  
  public void a(View paramView, Point paramPoint1, Point paramPoint2) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.b.a.g
 * JD-Core Version:    0.7.0.1
 */