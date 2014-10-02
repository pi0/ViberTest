package com.viber.voip.widget.dslv;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.AbsListView.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.viber.voip.bb;

public class DragSortListView
  extends ListView
{
  private int A = 0;
  private View[] B = new View[1];
  private k C;
  private float D = 0.3333333F;
  private float E = 0.3333333F;
  private int F;
  private int G;
  private float H;
  private float I;
  private float J;
  private float K;
  private float L = 0.5F;
  private j M = new e(this);
  private int N;
  private int O;
  private int P;
  private int Q;
  private int R;
  private int S = 0;
  private boolean T = false;
  private boolean U = false;
  private p V = null;
  private MotionEvent W;
  private int Z = 0;
  private View a;
  private float aa = 0.25F;
  private float ab = 0.0F;
  private g ac;
  private boolean ad = false;
  private m ae;
  private boolean af = false;
  private boolean ag = false;
  private q ah = new q(this, 3);
  private s ai;
  private r aj;
  private n ak;
  private boolean al;
  private float am = 0.0F;
  private boolean an = false;
  private boolean ao = false;
  private Point b = new Point();
  private Point c = new Point();
  private int d;
  private boolean e = false;
  private DataSetObserver f;
  private float g = 1.0F;
  private float h = 1.0F;
  private int i;
  private int j;
  private int k;
  private boolean l = false;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private int r;
  private i s;
  private o t;
  private t u;
  private boolean v = true;
  private int w = 0;
  private int x = 1;
  private int y;
  private int z;
  
  public DragSortListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (isInEditMode()) {
      return;
    }
    int i1 = 150;
    boolean bool1;
    int i2;
    if (paramAttributeSet != null)
    {
      TypedArray localTypedArray = getContext().obtainStyledAttributes(paramAttributeSet, bb.DragSortListView, 0, 0);
      this.x = Math.max(1, localTypedArray.getDimensionPixelSize(0, 1));
      this.ad = localTypedArray.getBoolean(5, false);
      if (this.ad) {
        this.ae = new m(this);
      }
      this.g = localTypedArray.getFloat(6, this.g);
      this.h = this.g;
      this.v = localTypedArray.getBoolean(10, this.v);
      this.aa = Math.max(0.0F, Math.min(1.0F, 1.0F - localTypedArray.getFloat(7, 0.75F)));
      if (this.aa > 0.0F)
      {
        bool1 = true;
        this.l = bool1;
        setDragScrollStart(localTypedArray.getFloat(1, this.D));
        this.L = localTypedArray.getFloat(2, this.L);
        int i3 = localTypedArray.getInt(8, i1);
        int i4 = localTypedArray.getInt(9, i1);
        if (localTypedArray.getBoolean(17, true))
        {
          boolean bool2 = localTypedArray.getBoolean(12, false);
          int i5 = localTypedArray.getInt(4, 1);
          boolean bool3 = localTypedArray.getBoolean(11, true);
          int i6 = localTypedArray.getInt(13, 0);
          int i7 = localTypedArray.getResourceId(14, 0);
          int i8 = localTypedArray.getResourceId(15, 0);
          int i9 = localTypedArray.getResourceId(16, 0);
          int i10 = localTypedArray.getColor(3, -16777216);
          a locala = new a(this, i7, i6, i5, i9, i8);
          locala.b(bool2);
          locala.a(bool3);
          locala.d(i10);
          this.V = locala;
          setOnTouchListener(locala);
        }
        localTypedArray.recycle();
        i2 = i4;
        i1 = i3;
      }
    }
    for (;;)
    {
      this.C = new k(this);
      if (i1 > 0) {
        this.ai = new s(this, 0.5F, i1);
      }
      if (i2 > 0) {
        this.ak = new n(this, 0.5F, i2);
      }
      this.W = MotionEvent.obtain(0L, 0L, 3, 0.0F, 0.0F, 0.0F, 0.0F, 0, 0.0F, 0.0F, 0, 0);
      this.f = new f(this);
      return;
      bool1 = false;
      break;
      i2 = i1;
    }
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    int i1 = getHeaderViewsCount();
    int i2 = getFooterViewsCount();
    if ((paramInt1 <= i1) || (paramInt1 >= getCount() - i2)) {
      return paramInt2;
    }
    int i3 = getDividerHeight();
    int i4 = this.y - this.x;
    int i5 = d(paramInt1);
    int i6 = b(paramInt1);
    if (this.k <= this.m) {
      if ((paramInt1 == this.k) && (this.j != this.k)) {
        if (paramInt1 == this.m) {
          paramInt2 = paramInt2 + i6 - this.y;
        }
      }
    }
    while (paramInt1 <= this.m)
    {
      return paramInt2 + (this.y - i3 - d(paramInt1 - 1)) / 2;
      paramInt2 = paramInt2 + (i6 - i5) - i4;
      continue;
      if ((paramInt1 > this.k) && (paramInt1 <= this.m))
      {
        paramInt2 -= i4;
        continue;
        if ((paramInt1 > this.m) && (paramInt1 <= this.j)) {
          paramInt2 += i4;
        } else if ((paramInt1 == this.k) && (this.j != this.k)) {
          paramInt2 += i6 - i5;
        }
      }
    }
    return paramInt2 + (i5 - i3 - this.y) / 2;
  }
  
  private int a(int paramInt1, View paramView, int paramInt2, int paramInt3)
  {
    int i1 = d(paramInt1);
    int i2 = paramView.getHeight();
    int i3 = c(paramInt1, i1);
    int i5;
    int i4;
    if (paramInt1 != this.m)
    {
      i5 = i2 - i1;
      i4 = i3 - i1;
    }
    for (;;)
    {
      int i6 = this.y;
      if ((this.m != this.j) && (this.m != this.k)) {
        i6 -= this.x;
      }
      if (paramInt1 <= paramInt2)
      {
        if (paramInt1 > this.j) {
          return 0 + (i6 - i4);
        }
      }
      else
      {
        if (paramInt1 == paramInt3)
        {
          if (paramInt1 <= this.j) {
            return 0 + (i5 - i6);
          }
          if (paramInt1 == this.k) {
            return 0 + (i2 - i3);
          }
          return 0 + i5;
        }
        if (paramInt1 <= this.j) {
          return 0 - i6;
        }
        if (paramInt1 == this.k) {
          return 0 - i4;
        }
      }
      return 0;
      i4 = i3;
      i5 = i2;
    }
  }
  
  private void a(int paramInt, Canvas paramCanvas)
  {
    Drawable localDrawable = getDivider();
    int i1 = getDividerHeight();
    ViewGroup localViewGroup;
    int i2;
    int i3;
    int i4;
    int i6;
    int i5;
    if ((localDrawable != null) && (i1 != 0))
    {
      localViewGroup = (ViewGroup)getChildAt(paramInt - getFirstVisiblePosition());
      if (localViewGroup != null)
      {
        i2 = getPaddingLeft();
        i3 = getWidth() - getPaddingRight();
        i4 = localViewGroup.getChildAt(0).getHeight();
        if (paramInt <= this.m) {
          break label133;
        }
        i6 = i4 + localViewGroup.getTop();
        i5 = i6 + i1;
      }
    }
    for (;;)
    {
      paramCanvas.save();
      paramCanvas.clipRect(i2, i6, i3, i5);
      localDrawable.setBounds(i2, i6, i3, i5);
      localDrawable.draw(paramCanvas);
      paramCanvas.restore();
      return;
      label133:
      i5 = localViewGroup.getBottom() - i4;
      i6 = i5 - i1;
    }
  }
  
  private void a(int paramInt, View paramView, boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    int i1;
    if ((paramInt != this.m) && (paramInt != this.j) && (paramInt != this.k))
    {
      i1 = -2;
      if (i1 != localLayoutParams.height)
      {
        localLayoutParams.height = i1;
        paramView.setLayoutParams(localLayoutParams);
      }
      if ((paramInt == this.j) || (paramInt == this.k))
      {
        if (paramInt >= this.m) {
          break label154;
        }
        ((c)paramView).setGravity(80);
      }
    }
    for (;;)
    {
      int i2 = paramView.getVisibility();
      int i3 = this.m;
      int i4 = 0;
      if (paramInt == i3)
      {
        View localView = this.a;
        i4 = 0;
        if (localView != null) {
          i4 = 4;
        }
      }
      if (i4 != i2) {
        paramView.setVisibility(i4);
      }
      return;
      i1 = c(paramInt, paramView, paramBoolean);
      break;
      label154:
      if (paramInt > this.m) {
        ((c)paramView).setGravity(48);
      }
    }
  }
  
  private void a(View paramView)
  {
    Object localObject = paramView.getLayoutParams();
    if (localObject == null)
    {
      localObject = new AbsListView.LayoutParams(-1, -2);
      paramView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    }
    int i1 = ViewGroup.getChildMeasureSpec(this.A, getListPaddingLeft() + getListPaddingRight(), ((ViewGroup.LayoutParams)localObject).width);
    if (((ViewGroup.LayoutParams)localObject).height > 0) {}
    for (int i2 = View.MeasureSpec.makeMeasureSpec(((ViewGroup.LayoutParams)localObject).height, 1073741824);; i2 = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      paramView.measure(i1, i2);
      return;
    }
  }
  
  private int b(int paramInt)
  {
    View localView = getChildAt(paramInt - getFirstVisiblePosition());
    if (localView != null) {
      return localView.getHeight();
    }
    return c(paramInt, d(paramInt));
  }
  
  private int b(int paramInt, View paramView, boolean paramBoolean)
  {
    int i1 = this.m;
    int i2 = 0;
    if (paramInt == i1) {}
    do
    {
      return i2;
      if ((paramInt < getHeaderViewsCount()) || (paramInt >= getCount() - getFooterViewsCount())) {}
      for (;;)
      {
        ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
        if ((localLayoutParams == null) || (localLayoutParams.height <= 0)) {
          break;
        }
        return localLayoutParams.height;
        paramView = ((ViewGroup)paramView).getChildAt(0);
      }
      i2 = paramView.getHeight();
    } while ((i2 != 0) && (!paramBoolean));
    a(paramView);
    return paramView.getMeasuredHeight();
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    this.b.x = (paramInt1 - this.n);
    this.b.y = (paramInt2 - this.o);
    b(true);
    int i1 = Math.min(paramInt2, this.d + this.z);
    int i2 = Math.max(paramInt2, this.d - this.z);
    int i3 = this.C.b();
    if ((i1 > this.Q) && (i1 > this.G) && (i3 != 1))
    {
      if (i3 != -1) {
        this.C.a(true);
      }
      this.C.a(1);
    }
    do
    {
      return;
      if ((i2 < this.Q) && (i2 < this.F) && (i3 != 0))
      {
        if (i3 != -1) {
          this.C.a(true);
        }
        this.C.a(0);
        return;
      }
    } while ((i2 < this.F) || (i1 > this.G) || (!this.C.a()));
    this.C.a(true);
  }
  
  private void b(MotionEvent paramMotionEvent)
  {
    int i1 = 0xFF & paramMotionEvent.getAction();
    if (i1 != 0)
    {
      this.P = this.N;
      this.Q = this.O;
    }
    this.N = ((int)paramMotionEvent.getX());
    this.O = ((int)paramMotionEvent.getY());
    if (i1 == 0)
    {
      this.P = this.N;
      this.Q = this.O;
    }
    this.p = ((int)paramMotionEvent.getRawX() - this.N);
    this.q = ((int)paramMotionEvent.getRawY() - this.O);
  }
  
  private void b(boolean paramBoolean)
  {
    int i1 = getFirstVisiblePosition() + getChildCount() / 2;
    View localView = getChildAt(getChildCount() / 2);
    if (localView == null) {
      return;
    }
    d(i1, localView, paramBoolean);
  }
  
  private int c(int paramInt1, int paramInt2)
  {
    getDividerHeight();
    int i1;
    int i2;
    int i3;
    if ((this.l) && (this.j != this.k))
    {
      i1 = 1;
      i2 = this.y - this.x;
      i3 = (int)(this.ab * i2);
      if (paramInt1 != this.m) {
        break label117;
      }
      if (this.m != this.j) {
        break label93;
      }
      if (i1 == 0) {
        break label88;
      }
      paramInt2 = i3 + this.x;
    }
    label88:
    label93:
    label117:
    do
    {
      return paramInt2;
      i1 = 0;
      break;
      return this.y;
      if (this.m == this.k) {
        return this.y - i3;
      }
      return this.x;
      if (paramInt1 == this.j)
      {
        if (i1 != 0) {
          return paramInt2 + i3;
        }
        return paramInt2 + i2;
      }
    } while (paramInt1 != this.k);
    return paramInt2 + i2 - i3;
  }
  
  private int c(int paramInt, View paramView, boolean paramBoolean)
  {
    return c(paramInt, b(paramInt, paramView, paramBoolean));
  }
  
  private void c(int paramInt)
  {
    this.w = 1;
    if (this.u != null) {
      this.u.a(paramInt);
    }
    n();
    h();
    e();
    if (this.U)
    {
      this.w = 3;
      return;
    }
    this.w = 0;
  }
  
  private int d(int paramInt)
  {
    int i1 = this.m;
    int i2 = 0;
    if (paramInt == i1) {}
    do
    {
      return i2;
      View localView1 = getChildAt(paramInt - getFirstVisiblePosition());
      if (localView1 != null) {
        return b(paramInt, localView1, false);
      }
      i2 = this.ah.a(paramInt);
    } while (i2 != -1);
    ListAdapter localListAdapter = getAdapter();
    int i3 = localListAdapter.getItemViewType(paramInt);
    int i4 = localListAdapter.getViewTypeCount();
    if (i4 != this.B.length) {
      this.B = new View[i4];
    }
    View localView2;
    if (i3 >= 0) {
      if (this.B[i3] == null)
      {
        localView2 = localListAdapter.getView(paramInt, null, this);
        this.B[i3] = localView2;
      }
    }
    for (;;)
    {
      int i5 = b(paramInt, localView2, true);
      this.ah.a(paramInt, i5);
      return i5;
      localView2 = localListAdapter.getView(paramInt, this.B[i3], this);
      continue;
      localView2 = localListAdapter.getView(paramInt, null, this);
    }
  }
  
  private void d(int paramInt, View paramView, boolean paramBoolean)
  {
    this.af = true;
    m();
    int i1 = this.j;
    int i2 = this.k;
    boolean bool = d();
    if (bool)
    {
      k();
      setSelectionFromTop(paramInt, a(paramInt, paramView, i1, i2) + paramView.getTop() - getPaddingTop());
      layoutChildren();
    }
    if ((bool) || (paramBoolean)) {
      invalidate();
    }
    this.af = false;
  }
  
  private boolean d()
  {
    int i1 = getFirstVisiblePosition();
    int i2 = this.j;
    View localView = getChildAt(i2 - i1);
    if (localView == null)
    {
      i2 = i1 + getChildCount() / 2;
      localView = getChildAt(i2 - i1);
    }
    int i3 = localView.getTop();
    int i4 = localView.getHeight();
    int i5 = a(i2, i3);
    int i6 = getDividerHeight();
    int i22;
    int i10;
    int i11;
    int i12;
    int i23;
    label121:
    int i13;
    int i14;
    label177:
    float f2;
    int i21;
    if (this.d < i5)
    {
      i22 = i3;
      i10 = i5;
      i11 = i2;
      i12 = i5;
      if (i11 >= 0)
      {
        i11--;
        i23 = b(i11);
        if (i11 == 0) {
          i10 = i22 - i6 - i23;
        }
      }
      else
      {
        i13 = getHeaderViewsCount();
        i14 = getFooterViewsCount();
        int i15 = this.j;
        int i16 = this.k;
        float f1 = this.ab;
        if (!this.l) {
          break label569;
        }
        int i17 = Math.abs(i10 - i12);
        if (this.d >= i10) {
          break label493;
        }
        int i19 = (int)(0.5F * this.aa * i17);
        f2 = i19;
        int i20 = i12 + i19;
        i21 = i10 - i19;
        if (this.d >= i20) {
          break label508;
        }
        this.j = (i11 - 1);
        this.k = i11;
        this.ab = (0.5F * (i20 - this.d) / f2);
        label251:
        if (this.j >= i13) {
          break label584;
        }
        this.j = i13;
        this.k = i13;
        i11 = i13;
        label276:
        if ((this.j == i15) && (this.k == i16) && (this.ab == f1)) {
          break label627;
        }
      }
    }
    label491:
    label493:
    label627:
    for (boolean bool = true;; bool = false)
    {
      if (i11 != this.i)
      {
        if (this.s != null) {
          this.s.a(this.i - i13, i11 - i13);
        }
        this.i = i11;
        return true;
        i22 -= i23 + i6;
        i10 = a(i11, i22);
        if (this.d >= i10) {
          break label121;
        }
        i12 = i10;
        break;
        int i7 = getCount();
        int i8 = i4;
        int i9 = i3;
        i10 = i5;
        i11 = i2;
        for (i12 = i5;; i12 = i10)
        {
          if (i11 >= i7) {
            break label491;
          }
          if (i11 == i7 - 1)
          {
            i10 = i8 + (i9 + i6);
            break;
          }
          i9 += i6 + i8;
          i8 = b(i11 + 1);
          i10 = a(i11 + 1, i9);
          if (this.d < i10) {
            break;
          }
          i11++;
        }
        break label121;
        int i18 = i12;
        i12 = i10;
        i10 = i18;
        break label177;
        label508:
        if (this.d < i21)
        {
          this.j = i11;
          this.k = i11;
          break label251;
        }
        this.j = i11;
        this.k = (i11 + 1);
        this.ab = (0.5F * (1.0F + (i10 - this.d) / f2));
        break label251;
        this.j = i11;
        this.k = i11;
        break label251;
        if (this.k < getCount() - i14) {
          break label276;
        }
        i11 = -1 + (getCount() - i14);
        this.j = i11;
        this.k = i11;
        break label276;
      }
      return bool;
    }
  }
  
  private void e()
  {
    this.m = -1;
    this.j = -1;
    this.k = -1;
    this.i = -1;
  }
  
  private void f()
  {
    this.w = 2;
    if ((this.t != null) && (this.i >= 0) && (this.i < getCount()))
    {
      int i1 = getHeaderViewsCount();
      this.t.a_(this.m - i1, this.i - i1);
    }
    n();
    h();
    e();
    k();
    if (this.U)
    {
      this.w = 3;
      return;
    }
    this.w = 0;
  }
  
  private void g()
  {
    c(this.m - getHeaderViewsCount());
  }
  
  private void h()
  {
    int i1 = getFirstVisiblePosition();
    if (this.m < i1)
    {
      View localView = getChildAt(0);
      int i2 = 0;
      if (localView != null) {
        i2 = localView.getTop();
      }
      setSelectionFromTop(i1 - 1, i2 - getPaddingTop());
    }
  }
  
  private void i()
  {
    this.Z = 0;
    this.U = false;
    if (this.w == 3)
    {
      this.w = 4;
      a();
      this.w = 0;
    }
    this.h = this.g;
    this.an = false;
    this.ah.a();
  }
  
  private void j()
  {
    int i1 = getPaddingTop();
    int i2 = getHeight() - i1 - getPaddingBottom();
    float f1 = i2;
    this.I = (i1 + f1 * this.D);
    this.H = (i1 + f1 * (1.0F - this.E));
    this.F = ((int)this.I);
    this.G = ((int)this.H);
    this.J = (this.I - i1);
    this.K = (i1 + i2 - this.H);
  }
  
  private void k()
  {
    int i1 = getFirstVisiblePosition();
    int i2 = getLastVisiblePosition();
    int i3 = Math.max(0, getHeaderViewsCount() - i1);
    int i4 = Math.min(i2 - i1, -1 + getCount() - getFooterViewsCount() - i1);
    while (i3 <= i4)
    {
      View localView = getChildAt(i3);
      if (localView != null) {
        a(i1 + i3, localView, false);
      }
      i3++;
    }
  }
  
  private void l()
  {
    if (this.a != null)
    {
      a(this.a);
      View localView = this.a.findViewById(2131165296);
      if (localView == null) {
        break label67;
      }
      this.y = localView.getMeasuredHeight();
      this.r = ((this.a.getMeasuredHeight() - this.y) / 2);
    }
    for (;;)
    {
      this.z = (this.y / 2);
      return;
      label67:
      this.y = this.a.getMeasuredHeight();
    }
  }
  
  private void m()
  {
    if (this.V != null)
    {
      this.c.set(this.N, this.O);
      this.V.a(this.a, this.b, this.c);
    }
    int i1 = this.b.x;
    int i2 = this.b.y;
    int i3 = getPaddingLeft();
    int i9;
    if (((0x1 & this.S) == 0) && (i1 > i3))
    {
      this.b.x = i3;
      int i4 = getHeaderViewsCount();
      int i5 = getFooterViewsCount();
      int i6 = getFirstVisiblePosition();
      int i7 = getLastVisiblePosition();
      int i8 = getPaddingTop();
      if (i6 < i4) {
        i8 = getChildAt(-1 + (i4 - i6)).getBottom();
      }
      if (((0x8 & this.S) == 0) && (i6 <= this.m)) {
        i8 = Math.max(getChildAt(this.m - i6).getTop(), i8);
      }
      i9 = getHeight() - getPaddingBottom();
      if (i7 >= -1 + (getCount() - i5)) {
        i9 = getChildAt(-1 + (getCount() - i5) - i6).getBottom();
      }
      if (((0x4 & this.S) == 0) && (i7 >= this.m)) {
        i9 = Math.min(getChildAt(this.m - i6).getBottom(), i9);
      }
      if (i2 >= i8) {
        break label321;
      }
      this.b.y = i8;
    }
    for (;;)
    {
      this.d = (this.b.y + this.z);
      return;
      if (((0x2 & this.S) != 0) || (i1 >= i3)) {
        break;
      }
      this.b.x = i3;
      break;
      label321:
      if (i2 + this.y > i9) {
        this.b.y = (i9 - this.y);
      }
    }
  }
  
  private void n()
  {
    if (this.a != null)
    {
      this.a.setVisibility(8);
      if (this.V != null) {
        this.V.a(this.a);
      }
      this.a = null;
      invalidate();
    }
  }
  
  public void a()
  {
    if (this.w == 4)
    {
      this.C.a(true);
      n();
      e();
      k();
      if (this.U) {
        this.w = 3;
      }
    }
    else
    {
      return;
    }
    this.w = 0;
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 > 0.5F)
    {
      this.E = 0.5F;
      if (paramFloat1 <= 0.5F) {
        break label46;
      }
    }
    label46:
    for (this.D = 0.5F;; this.D = paramFloat1)
    {
      if (getHeight() != 0) {
        j();
      }
      return;
      this.E = paramFloat2;
      break;
    }
  }
  
  public void a(int paramInt)
  {
    this.al = false;
    a(paramInt, 0.0F);
  }
  
  public void a(int paramInt, float paramFloat)
  {
    if ((this.w == 0) || (this.w == 4))
    {
      if (this.w == 0)
      {
        this.m = (paramInt + getHeaderViewsCount());
        this.j = this.m;
        this.k = this.m;
        this.i = this.m;
        View localView = getChildAt(this.m - getFirstVisiblePosition());
        if (localView != null) {
          localView.setVisibility(4);
        }
      }
      this.w = 1;
      this.am = paramFloat;
      if (this.U) {
        switch (this.Z)
        {
        }
      }
    }
    while (this.ai != null)
    {
      this.ai.c();
      return;
      super.onTouchEvent(this.W);
      continue;
      super.onInterceptTouchEvent(this.W);
    }
    c(paramInt);
  }
  
  public boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((!this.U) || (this.V == null)) {}
    View localView;
    do
    {
      return false;
      localView = this.V.a(paramInt1);
    } while (localView == null);
    return a(paramInt1, localView, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean a(int paramInt1, View paramView, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = true;
    if ((this.w != 0) || (!this.U) || (this.a != null) || (paramView == null) || (!this.v))
    {
      bool = false;
      return bool;
    }
    if (getParent() != null) {
      getParent().requestDisallowInterceptTouchEvent(bool);
    }
    int i1 = paramInt1 + getHeaderViewsCount();
    this.j = i1;
    this.k = i1;
    this.m = i1;
    this.i = i1;
    this.w = 4;
    this.S = 0;
    this.S = (paramInt2 | this.S);
    this.a = paramView;
    l();
    this.n = paramInt3;
    this.o = paramInt4;
    this.R = this.O;
    this.b.x = (this.N - this.n);
    this.b.y = (this.O - this.o);
    View localView = getChildAt(this.m - getFirstVisiblePosition());
    if (localView != null) {
      localView.setVisibility(4);
    }
    if (this.ad) {
      this.ae.a();
    }
    switch (this.Z)
    {
    }
    for (;;)
    {
      requestLayout();
      if (this.aj == null) {
        break;
      }
      this.aj.c();
      return bool;
      super.onTouchEvent(this.W);
      continue;
      super.onInterceptTouchEvent(this.W);
    }
  }
  
  protected boolean a(MotionEvent paramMotionEvent)
  {
    switch (0xFF & paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      if (this.w == 4) {
        a();
      }
      i();
      continue;
      if (this.w == 4) {
        a(false);
      }
      i();
      continue;
      b((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    }
  }
  
  public boolean a(boolean paramBoolean)
  {
    this.al = false;
    return b(paramBoolean, 0.0F);
  }
  
  public boolean a(boolean paramBoolean, float paramFloat)
  {
    this.al = true;
    return b(paramBoolean, paramFloat);
  }
  
  public boolean b()
  {
    return this.an;
  }
  
  public boolean b(boolean paramBoolean, float paramFloat)
  {
    if (this.a != null)
    {
      this.C.a(true);
      if (paramBoolean) {
        a(this.m - getHeaderViewsCount(), paramFloat);
      }
      for (;;)
      {
        if (this.ad) {
          this.ae.d();
        }
        return true;
        if (this.ak != null) {
          this.ak.c();
        } else {
          f();
        }
      }
    }
    return false;
  }
  
  public boolean c()
  {
    return this.v;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if (this.w != 0)
    {
      if (this.j != this.m) {
        a(this.j, paramCanvas);
      }
      if ((this.k != this.j) && (this.k != this.m)) {
        a(this.k, paramCanvas);
      }
    }
    int i1;
    int i2;
    float f2;
    if (this.a != null)
    {
      i1 = this.a.getWidth();
      i2 = this.a.getHeight();
      int i3 = this.b.x;
      int i4 = getWidth();
      if (i3 < 0) {
        i3 = -i3;
      }
      if (i3 >= i4) {
        break label226;
      }
      f2 = (i4 - i3) / i4;
    }
    label226:
    for (float f1 = f2 * f2;; f1 = 0.0F)
    {
      int i5 = (int)(f1 * (255.0F * this.h));
      paramCanvas.save();
      paramCanvas.translate(this.b.x, this.b.y - this.r);
      paramCanvas.clipRect(0, 0, i1, i2);
      if (Build.VERSION.SDK_INT > 10) {
        paramCanvas.saveLayerAlpha(0.0F, 0.0F, i1, i2, i5, 31);
      }
      this.a.draw(paramCanvas);
      paramCanvas.restore();
      return;
    }
  }
  
  public float getFloatAlpha()
  {
    return this.h;
  }
  
  public ListAdapter getInputAdapter()
  {
    if (this.ac == null) {
      return null;
    }
    return this.ac.a();
  }
  
  protected void layoutChildren()
  {
    super.layoutChildren();
    if (this.a != null)
    {
      if ((this.a.isLayoutRequested()) && (!this.e)) {
        l();
      }
      this.a.layout(0, 0, this.a.getMeasuredWidth(), this.a.getMeasuredHeight());
      this.e = false;
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.ad) {
      this.ae.b();
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.v) {
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
    b(paramMotionEvent);
    this.T = true;
    int i1 = 0xFF & paramMotionEvent.getAction();
    if (i1 == 0)
    {
      if (this.w != 0)
      {
        this.ag = true;
        return true;
      }
      this.U = true;
    }
    if (this.a != null)
    {
      bool = true;
      if ((i1 == 1) || (i1 == 3)) {
        this.U = false;
      }
      return bool;
    }
    if (super.onInterceptTouchEvent(paramMotionEvent)) {
      this.an = true;
    }
    for (boolean bool = true;; bool = false) {
      switch (i1)
      {
      case 2: 
      default: 
        if (bool) {
          this.Z = 1;
        }
        break;
      case 1: 
      case 3: 
        i();
        break;
        this.Z = 2;
        break;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.a != null)
    {
      if (this.a.isLayoutRequested()) {
        l();
      }
      this.e = true;
    }
    this.A = paramInt1;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    j();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    if (this.ag) {
      this.ag = false;
    }
    do
    {
      return bool1;
      if (!this.v) {
        return super.onTouchEvent(paramMotionEvent);
      }
      boolean bool2 = this.T;
      this.T = false;
      if (!bool2) {
        b(paramMotionEvent);
      }
      if (this.w == 4)
      {
        a(paramMotionEvent);
        return true;
      }
      int i1 = this.w;
      bool1 = false;
      if (i1 == 0)
      {
        boolean bool3 = super.onTouchEvent(paramMotionEvent);
        bool1 = false;
        if (bool3) {
          bool1 = true;
        }
      }
      switch (0xFF & paramMotionEvent.getAction())
      {
      }
    } while (!bool1);
    this.Z = 1;
    return bool1;
    i();
    return bool1;
  }
  
  public void requestLayout()
  {
    if (!this.af) {
      super.requestLayout();
    }
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (paramListAdapter != null)
    {
      this.ac = new g(this, paramListAdapter);
      paramListAdapter.registerDataSetObserver(this.f);
      if ((paramListAdapter instanceof o)) {
        setDropListener((o)paramListAdapter);
      }
      if ((paramListAdapter instanceof i)) {
        setDragListener((i)paramListAdapter);
      }
      if ((paramListAdapter instanceof t)) {
        setRemoveListener((t)paramListAdapter);
      }
    }
    for (;;)
    {
      super.setAdapter(this.ac);
      return;
      this.ac = null;
    }
  }
  
  public void setDragEnabled(boolean paramBoolean)
  {
    this.v = paramBoolean;
  }
  
  public void setDragListener(i parami)
  {
    this.s = parami;
  }
  
  public void setDragScrollProfile(j paramj)
  {
    if (paramj != null) {
      this.M = paramj;
    }
  }
  
  public void setDragScrollStart(float paramFloat)
  {
    a(paramFloat, paramFloat);
  }
  
  public void setDragSortListener(l paraml)
  {
    setDropListener(paraml);
    setDragListener(paraml);
    setRemoveListener(paraml);
  }
  
  public void setDropListener(o paramo)
  {
    this.t = paramo;
  }
  
  public void setFloatAlpha(float paramFloat)
  {
    this.h = paramFloat;
  }
  
  public void setFloatViewManager(p paramp)
  {
    this.V = paramp;
  }
  
  public void setMaxScrollSpeed(float paramFloat)
  {
    this.L = paramFloat;
  }
  
  public void setRemoveListener(t paramt)
  {
    this.u = paramt;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.dslv.DragSortListView
 * JD-Core Version:    0.7.0.1
 */