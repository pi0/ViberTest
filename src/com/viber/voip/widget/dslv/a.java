package com.viber.voip.widget.dslv;

import android.graphics.Point;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;

public class a
  extends v
  implements GestureDetector.OnGestureListener, View.OnTouchListener
{
  private int a = 0;
  private boolean b = true;
  private int c;
  private boolean d = false;
  private boolean e = false;
  private GestureDetector f;
  private GestureDetector g;
  private int h;
  private int i = -1;
  private int j = -1;
  private int k = -1;
  private int[] l = new int[2];
  private int m;
  private int n;
  private int o;
  private int p;
  private boolean q = false;
  private float r = 500.0F;
  private int s;
  private int t;
  private int u;
  private boolean v;
  private DragSortListView w;
  private int x;
  private GestureDetector.OnGestureListener y = new b(this);
  
  public a(DragSortListView paramDragSortListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this(paramDragSortListView, paramInt1, paramInt2, paramInt3, 0);
  }
  
  public a(DragSortListView paramDragSortListView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this(paramDragSortListView, paramInt1, paramInt2, paramInt3, paramInt4, 0);
  }
  
  public a(DragSortListView paramDragSortListView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    super(paramDragSortListView);
    this.w = paramDragSortListView;
    this.f = new GestureDetector(paramDragSortListView.getContext(), this);
    this.g = new GestureDetector(paramDragSortListView.getContext(), this.y);
    this.g.setIsLongpressEnabled(false);
    this.h = ViewConfiguration.get(paramDragSortListView.getContext()).getScaledTouchSlop();
    this.s = paramInt1;
    this.t = paramInt4;
    this.u = paramInt5;
    c(paramInt3);
    b(paramInt2);
  }
  
  public int a(MotionEvent paramMotionEvent)
  {
    return c(paramMotionEvent);
  }
  
  public int a(MotionEvent paramMotionEvent, int paramInt)
  {
    int i1 = (int)paramMotionEvent.getX();
    int i2 = (int)paramMotionEvent.getY();
    int i3 = this.w.pointToPosition(i1, i2);
    int i4 = this.w.getHeaderViewsCount();
    int i5 = this.w.getFooterViewsCount();
    int i6 = this.w.getCount();
    if ((i3 != -1) && (i3 >= i4) && (i3 < i6 - i5))
    {
      View localView1 = this.w.getChildAt(i3 - this.w.getFirstVisiblePosition());
      int i7 = (int)paramMotionEvent.getRawX();
      int i8 = (int)paramMotionEvent.getRawY();
      if (paramInt == 0) {}
      for (View localView2 = localView1; localView2 != null; localView2 = localView1.findViewById(paramInt))
      {
        localView2.getLocationOnScreen(this.l);
        if ((i7 <= this.l[0]) || (i8 <= this.l[1]) || (i7 >= this.l[0] + localView2.getWidth()) || (i8 >= this.l[1] + localView2.getHeight())) {
          break;
        }
        this.m = localView1.getLeft();
        this.n = localView1.getTop();
        return i3;
      }
    }
    return -1;
  }
  
  public void a(View paramView, Point paramPoint1, Point paramPoint2)
  {
    if ((this.d) && (this.e)) {
      this.x = paramPoint1.x;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool1 = this.b;
    int i1 = 0;
    if (bool1)
    {
      boolean bool2 = this.e;
      i1 = 0;
      if (!bool2) {
        i1 = 12;
      }
    }
    if ((this.d) && (this.e)) {
      i1 = 0x2 | i1 | 0x1;
    }
    this.q = this.w.a(paramInt1 - this.w.getHeaderViewsCount(), i1, paramInt2, paramInt3);
    return this.q;
  }
  
  public int b(MotionEvent paramMotionEvent)
  {
    if (this.c == 1) {
      return d(paramMotionEvent);
    }
    return -1;
  }
  
  public void b(int paramInt)
  {
    this.a = paramInt;
  }
  
  public void b(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public int c(MotionEvent paramMotionEvent)
  {
    return a(paramMotionEvent, this.s);
  }
  
  public void c(int paramInt)
  {
    this.c = paramInt;
  }
  
  public int d(MotionEvent paramMotionEvent)
  {
    return a(paramMotionEvent, this.u);
  }
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    if ((this.d) && (this.c == 0)) {
      this.k = a(paramMotionEvent, this.t);
    }
    this.i = a(paramMotionEvent);
    if ((this.i != -1) && (this.a == 0)) {
      a(this.i, (int)paramMotionEvent.getX() - this.m, (int)paramMotionEvent.getY() - this.n);
    }
    this.e = false;
    this.v = true;
    this.x = 0;
    this.j = b(paramMotionEvent);
    return true;
  }
  
  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onLongPress(MotionEvent paramMotionEvent)
  {
    if ((this.i != -1) && (this.a == 2))
    {
      this.w.performHapticFeedback(0);
      a(this.i, this.o - this.m, this.p - this.n);
    }
  }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    int i1 = (int)paramMotionEvent1.getX();
    int i2 = (int)paramMotionEvent1.getY();
    int i3 = (int)paramMotionEvent2.getX();
    int i4 = (int)paramMotionEvent2.getY();
    int i5 = i3 - this.m;
    int i6 = i4 - this.n;
    if ((this.v) && (!this.q) && ((this.i != -1) || (this.j != -1)))
    {
      if (this.i == -1) {
        break label178;
      }
      if ((this.a != 1) || (Math.abs(i4 - i2) <= this.h) || (!this.b)) {
        break label129;
      }
      a(this.i, i5, i6);
    }
    label129:
    label178:
    do
    {
      do
      {
        do
        {
          return false;
        } while ((this.a == 0) || (Math.abs(i3 - i1) <= this.h) || (!this.d));
        this.e = true;
        a(this.j, i5, i6);
        return false;
      } while (this.j == -1);
      if ((Math.abs(i3 - i1) > this.h) && (this.d))
      {
        this.e = true;
        a(this.j, i5, i6);
        return false;
      }
    } while (Math.abs(i4 - i2) <= this.h);
    this.v = false;
    return false;
  }
  
  public void onShowPress(MotionEvent paramMotionEvent) {}
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    if ((this.d) && (this.c == 0) && (this.k != -1)) {
      this.w.a(this.k - this.w.getHeaderViewsCount());
    }
    return true;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((!this.w.c()) || (this.w.b())) {
      return false;
    }
    this.f.onTouchEvent(paramMotionEvent);
    if ((this.d) && (this.q) && (this.c == 1)) {
      this.g.onTouchEvent(paramMotionEvent);
    }
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 2: 
    default: 
      return false;
    case 0: 
      this.o = ((int)paramMotionEvent.getX());
      this.p = ((int)paramMotionEvent.getY());
      return false;
    case 1: 
      if ((this.d) && (this.e)) {
        if (this.x < 0) {
          break label185;
        }
      }
      break;
    }
    label185:
    for (int i1 = this.x;; i1 = -this.x)
    {
      if (i1 > this.w.getWidth() / 2) {
        this.w.a(true, 0.0F);
      }
      this.e = false;
      this.q = false;
      return false;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.dslv.a
 * JD-Core Version:    0.7.0.1
 */