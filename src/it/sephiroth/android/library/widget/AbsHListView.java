package it.sephiroth.android.library.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.SparseArrayCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnTouchModeChangeListener;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.Checkable;
import android.widget.ListAdapter;
import com.viber.voip.bb;
import java.util.ArrayList;

@TargetApi(11)
public abstract class AbsHListView
  extends u<ListAdapter>
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnTouchModeChangeListener
{
  static final Interpolator U = new LinearInterpolator();
  public static final int[] V;
  private static boolean bc;
  protected boolean A;
  protected int B;
  int C;
  int D;
  int E;
  int F;
  protected int G = -1;
  int H;
  int I;
  protected m J;
  protected int K = 0;
  protected boolean L;
  boolean M;
  protected int N;
  protected int O;
  protected Runnable P;
  protected final boolean[] Q;
  int R;
  int S;
  protected boolean T;
  private VelocityTracker a;
  private e aA;
  private Runnable aB;
  private d aC;
  private l aD;
  private Runnable aE;
  private int aF;
  private int aG;
  private boolean aH;
  private int aI;
  private int aJ;
  private Runnable aK;
  private int aL;
  private int aM;
  private float aN;
  private int aO;
  private ac aP;
  private ac aQ;
  private int aR;
  private int aS;
  private int aT;
  private boolean aU;
  private int aV;
  private int aW;
  private j aX;
  private int aY;
  private int aZ;
  private g au;
  private k av;
  private boolean aw;
  private Rect ax;
  private ContextMenu.ContextMenuInfo ay;
  private int az;
  it.sephiroth.android.library.a.b b;
  private int ba;
  private AbsHListView.SavedState bb;
  private float bd;
  protected int c = 0;
  public Object d;
  Object e;
  int f;
  protected SparseArrayCompat<Boolean> g;
  LongSparseArray<Integer> h;
  protected int i = 0;
  protected c j;
  protected ListAdapter k;
  boolean l;
  boolean m = false;
  Drawable n;
  int o = -1;
  protected Rect p = new Rect();
  protected final p q = new p(this);
  int r = 0;
  int s = 0;
  int t = 0;
  int u = 0;
  protected Rect v = new Rect();
  protected int w = 0;
  View x;
  View y;
  protected boolean z;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 9) {}
    for (boolean bool = true;; bool = false)
    {
      bc = bool;
      V = new int[] { 0 };
      return;
    }
  }
  
  public AbsHListView(Context paramContext)
  {
    super(paramContext);
    this.aw = true;
    this.N = -1;
    this.ay = null;
    this.az = -1;
    this.aI = 0;
    this.aN = 1.0F;
    this.Q = new boolean[1];
    this.aO = -1;
    this.aT = 0;
    y();
  }
  
  public AbsHListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772352);
  }
  
  public AbsHListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.aw = i1;
    this.N = -1;
    this.ay = null;
    this.az = -1;
    this.aI = 0;
    this.aN = 1.0F;
    this.Q = new boolean[i1];
    this.aO = -1;
    this.aT = 0;
    y();
    TypedArray localTypedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, bb.AbsHListView, paramInt, 0);
    Drawable localDrawable;
    boolean bool4;
    boolean bool3;
    boolean bool2;
    int i4;
    int i3;
    boolean bool1;
    int i2;
    if (localTypedArray != null)
    {
      localDrawable = localTypedArray.getDrawable(0);
      bool4 = localTypedArray.getBoolean(i1, false);
      bool3 = localTypedArray.getBoolean(6, false);
      bool2 = localTypedArray.getBoolean(2, i1);
      i4 = localTypedArray.getInt(7, 0);
      i3 = localTypedArray.getColor(3, 0);
      bool1 = localTypedArray.getBoolean(5, i1);
      i2 = localTypedArray.getInt(4, 0);
      localTypedArray.recycle();
    }
    for (;;)
    {
      if (localDrawable != null) {
        setSelector(localDrawable);
      }
      this.m = bool4;
      setStackFromRight(bool3);
      setScrollingCacheEnabled(bool2);
      setTranscriptMode(i4);
      setCacheColorHint(i3);
      setSmoothScrollbarEnabled(bool1);
      setChoiceMode(i2);
      return;
      bool2 = bool1;
      i2 = 0;
      i3 = 0;
      i4 = 0;
      bool3 = false;
      bool4 = false;
      localDrawable = null;
    }
  }
  
  private boolean A()
  {
    int i1 = getChildCount();
    if (i1 == 0) {}
    do
    {
      return true;
      if (i1 != this.ao) {
        return false;
      }
    } while ((getChildAt(0).getLeft() >= this.v.left) && (getChildAt(i1 - 1).getRight() <= getWidth() - this.v.right));
    return false;
  }
  
  private void B()
  {
    setSelector(getResources().getDrawable(17301602));
  }
  
  private void C()
  {
    if (this.a == null)
    {
      this.a = VelocityTracker.obtain();
      return;
    }
    this.a.clear();
  }
  
  private void D()
  {
    if (this.a == null) {
      this.a = VelocityTracker.obtain();
    }
  }
  
  private void E()
  {
    if (this.a != null)
    {
      this.a.recycle();
      this.a = null;
    }
  }
  
  private void F()
  {
    if ((this.M) && (!this.z) && (!this.b.a()))
    {
      setChildrenDrawnWithCacheEnabled(true);
      setChildrenDrawingCacheEnabled(true);
      this.A = true;
      this.z = true;
    }
  }
  
  private void G()
  {
    if (!this.b.a())
    {
      if (this.aK == null) {
        this.aK = new b(this);
      }
      post(this.aK);
    }
  }
  
  private void H()
  {
    if (this.aP != null)
    {
      this.aP.b();
      this.aQ.b();
    }
  }
  
  public static int a(Rect paramRect1, Rect paramRect2, int paramInt)
  {
    int i1;
    int i2;
    int i3;
    int i4;
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}.");
    case 66: 
      i1 = paramRect1.right;
      i2 = paramRect1.top + paramRect1.height() / 2;
      i3 = paramRect2.left;
      i4 = paramRect2.top + paramRect2.height() / 2;
    }
    for (;;)
    {
      int i5 = i3 - i1;
      int i6 = i4 - i2;
      return i6 * i6 + i5 * i5;
      i1 = paramRect1.left + paramRect1.width() / 2;
      i2 = paramRect1.bottom;
      i3 = paramRect2.left + paramRect2.width() / 2;
      i4 = paramRect2.top;
      continue;
      i1 = paramRect1.left;
      i2 = paramRect1.top + paramRect1.height() / 2;
      i3 = paramRect2.right;
      i4 = paramRect2.top + paramRect2.height() / 2;
      continue;
      i1 = paramRect1.left + paramRect1.width() / 2;
      i2 = paramRect1.top;
      i3 = paramRect2.left + paramRect2.width() / 2;
      i4 = paramRect2.bottom;
      continue;
      i1 = paramRect1.right + paramRect1.width() / 2;
      i2 = paramRect1.top + paramRect1.height() / 2;
      i3 = paramRect2.left + paramRect2.width() / 2;
      i4 = paramRect2.top + paramRect2.height() / 2;
    }
  }
  
  static View a(ArrayList<View> paramArrayList, int paramInt)
  {
    int i1 = paramArrayList.size();
    if (i1 > 0)
    {
      for (int i2 = 0; i2 < i1; i2++)
      {
        View localView = (View)paramArrayList.get(i2);
        if (((i)localView.getLayoutParams()).d == paramInt)
        {
          paramArrayList.remove(i2);
          return localView;
        }
      }
      return (View)paramArrayList.remove(i1 - 1);
    }
    return null;
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.p.set(paramInt1 - this.r, paramInt2 - this.s, paramInt3 + this.t, paramInt4 + this.u);
  }
  
  private void a(Canvas paramCanvas)
  {
    if (!this.p.isEmpty())
    {
      Drawable localDrawable = this.n;
      localDrawable.setBounds(this.p);
      localDrawable.draw(paramCanvas);
    }
  }
  
  private void b(MotionEvent paramMotionEvent)
  {
    int i1 = (0xFF00 & paramMotionEvent.getAction()) >> 8;
    if (paramMotionEvent.getPointerId(i1) == this.aO) {
      if (i1 != 0) {
        break label65;
      }
    }
    label65:
    for (int i2 = 1;; i2 = 0)
    {
      this.E = ((int)paramMotionEvent.getX(i2));
      this.F = ((int)paramMotionEvent.getY(i2));
      this.I = 0;
      this.aO = paramMotionEvent.getPointerId(i2);
      return;
    }
  }
  
  private boolean g(int paramInt)
  {
    int i1 = paramInt - this.E;
    int i2 = Math.abs(i1);
    int i3;
    if (getScrollX() != 0) {
      i3 = 1;
    }
    while ((i3 != 0) || (i2 > this.aJ))
    {
      F();
      if (i3 != 0)
      {
        this.G = 5;
        this.I = 0;
        Handler localHandler = getHandler();
        if (localHandler != null) {
          localHandler.removeCallbacks(this.aA);
        }
        setPressed(false);
        View localView = getChildAt(this.B - this.W);
        if (localView != null) {
          localView.setPressed(false);
        }
        b(1);
        ViewParent localViewParent = getParent();
        if (localViewParent != null) {
          localViewParent.requestDisallowInterceptTouchEvent(true);
        }
        h(paramInt);
        return true;
        i3 = 0;
      }
      else
      {
        this.G = 3;
        if (i1 > 0) {}
        for (int i4 = this.aJ;; i4 = -this.aJ)
        {
          this.I = i4;
          break;
        }
      }
    }
    return false;
  }
  
  private void h(int paramInt)
  {
    int i1 = paramInt - this.E;
    int i2 = i1 - this.I;
    int i3;
    int i12;
    label96:
    View localView2;
    if (this.H != -2147483648)
    {
      i3 = paramInt - this.H;
      if (this.G != 3) {
        break label399;
      }
      if (paramInt != this.H)
      {
        if (Math.abs(i1) > this.aJ)
        {
          ViewParent localViewParent = getParent();
          if (localViewParent != null) {
            localViewParent.requestDisallowInterceptTouchEvent(true);
          }
        }
        if (this.B < 0) {
          break label330;
        }
        i12 = this.B - this.W;
        localView2 = getChildAt(i12);
        if (localView2 == null) {
          break label786;
        }
      }
    }
    label399:
    label786:
    for (int i13 = localView2.getLeft();; i13 = 0)
    {
      if (i3 != 0) {}
      for (boolean bool = d(i2, i3);; bool = false)
      {
        View localView3 = getChildAt(i12);
        int i15;
        int i16;
        if (localView3 != null)
        {
          int i14 = localView3.getLeft();
          if (bool)
          {
            i15 = -i3 - (i14 - i13);
            if (bc) {
              overScrollBy(i15, 0, getScrollX(), 0, 0, 0, this.R, 0, true);
            }
            if ((Math.abs(this.R) == Math.abs(getScrollX())) && (this.a != null)) {
              this.a.clear();
            }
            if (!bc) {
              break label341;
            }
            i16 = getOverScrollMode();
            label236:
            if ((i16 == 0) || ((i16 == 1) && (!A())))
            {
              this.aT = 0;
              this.G = 5;
              if (i1 <= 0) {
                break label347;
              }
              this.aP.a(i15 / getWidth());
              if (!this.aQ.a()) {
                this.aQ.c();
              }
              invalidate(this.aP.a(false));
            }
          }
          label313:
          this.E = paramInt;
        }
        else
        {
          this.H = paramInt;
        }
        label330:
        label341:
        label347:
        do
        {
          return;
          i3 = i2;
          break;
          i12 = getChildCount() / 2;
          break label96;
          i16 = 2;
          break label236;
          if (i1 >= 0) {
            break label313;
          }
          this.aQ.a(i15 / getWidth());
          if (!this.aP.a()) {
            this.aP.c();
          }
          invalidate(this.aQ.a(true));
          break label313;
        } while ((this.G != 5) || (paramInt == this.H));
        int i4 = getScrollX();
        int i5 = i4 - i3;
        int i6;
        int i7;
        int i8;
        label489:
        int i11;
        label533:
        label600:
        int i9;
        View localView1;
        if (paramInt > this.H)
        {
          i6 = 1;
          if (this.aT == 0) {
            this.aT = i6;
          }
          i7 = -i3;
          if (((i5 >= 0) || (i4 < 0)) && ((i5 <= 0) || (i4 > 0))) {
            break label710;
          }
          i7 = -i4;
          i8 = i3 + i7;
          if (i7 != 0)
          {
            if (bc) {
              overScrollBy(i7, 0, getScrollX(), 0, 0, 0, this.R, 0, true);
            }
            if (!bc) {
              break label716;
            }
            i11 = getOverScrollMode();
            if ((i11 == 0) || ((i11 == 1) && (!A())))
            {
              if (i1 <= 0) {
                break label722;
              }
              this.aP.a(i7 / getWidth());
              if (!this.aQ.a()) {
                this.aQ.c();
              }
              invalidate(this.aP.a(false));
            }
          }
          if (i8 != 0)
          {
            if (getScrollX() != 0)
            {
              this.b.a(0);
              k();
            }
            d(i8, i8);
            this.G = 3;
            i9 = e(paramInt);
            this.I = 0;
            localView1 = getChildAt(i9 - this.W);
            if (localView1 == null) {
              break label774;
            }
          }
        }
        for (int i10 = localView1.getLeft();; i10 = 0)
        {
          this.C = i10;
          this.E = paramInt;
          this.B = i9;
          this.H = paramInt;
          this.aT = i6;
          return;
          i6 = -1;
          break;
          label710:
          i8 = 0;
          break label489;
          label716:
          i11 = 2;
          break label533;
          label722:
          if (i1 >= 0) {
            break label600;
          }
          this.aQ.a(i7 / getWidth());
          if (!this.aP.a()) {
            this.aP.c();
          }
          invalidate(this.aQ.a(true));
          break label600;
        }
      }
    }
  }
  
  private void y()
  {
    setClickable(true);
    setFocusableInTouchMode(true);
    setWillNotDraw(false);
    setAlwaysDrawnWithCacheEnabled(false);
    setScrollingCacheEnabled(true);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    this.aJ = localViewConfiguration.getScaledTouchSlop();
    this.aL = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.aM = localViewConfiguration.getScaledMaximumFlingVelocity();
    if (bc)
    {
      this.R = localViewConfiguration.getScaledOverscrollDistance();
      this.S = localViewConfiguration.getScaledOverflingDistance();
    }
    this.b = it.sephiroth.android.library.a.a.a(this);
  }
  
  private void z()
  {
    int i1 = this.W;
    int i2 = getChildCount();
    int i3;
    int i4;
    label23:
    View localView;
    int i5;
    if (Build.VERSION.SDK_INT >= 11)
    {
      i3 = 1;
      i4 = 0;
      if (i4 >= i2) {
        return;
      }
      localView = getChildAt(i4);
      i5 = i1 + i4;
      if (!(localView instanceof Checkable)) {
        break label91;
      }
      ((Checkable)localView).setChecked(((Boolean)this.g.get(i5, Boolean.valueOf(false))).booleanValue());
    }
    for (;;)
    {
      i4++;
      break label23;
      i3 = 0;
      break;
      label91:
      if (i3 != 0) {
        localView.setActivated(((Boolean)this.g.get(i5, Boolean.valueOf(false))).booleanValue());
      }
    }
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    Rect localRect = this.ax;
    if (localRect == null)
    {
      this.ax = new Rect();
      localRect = this.ax;
    }
    for (int i1 = -1 + getChildCount(); i1 >= 0; i1--)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        localView.getHitRect(localRect);
        if (localRect.contains(paramInt1, paramInt2)) {
          return i1 + this.W;
        }
      }
    }
    return -1;
  }
  
  @SuppressLint({"NewApi"})
  protected View a(int paramInt, boolean[] paramArrayOfBoolean)
  {
    paramArrayOfBoolean[0] = false;
    Object localObject = this.q.d(paramInt);
    if (localObject != null) {
      return localObject;
    }
    View localView1 = this.q.e(paramInt);
    View localView2;
    label107:
    ViewGroup.LayoutParams localLayoutParams;
    i locali;
    if (localView1 != null)
    {
      localView2 = this.k.getView(paramInt, localView1, this);
      if ((Build.VERSION.SDK_INT >= 16) && (localView2.getImportantForAccessibility() == 0)) {
        localView2.setImportantForAccessibility(1);
      }
      if (localView2 != localView1)
      {
        this.q.a(localView1, paramInt);
        if (this.aG == 0) {
          break label253;
        }
        localView2.setDrawingCacheBackgroundColor(this.aG);
        localObject = localView2;
        if (this.l)
        {
          localLayoutParams = ((View)localObject).getLayoutParams();
          if (localLayoutParams != null) {
            break label259;
          }
          locali = (i)generateDefaultLayoutParams();
        }
      }
    }
    for (;;)
    {
      locali.e = this.k.getItemId(paramInt);
      ((View)localObject).setLayoutParams(locali);
      if ((!this.aq.isEnabled()) || (this.aX != null)) {
        break;
      }
      this.aX = new j(this);
      return localObject;
      paramArrayOfBoolean[0] = true;
      localView2.onFinishTemporaryDetach();
      localObject = localView2;
      break label107;
      localView2 = this.k.getView(paramInt, null, this);
      if ((Build.VERSION.SDK_INT >= 16) && (localView2.getImportantForAccessibility() == 0)) {
        localView2.setImportantForAccessibility(1);
      }
      if (this.aG != 0) {
        localView2.setDrawingCacheBackgroundColor(this.aG);
      }
      label253:
      localObject = localView2;
      break label107;
      label259:
      if (!checkLayoutParams(localLayoutParams)) {
        locali = (i)generateLayoutParams(localLayoutParams);
      } else {
        locali = (i)localLayoutParams;
      }
    }
  }
  
  public i a(AttributeSet paramAttributeSet)
  {
    return new i(getContext(), paramAttributeSet);
  }
  
  public void a()
  {
    if (this.g != null) {
      this.g.clear();
    }
    if (this.h != null) {
      this.h.clear();
    }
    this.f = 0;
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (this.au == null) {
      this.au = new g(this);
    }
    int i1 = this.W;
    int i2 = getChildCount();
    int i3 = i1 + i2;
    int i4 = getPaddingLeft();
    int i5 = getWidth() - getPaddingRight();
    if ((paramInt1 == 0) || (this.ao == 0) || (i2 == 0) || ((i1 == 0) && (getChildAt(0).getLeft() == i4) && (paramInt1 < 0)) || ((i3 == this.ao) && (getChildAt(i2 - 1).getRight() == i5) && (paramInt1 > 0)))
    {
      this.au.b();
      if (this.J != null) {
        this.J.a();
      }
      return;
    }
    b(2);
    this.au.a(paramInt1, paramInt2, paramBoolean);
  }
  
  protected void a(int paramInt, View paramView)
  {
    if (paramInt != -1) {
      this.o = paramInt;
    }
    Rect localRect = this.p;
    localRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
    if ((paramView instanceof s)) {
      ((s)paramView).a(localRect);
    }
    a(localRect.left, localRect.top, localRect.right, localRect.bottom);
    boolean bool1 = this.aH;
    if (paramView.isEnabled() != bool1) {
      if (bool1) {
        break label114;
      }
    }
    label114:
    for (boolean bool2 = true;; bool2 = false)
    {
      this.aH = bool2;
      if (getSelectedItemPosition() != -1) {
        refreshDrawableState();
      }
      return;
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (this.c == 0) {}
    label287:
    label442:
    for (;;)
    {
      return;
      if ((Build.VERSION.SDK_INT >= 11) && (paramBoolean) && (this.c == 3) && (this.d == null))
      {
        if ((this.e == null) || (!((it.sephiroth.android.library.a.a.b)this.e).a())) {
          throw new IllegalStateException("AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback.");
        }
        this.d = startActionMode((it.sephiroth.android.library.a.a.b)this.e);
      }
      if ((this.c == 2) || ((Build.VERSION.SDK_INT >= 11) && (this.c == 3)))
      {
        boolean bool = ((Boolean)this.g.get(paramInt, Boolean.valueOf(false))).booleanValue();
        this.g.put(paramInt, Boolean.valueOf(paramBoolean));
        if ((this.h != null) && (this.k.hasStableIds()))
        {
          if (paramBoolean) {
            this.h.put(this.k.getItemId(paramInt), Integer.valueOf(paramInt));
          }
        }
        else
        {
          if (bool != paramBoolean)
          {
            if (!paramBoolean) {
              break label287;
            }
            this.f = (1 + this.f);
          }
          label199:
          if (this.d != null)
          {
            long l1 = this.k.getItemId(paramInt);
            ((it.sephiroth.android.library.a.a.b)this.e).a((ActionMode)this.d, paramInt, l1, paramBoolean);
          }
        }
      }
      for (;;)
      {
        if ((this.af) || (this.at)) {
          break label442;
        }
        this.aj = true;
        x();
        requestLayout();
        return;
        this.h.delete(this.k.getItemId(paramInt));
        break;
        this.f = (-1 + this.f);
        break label199;
        if ((this.h != null) && (this.k.hasStableIds())) {}
        for (int i1 = 1;; i1 = 0)
        {
          if ((paramBoolean) || (a(paramInt)))
          {
            this.g.clear();
            if (i1 != 0) {
              this.h.clear();
            }
          }
          if (!paramBoolean) {
            break label409;
          }
          this.g.put(paramInt, Boolean.valueOf(true));
          if (i1 != 0) {
            this.h.put(this.k.getItemId(paramInt), Integer.valueOf(paramInt));
          }
          this.f = 1;
          break;
        }
        if ((this.g.size() == 0) || (!((Boolean)this.g.valueAt(0)).booleanValue())) {
          this.f = 0;
        }
      }
    }
  }
  
  protected abstract void a(boolean paramBoolean);
  
  public boolean a(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i1 = a((int)paramFloat1, (int)paramFloat2);
    if (i1 != -1)
    {
      long l1 = this.k.getItemId(i1);
      View localView = getChildAt(i1 - this.W);
      if (localView != null)
      {
        this.ay = b(localView, i1, l1);
        return super.showContextMenuForChild(this);
      }
    }
    return a(paramFloat1, paramFloat2, paramInt);
  }
  
  public boolean a(int paramInt)
  {
    int i1 = this.c;
    boolean bool = false;
    if (i1 != 0)
    {
      SparseArrayCompat localSparseArrayCompat = this.g;
      bool = false;
      if (localSparseArrayCompat != null) {
        bool = ((Boolean)this.g.get(paramInt, Boolean.valueOf(false))).booleanValue();
      }
    }
    return bool;
  }
  
  @TargetApi(14)
  protected boolean a(MotionEvent paramMotionEvent)
  {
    return (Build.VERSION.SDK_INT >= 14) && ((0x2 & paramMotionEvent.getButtonState()) != 0) && (a(paramMotionEvent.getX(), paramMotionEvent.getY(), paramMotionEvent.getMetaState()));
  }
  
  public boolean a(View paramView, int paramInt, long paramLong)
  {
    int i1 = 1;
    int i2 = 0;
    label127:
    int i6;
    label142:
    label170:
    int i7;
    label178:
    int i3;
    if (this.c != 0) {
      if ((this.c == 2) || ((Build.VERSION.SDK_INT >= 11) && (this.c == 3) && (this.d != null))) {
        if (!((Boolean)this.g.get(paramInt, Boolean.valueOf(false))).booleanValue())
        {
          int i4 = i1;
          this.g.put(paramInt, Boolean.valueOf(i4));
          if ((this.h != null) && (this.k.hasStableIds()))
          {
            if (i4 == 0) {
              break label225;
            }
            this.h.put(this.k.getItemId(paramInt), Integer.valueOf(paramInt));
          }
          if (i4 == 0) {
            break label245;
          }
          this.f = (1 + this.f);
          if (this.d == null) {
            break label432;
          }
          ((it.sephiroth.android.library.a.a.b)this.e).a((ActionMode)this.d, paramInt, paramLong, i4);
          i6 = i2;
          i7 = i1;
          if (i7 != 0) {
            z();
          }
          int i9 = i6;
          i3 = i1;
          i1 = i9;
        }
      }
    }
    for (;;)
    {
      if (i1 != 0) {
        i3 |= super.a(paramView, paramInt, paramLong);
      }
      return bool;
      int i5 = 0;
      break;
      label225:
      this.h.delete(this.k.getItemId(paramInt));
      break label127;
      label245:
      this.f = (-1 + this.f);
      break label142;
      if (this.c == i1)
      {
        if (!((Boolean)this.g.get(paramInt, Boolean.valueOf(false))).booleanValue())
        {
          int i10 = i1;
          label292:
          if (i10 == 0) {
            break label387;
          }
          this.g.clear();
          this.g.put(paramInt, Boolean.valueOf(i1));
          if ((this.h != null) && (this.k.hasStableIds()))
          {
            this.h.clear();
            this.h.put(this.k.getItemId(paramInt), Integer.valueOf(paramInt));
          }
        }
        for (this.f = i1;; this.f = 0) {
          label387:
          do
          {
            i7 = i1;
            i6 = i1;
            break;
            int i11 = 0;
            break label292;
          } while ((this.g.size() != 0) && (((Boolean)this.g.valueAt(0)).booleanValue()));
        }
      }
      i6 = i1;
      int i8 = 0;
      break label178;
      label432:
      i2 = i1;
      break label170;
      boolean bool = false;
    }
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    int i1 = getChildCount();
    int i2 = this.W;
    ListAdapter localListAdapter = this.k;
    if (localListAdapter == null) {}
    for (;;)
    {
      return;
      for (int i3 = 0; i3 < i1; i3++)
      {
        View localView = getChildAt(i3);
        if (localListAdapter.isEnabled(i2 + i3)) {
          paramArrayList.add(localView);
        }
        localView.addTouchables(paramArrayList);
      }
    }
  }
  
  ContextMenu.ContextMenuInfo b(View paramView, int paramInt, long paramLong)
  {
    return new w(paramView, paramInt, paramLong);
  }
  
  protected void b()
  {
    if (this.av != null) {
      this.av.a(this, this.W, getChildCount(), this.ao);
    }
    onScrollChanged(0, 0, 0, 0);
  }
  
  void b(int paramInt)
  {
    if ((paramInt != this.aI) && (this.av != null))
    {
      this.aI = paramInt;
      this.av.a(this, paramInt);
    }
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    if (this.J == null) {
      this.J = new m(this);
    }
    this.J.a(paramInt1, paramInt2);
  }
  
  void c()
  {
    if (getChildCount() > 0)
    {
      d();
      requestLayout();
      invalidate();
    }
  }
  
  public void c(int paramInt)
  {
    int i1 = getChildCount();
    for (int i2 = 0; i2 < i1; i2++) {
      getChildAt(i2).offsetLeftAndRight(paramInt);
    }
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    a(paramInt1, paramInt2, false);
  }
  
  boolean c(View paramView, int paramInt, long paramLong)
  {
    if ((Build.VERSION.SDK_INT >= 11) && (this.c == 3))
    {
      if (this.d == null)
      {
        ActionMode localActionMode = startActionMode((it.sephiroth.android.library.a.a.b)this.e);
        this.d = localActionMode;
        if (localActionMode != null)
        {
          a(paramInt, true);
          performHapticFeedback(0);
        }
      }
      bool = true;
      return bool;
    }
    if (this.ai != null) {}
    for (boolean bool = this.ai.a(this, paramView, paramInt, paramLong);; bool = false)
    {
      if (!bool)
      {
        this.ay = b(paramView, paramInt, paramLong);
        bool = super.showContextMenuForChild(this);
      }
      if (!bool) {
        break;
      }
      performHapticFeedback(0);
      return bool;
    }
  }
  
  public boolean checkInputConnectionProxy(View paramView)
  {
    return false;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof i;
  }
  
  protected int computeHorizontalScrollExtent()
  {
    int i1 = getChildCount();
    if (i1 > 0)
    {
      if (this.aw)
      {
        int i2 = i1 * 100;
        View localView1 = getChildAt(0);
        int i3 = localView1.getLeft();
        int i4 = localView1.getWidth();
        if (i4 > 0) {
          i2 += i3 * 100 / i4;
        }
        View localView2 = getChildAt(i1 - 1);
        int i5 = localView2.getRight();
        int i6 = localView2.getWidth();
        if (i6 > 0) {
          i2 -= 100 * (i5 - getWidth()) / i6;
        }
        return i2;
      }
      return 1;
    }
    return 0;
  }
  
  protected int computeHorizontalScrollOffset()
  {
    int i1 = this.W;
    int i2 = getChildCount();
    int i3 = 0;
    if (i1 >= 0)
    {
      i3 = 0;
      if (i2 > 0)
      {
        if (!this.aw) {
          break label100;
        }
        View localView = getChildAt(0);
        int i6 = localView.getLeft();
        int i7 = localView.getWidth();
        i3 = 0;
        if (i7 > 0) {
          i3 = Math.max(i1 * 100 - i6 * 100 / i7 + (int)(100.0F * (getScrollX() / getWidth() * this.ao)), 0);
        }
      }
    }
    return i3;
    label100:
    int i4 = this.ao;
    int i5 = 0;
    if (i1 == 0) {}
    for (;;)
    {
      return (int)(i1 + i2 * (i5 / i4));
      if (i1 + i2 == i4) {
        i5 = i4;
      } else {
        i5 = i1 + i2 / 2;
      }
    }
  }
  
  protected int computeHorizontalScrollRange()
  {
    if (this.aw)
    {
      int i1 = Math.max(100 * this.ao, 0);
      if (getScrollX() != 0) {
        i1 += Math.abs((int)(100.0F * (getScrollX() / getWidth() * this.ao)));
      }
      return i1;
    }
    return this.ao;
  }
  
  protected abstract int d(int paramInt);
  
  protected void d()
  {
    removeAllViewsInLayout();
    this.W = 0;
    this.aj = false;
    this.P = null;
    this.ad = false;
    this.bb = null;
    this.ar = -1;
    this.as = -9223372036854775808L;
    setSelectedPositionInt(-1);
    setNextSelectedPositionInt(-1);
    this.K = 0;
    this.o = -1;
    this.p.setEmpty();
    invalidate();
  }
  
  boolean d(int paramInt1, int paramInt2)
  {
    int i1 = getChildCount();
    if (i1 == 0) {
      return true;
    }
    int i2 = getChildAt(0).getLeft();
    int i3 = getChildAt(i1 - 1).getRight();
    Rect localRect = this.v;
    int i4 = 0 - i2;
    int i5 = i3 - (getWidth() - 0);
    int i6 = getWidth() - getPaddingRight() - getPaddingLeft();
    int i7;
    int i8;
    label102:
    int i9;
    label125:
    int i10;
    label148:
    label171:
    int i11;
    if (paramInt1 < 0)
    {
      i7 = Math.max(-(i6 - 1), paramInt1);
      if (paramInt2 >= 0) {
        break label235;
      }
      i8 = Math.max(-(i6 - 1), paramInt2);
      i9 = this.W;
      if (i9 != 0) {
        break label248;
      }
      this.aR = (i2 - localRect.left);
      if (i9 + i1 != this.ao) {
        break label262;
      }
      this.aS = (i3 + localRect.right);
      if ((i9 != 0) || (i2 < localRect.left) || (i8 < 0)) {
        break label276;
      }
      i10 = 1;
      if ((i9 + i1 != this.ao) || (i3 > getWidth() - localRect.right) || (i8 > 0)) {
        break label282;
      }
      i11 = 1;
    }
    for (;;)
    {
      if ((i10 != 0) || (i11 != 0))
      {
        if (i8 != 0)
        {
          return true;
          i7 = Math.min(i6 - 1, paramInt1);
          break;
          label235:
          i8 = Math.min(i6 - 1, paramInt2);
          break label102;
          label248:
          this.aR = (i8 + this.aR);
          break label125;
          label262:
          this.aS = (i8 + this.aS);
          break label148;
          label276:
          i10 = 0;
          break label171;
          label282:
          i11 = 0;
          continue;
        }
        return false;
      }
    }
    boolean bool1;
    int i12;
    int i13;
    int i14;
    int i17;
    int i26;
    label349:
    View localView2;
    if (i8 < 0)
    {
      bool1 = true;
      boolean bool2 = isInTouchMode();
      if (bool2) {
        l();
      }
      i12 = getHeaderViewsCount();
      i13 = this.ao - getFooterViewsCount();
      i14 = 0;
      if (!bool1) {
        break label596;
      }
      int i25 = -i8;
      i17 = 0;
      i26 = 0;
      i14 = 0;
      if (i26 < i1)
      {
        localView2 = getChildAt(i26);
        int i27 = localView2.getRight();
        i14 = 0;
        if (i27 < i25) {
          break label548;
        }
      }
      label383:
      this.D = (i7 + this.C);
      this.at = true;
      if (i17 > 0)
      {
        detachViewsFromParent(i14, i17);
        this.q.d();
      }
      if (!awakenScrollBars()) {
        invalidate();
      }
      c(i8);
      if (bool1) {
        this.W = (i17 + this.W);
      }
      int i22 = Math.abs(i8);
      if ((i4 < i22) || (i5 < i22)) {
        a(bool1);
      }
      if ((bool2) || (this.am == -1)) {
        break label699;
      }
      int i24 = this.am - this.W;
      if ((i24 >= 0) && (i24 < getChildCount())) {
        a(this.am, getChildAt(i24));
      }
    }
    for (;;)
    {
      this.at = false;
      b();
      return false;
      bool1 = false;
      break;
      label548:
      int i28 = i17 + 1;
      int i29 = i9 + i26;
      if ((i29 >= i12) && (i29 < i13)) {
        this.q.a(localView2, i29);
      }
      i26++;
      i17 = i28;
      break label349;
      label596:
      int i15 = getWidth() - i8;
      int i16 = i1 - 1;
      i17 = 0;
      int i21;
      for (int i18 = i16;; i18 = i21)
      {
        if (i18 < 0) {
          break label697;
        }
        View localView1 = getChildAt(i18);
        if (localView1.getLeft() <= i15) {
          break;
        }
        int i19 = i17 + 1;
        int i20 = i9 + i18;
        if ((i20 >= i12) && (i20 < i13)) {
          this.q.a(localView1, i20);
        }
        i21 = i18 - 1;
        i17 = i19;
        i14 = i18;
      }
      label697:
      break label383;
      label699:
      if (this.o != -1)
      {
        int i23 = this.o - this.W;
        if ((i23 >= 0) && (i23 < getChildCount())) {
          a(-1, getChildAt(i23));
        }
      }
      else
      {
        this.p.setEmpty();
      }
    }
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    boolean bool = this.m;
    if (!bool) {
      a(paramCanvas);
    }
    super.dispatchDraw(paramCanvas);
    if (bool) {
      a(paramCanvas);
    }
  }
  
  protected void dispatchSetPressed(boolean paramBoolean) {}
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (this.aP != null)
    {
      int i1 = getScrollX();
      if (!this.aP.a())
      {
        int i7 = paramCanvas.save();
        int i8 = this.v.top + this.aV;
        int i9 = this.v.bottom + this.aW;
        int i10 = getHeight() - i8 - i9;
        int i11 = Math.min(0, i1 + this.aR);
        paramCanvas.rotate(-90.0F);
        paramCanvas.translate(i8 + -getHeight(), i11);
        this.aP.a(i10, i10);
        if (this.aP.a(paramCanvas))
        {
          this.aP.b(i11, i8);
          invalidate();
        }
        paramCanvas.restoreToCount(i7);
      }
      if (!this.aQ.a())
      {
        int i2 = paramCanvas.save();
        int i3 = this.v.left + this.aV;
        int i4 = this.v.right + this.aW;
        int i5 = getHeight() - i3 - i4;
        int i6 = Math.max(getWidth(), i1 + this.aS);
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-i3, -i6);
        this.aQ.a(i5, i5);
        if (this.aQ.a(paramCanvas)) {
          invalidate();
        }
        paramCanvas.restoreToCount(i2);
      }
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    j();
  }
  
  protected int e(int paramInt)
  {
    int i1 = getChildCount();
    int i2;
    if (i1 == 0) {
      i2 = -1;
    }
    do
    {
      return i2;
      i2 = d(paramInt);
    } while (i2 != -1);
    return -1 + (i1 + this.W);
  }
  
  protected void e() {}
  
  protected void e(int paramInt1, int paramInt2) {}
  
  protected void f()
  {
    int i1 = 1;
    int i5;
    label52:
    int i6;
    label66:
    int i3;
    if (this.x != null)
    {
      if (this.W > 0)
      {
        i5 = i1;
        if ((i5 == 0) && (getChildCount() > 0))
        {
          if (getChildAt(0).getLeft() >= this.v.left) {
            break label160;
          }
          i5 = i1;
        }
        View localView2 = this.x;
        if (i5 == 0) {
          break label166;
        }
        i6 = 0;
        localView2.setVisibility(i6);
      }
    }
    else if (this.y != null)
    {
      int i2 = getChildCount();
      if (i2 + this.W >= this.ao) {
        break label172;
      }
      i3 = i1;
      label100:
      if ((i3 != 0) || (i2 <= 0)) {
        break label188;
      }
      if (getChildAt(i2 - 1).getRight() <= getRight() - this.v.right) {
        break label177;
      }
    }
    for (;;)
    {
      label133:
      View localView1 = this.y;
      int i4 = 0;
      if (i1 != 0) {}
      for (;;)
      {
        localView1.setVisibility(i4);
        return;
        i5 = 0;
        break;
        label160:
        i5 = 0;
        break label52;
        label166:
        i6 = 4;
        break label66;
        label172:
        i3 = 0;
        break label100;
        label177:
        i1 = 0;
        break label133;
        i4 = 4;
      }
      label188:
      i1 = i3;
    }
  }
  
  boolean g()
  {
    switch (this.G)
    {
    default: 
      return false;
    }
    return true;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new i(-2, -1, 0);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new i(paramLayoutParams);
  }
  
  @ViewDebug.ExportedProperty(category="drawing")
  public int getCacheColorHint()
  {
    return this.aG;
  }
  
  public int getCheckedItemCount()
  {
    return this.f;
  }
  
  public long[] getCheckedItemIds()
  {
    int i1 = 0;
    long[] arrayOfLong;
    if ((this.c == 0) || (this.h == null) || (this.k == null)) {
      arrayOfLong = new long[0];
    }
    for (;;)
    {
      return arrayOfLong;
      LongSparseArray localLongSparseArray = this.h;
      int i2 = localLongSparseArray.size();
      arrayOfLong = new long[i2];
      while (i1 < i2)
      {
        arrayOfLong[i1] = localLongSparseArray.keyAt(i1);
        i1++;
      }
    }
  }
  
  public int getCheckedItemPosition()
  {
    if ((this.c == 1) && (this.g != null) && (this.g.size() == 1)) {
      return this.g.keyAt(0);
    }
    return -1;
  }
  
  public SparseArrayCompat<Boolean> getCheckedItemPositions()
  {
    if (this.c != 0) {
      return this.g;
    }
    return null;
  }
  
  public int getChoiceMode()
  {
    return this.c;
  }
  
  protected ContextMenu.ContextMenuInfo getContextMenuInfo()
  {
    return this.ay;
  }
  
  public void getFocusedRect(Rect paramRect)
  {
    View localView = getSelectedView();
    if ((localView != null) && (localView.getParent() == this))
    {
      localView.getFocusedRect(paramRect);
      offsetDescendantRectToMyCoords(localView, paramRect);
      return;
    }
    super.getFocusedRect(paramRect);
  }
  
  protected int getFooterViewsCount()
  {
    return 0;
  }
  
  protected int getHeaderViewsCount()
  {
    return 0;
  }
  
  protected float getHorizontalScrollFactor()
  {
    if (this.bd == 0.0F)
    {
      TypedValue localTypedValue = new TypedValue();
      if (getContext().getTheme().resolveAttribute(2130772353, localTypedValue, true)) {
        this.bd = localTypedValue.getDimension(getContext().getResources().getDisplayMetrics());
      }
    }
    else
    {
      return this.bd;
    }
    throw new IllegalStateException("Expected theme to define hlv_listPreferredItemWidth.");
  }
  
  protected int getHorizontalScrollbarHeight()
  {
    return super.getHorizontalScrollbarHeight();
  }
  
  protected float getLeftFadingEdgeStrength()
  {
    int i1 = getChildCount();
    float f1 = super.getLeftFadingEdgeStrength();
    if (i1 == 0) {}
    int i2;
    float f2;
    do
    {
      return f1;
      if (this.W > 0) {
        return 1.0F;
      }
      i2 = getChildAt(0).getLeft();
      f2 = getHorizontalFadingEdgeLength();
    } while (i2 >= getPaddingLeft());
    return -(i2 - getPaddingLeft()) / f2;
  }
  
  public int getListPaddingBottom()
  {
    return this.v.bottom;
  }
  
  public int getListPaddingLeft()
  {
    return this.v.left;
  }
  
  public int getListPaddingRight()
  {
    return this.v.right;
  }
  
  public int getListPaddingTop()
  {
    return this.v.top;
  }
  
  protected float getRightFadingEdgeStrength()
  {
    int i1 = getChildCount();
    float f1 = super.getRightFadingEdgeStrength();
    if (i1 == 0) {}
    int i2;
    int i3;
    float f2;
    do
    {
      return f1;
      if (-1 + (i1 + this.W) < -1 + this.ao) {
        return 1.0F;
      }
      i2 = getChildAt(i1 - 1).getRight();
      i3 = getWidth();
      f2 = getHorizontalFadingEdgeLength();
    } while (i2 <= i3 - getPaddingRight());
    return (i2 - i3 + getPaddingRight()) / f2;
  }
  
  @ViewDebug.ExportedProperty
  public View getSelectedView()
  {
    if ((this.ao > 0) && (this.am >= 0)) {
      return getChildAt(this.am - this.W);
    }
    return null;
  }
  
  public Drawable getSelector()
  {
    return this.n;
  }
  
  public int getSolidColor()
  {
    return this.aG;
  }
  
  public int getTranscriptMode()
  {
    return this.aF;
  }
  
  protected boolean h()
  {
    return ((hasFocus()) && (!isInTouchMode())) || (g());
  }
  
  protected void i()
  {
    if ((!isEnabled()) || (!isClickable())) {}
    for (;;)
    {
      return;
      Drawable localDrawable1 = this.n;
      Rect localRect = this.p;
      if ((localDrawable1 != null) && ((isFocused()) || (g())) && (!localRect.isEmpty()))
      {
        View localView = getChildAt(this.am - this.W);
        if (localView != null)
        {
          if (!localView.hasFocusable()) {
            localView.setPressed(true);
          }
        }
        else
        {
          setPressed(true);
          boolean bool = isLongClickable();
          Drawable localDrawable2 = localDrawable1.getCurrent();
          if ((localDrawable2 != null) && ((localDrawable2 instanceof TransitionDrawable)))
          {
            if (!bool) {
              break label179;
            }
            ((TransitionDrawable)localDrawable2).startTransition(ViewConfiguration.getLongPressTimeout());
          }
          while ((bool) && (!this.aj))
          {
            if (this.aC == null) {
              this.aC = new d(this, null);
            }
            this.aC.a();
            postDelayed(this.aC, ViewConfiguration.getLongPressTimeout());
            return;
            label179:
            ((TransitionDrawable)localDrawable2).resetTransition();
          }
        }
      }
    }
  }
  
  void j()
  {
    if (this.n != null)
    {
      if (h()) {
        this.n.setState(getDrawableState());
      }
    }
    else {
      return;
    }
    this.n.setState(V);
  }
  
  @TargetApi(11)
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (this.n != null) {
      this.n.jumpToCurrentState();
    }
  }
  
  @TargetApi(11)
  protected void k()
  {
    if ((this.b.a()) && ((getParent() instanceof View))) {
      ((View)getParent()).invalidate();
    }
  }
  
  protected void l()
  {
    if (this.am != -1)
    {
      if (this.i != 4) {
        this.N = this.am;
      }
      if ((this.ak >= 0) && (this.ak != this.am)) {
        this.N = this.ak;
      }
      setSelectedPositionInt(-1);
      setNextSelectedPositionInt(-1);
      this.K = 0;
    }
  }
  
  protected int m()
  {
    int i1 = this.am;
    if (i1 < 0) {
      i1 = this.N;
    }
    return Math.min(Math.max(0, i1), -1 + this.ao);
  }
  
  protected boolean n()
  {
    if ((this.am < 0) && (o()))
    {
      j();
      return true;
    }
    return false;
  }
  
  boolean o()
  {
    boolean bool1 = true;
    int i1 = getChildCount();
    if (i1 <= 0) {
      return false;
    }
    int i2 = this.v.left;
    int i3 = getRight() - getLeft() - this.v.right;
    int i4 = this.W;
    int i5 = this.N;
    int i9;
    boolean bool2;
    int i10;
    if ((i5 >= i4) && (i5 < i4 + i1))
    {
      View localView2 = getChildAt(i5 - this.W);
      int i26 = localView2.getLeft();
      int i27 = localView2.getRight();
      if (i26 < i2) {
        i26 = i2 + getHorizontalFadingEdgeLength();
      }
      for (;;)
      {
        i9 = i26;
        bool2 = bool1;
        this.N = -1;
        removeCallbacks(this.au);
        if (this.J != null) {
          this.J.a();
        }
        this.G = -1;
        G();
        this.Z = i9;
        i10 = b(i5, bool2);
        if ((i10 < i4) || (i10 > getLastVisiblePosition())) {
          break;
        }
        this.i = 4;
        j();
        setSelectionInt(i10);
        b();
        label204:
        b(0);
        if (i10 < 0) {
          break label482;
        }
        label214:
        return bool1;
        if (i27 > i3) {
          i26 = i3 - localView2.getMeasuredWidth() - getHorizontalFadingEdgeLength();
        }
      }
    }
    int i18;
    int i19;
    label254:
    int i20;
    int i24;
    int i23;
    if (i5 < i4)
    {
      i18 = 0;
      i19 = 0;
      if (i18 >= i1) {
        break label547;
      }
      i20 = getChildAt(i18).getLeft();
      if (i18 != 0) {
        break label533;
      }
      if ((i4 <= 0) && (i20 >= i2)) {
        break label523;
      }
      i24 = i2 + getHorizontalFadingEdgeLength();
      i23 = i20;
      label299:
      if (i20 < i24) {}
    }
    for (int i21 = i4 + i18;; i21 = i4)
    {
      i9 = i20;
      i5 = i21;
      bool2 = bool1;
      break;
      i18++;
      int i25 = i24;
      i19 = i23;
      i2 = i25;
      break label254;
      int i6 = this.ao;
      int i7 = -1 + (i4 + i1);
      int i8 = i1 - 1;
      i9 = 0;
      label366:
      if (i8 >= 0)
      {
        View localView1 = getChildAt(i8);
        int i11 = localView1.getLeft();
        int i12 = localView1.getRight();
        int i15;
        int i14;
        if (i8 == i1 - 1) {
          if ((i4 + i1 < i6) || (i12 > i3))
          {
            i15 = i3 - getHorizontalFadingEdgeLength();
            i14 = i11;
          }
        }
        for (;;)
        {
          if (i12 <= i15)
          {
            int i17 = i4 + i8;
            i9 = i11;
            i5 = i17;
            bool2 = false;
            break;
          }
          i8--;
          int i16 = i15;
          i9 = i14;
          i3 = i16;
          break label366;
          i10 = -1;
          break label204;
          bool1 = false;
          break label214;
          i15 = i3;
          i14 = i11;
          continue;
          int i13 = i3;
          i14 = i9;
          i15 = i13;
        }
      }
      label482:
      i5 = i7;
      bool2 = false;
      break;
      label523:
      i24 = i2;
      i23 = i20;
      break label299;
      label533:
      int i22 = i2;
      i23 = i19;
      i24 = i22;
      break label299;
      label547:
      i20 = i19;
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    getViewTreeObserver().addOnTouchModeChangeListener(this);
    if ((this.k != null) && (this.j == null))
    {
      this.j = new c(this);
      this.k.registerDataSetObserver(this.j);
      this.aj = true;
      this.ap = this.ao;
      this.ao = this.k.getCount();
    }
    this.T = true;
  }
  
  @SuppressLint({"Override"})
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt;
    if (this.aH) {
      arrayOfInt = super.onCreateDrawableState(paramInt);
    }
    label83:
    for (;;)
    {
      return arrayOfInt;
      int i1 = ENABLED_STATE_SET[0];
      arrayOfInt = super.onCreateDrawableState(paramInt + 1);
      int i2 = -1 + arrayOfInt.length;
      if (i2 >= 0) {
        if (arrayOfInt[i2] != i1) {}
      }
      for (;;)
      {
        if (i2 < 0) {
          break label83;
        }
        System.arraycopy(arrayOfInt, i2 + 1, arrayOfInt, i2, -1 + (arrayOfInt.length - i2));
        return arrayOfInt;
        i2--;
        break;
        i2 = -1;
      }
    }
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    return null;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.q.b();
    getViewTreeObserver().removeOnTouchModeChangeListener(this);
    if ((this.k != null) && (this.j != null))
    {
      this.k.unregisterDataSetObserver(this.j);
      this.j = null;
    }
    if (this.au != null) {
      removeCallbacks(this.au);
    }
    if (this.J != null) {
      this.J.a();
    }
    if (this.aK != null) {
      removeCallbacks(this.aK);
    }
    if (this.aD != null) {
      removeCallbacks(this.aD);
    }
    if (this.aE != null)
    {
      removeCallbacks(this.aE);
      this.aE = null;
    }
    this.T = false;
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    if ((paramBoolean) && (this.am < 0) && (!isInTouchMode()))
    {
      if ((!this.T) && (this.k != null))
      {
        this.aj = true;
        this.ap = this.ao;
        this.ao = this.k.getCount();
      }
      o();
    }
  }
  
  @TargetApi(12)
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if ((0x2 & paramMotionEvent.getSource()) != 0) {
      switch (paramMotionEvent.getAction())
      {
      }
    }
    int i1;
    do
    {
      float f1;
      do
      {
        do
        {
          return super.onGenericMotionEvent(paramMotionEvent);
        } while (this.G != -1);
        f1 = paramMotionEvent.getAxisValue(10);
      } while (f1 == 0.0F);
      i1 = (int)(f1 * getHorizontalScrollFactor());
    } while (d(i1, i1));
    return true;
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(AbsHListView.class.getName());
  }
  
  @SuppressLint({"Override"})
  @TargetApi(14)
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(AbsHListView.class.getName());
    if (isEnabled())
    {
      if (getFirstVisiblePosition() > 0) {
        paramAccessibilityNodeInfo.addAction(8192);
      }
      if (getLastVisiblePosition() < -1 + getCount()) {
        paramAccessibilityNodeInfo.addAction(4096);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    if (this.J != null) {
      this.J.a();
    }
    if (!this.T) {}
    int i3;
    do
    {
      int i4;
      do
      {
        return false;
        switch (i1 & 0xFF)
        {
        case 4: 
        case 5: 
        default: 
          return false;
        case 0: 
          i4 = this.G;
          if ((i4 == 6) || (i4 == 5))
          {
            this.I = 0;
            return true;
          }
          int i5 = (int)paramMotionEvent.getX();
          int i6 = (int)paramMotionEvent.getY();
          this.aO = paramMotionEvent.getPointerId(0);
          int i7 = d(i5);
          if ((i4 != 4) && (i7 >= 0))
          {
            this.C = getChildAt(i7 - this.W).getLeft();
            this.E = i5;
            this.F = i6;
            this.B = i7;
            this.G = 0;
            G();
          }
          this.H = -2147483648;
          C();
          this.a.addMovement(paramMotionEvent);
        }
      } while (i4 != 4);
      return true;
      switch (this.G)
      {
      default: 
        return false;
      }
      int i2 = paramMotionEvent.findPointerIndex(this.aO);
      if (i2 == -1)
      {
        this.aO = paramMotionEvent.getPointerId(0);
        i2 = 0;
      }
      i3 = (int)paramMotionEvent.getX(i2);
      D();
      this.a.addMovement(paramMotionEvent);
    } while (!g(i3));
    return true;
    this.G = -1;
    this.aO = -1;
    E();
    b(0);
    return false;
    b(paramMotionEvent);
    return false;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    switch (paramInt)
    {
    }
    do
    {
      bool = super.onKeyUp(paramInt, paramKeyEvent);
      do
      {
        return bool;
      } while (!isEnabled());
    } while ((!isClickable()) || (!isPressed()) || (this.am < 0) || (this.k == null) || (this.am >= this.k.getCount()));
    View localView = getChildAt(this.am - this.W);
    if (localView != null)
    {
      a(localView, this.am, this.an);
      localView.setPressed(false);
    }
    setPressed(false);
    return bool;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.af = true;
    if (paramBoolean)
    {
      int i1 = getChildCount();
      for (int i2 = 0; i2 < i1; i2++) {
        getChildAt(i2).forceLayout();
      }
      this.q.a();
    }
    e();
    this.af = false;
    this.O = ((paramInt3 - paramInt1) / 3);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.n == null) {
      B();
    }
    Rect localRect = this.v;
    localRect.left = (this.r + getPaddingLeft());
    localRect.top = (this.s + getPaddingTop());
    localRect.right = (this.t + getPaddingRight());
    localRect.bottom = (this.u + getPaddingBottom());
    int i2;
    int i3;
    if (this.aF == 1)
    {
      int i1 = getChildCount();
      i2 = getWidth() - getPaddingRight();
      View localView = getChildAt(i1 - 1);
      if (localView == null) {
        break label146;
      }
      i3 = localView.getRight();
      if ((i1 + this.W < this.ba) || (i3 > i2)) {
        break label153;
      }
    }
    label146:
    label153:
    for (boolean bool = true;; bool = false)
    {
      this.aU = bool;
      return;
      i3 = i2;
      break;
    }
  }
  
  protected void onOverScrolled(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (getScrollX() != paramInt1)
    {
      onScrollChanged(paramInt1, getScrollY(), getScrollX(), getScrollY());
      this.b.a(paramInt1);
      k();
      awakenScrollBars();
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    AbsHListView.SavedState localSavedState = (AbsHListView.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.aj = true;
    this.ac = localSavedState.e;
    if (localSavedState.a >= 0L)
    {
      this.ad = true;
      this.bb = localSavedState;
      this.ab = localSavedState.a;
      this.aa = localSavedState.d;
      this.Z = localSavedState.c;
      this.ae = 0;
    }
    for (;;)
    {
      if (localSavedState.i != null) {
        this.g = localSavedState.i;
      }
      if (localSavedState.j != null) {
        this.h = localSavedState.j;
      }
      this.f = localSavedState.h;
      if ((Build.VERSION.SDK_INT >= 11) && (localSavedState.g) && (this.c == 3) && (this.e != null)) {
        this.d = startActionMode((it.sephiroth.android.library.a.a.b)this.e);
      }
      requestLayout();
      return;
      if (localSavedState.b >= 0L)
      {
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        this.o = -1;
        this.ad = true;
        this.bb = localSavedState;
        this.ab = localSavedState.b;
        this.aa = localSavedState.d;
        this.Z = localSavedState.c;
        this.ae = 1;
      }
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    boolean bool = true;
    int i1 = 0;
    AbsHListView.SavedState localSavedState = new AbsHListView.SavedState(super.onSaveInstanceState());
    if (this.bb != null)
    {
      localSavedState.a = this.bb.a;
      localSavedState.b = this.bb.b;
      localSavedState.c = this.bb.c;
      localSavedState.d = this.bb.d;
      localSavedState.e = this.bb.e;
      localSavedState.f = this.bb.f;
      localSavedState.g = this.bb.g;
      localSavedState.h = this.bb.h;
      localSavedState.i = this.bb.i;
      localSavedState.j = this.bb.j;
      return localSavedState;
    }
    int i2;
    if ((getChildCount() > 0) && (this.ao > 0))
    {
      i2 = bool;
      long l1 = getSelectedItemId();
      localSavedState.a = l1;
      localSavedState.e = getWidth();
      if (l1 < 0L) {
        break label317;
      }
      localSavedState.c = this.K;
      localSavedState.d = getSelectedItemPosition();
      localSavedState.b = -1L;
      label202:
      localSavedState.f = null;
      if ((Build.VERSION.SDK_INT < 11) || (this.c != 3) || (this.d == null)) {
        break label408;
      }
    }
    LongSparseArray localLongSparseArray;
    for (;;)
    {
      localSavedState.g = bool;
      if (this.g != null) {
        localSavedState.i = new SparseArrayCompat();
      }
      if (this.h == null) {
        break label419;
      }
      localLongSparseArray = new LongSparseArray();
      int i3 = this.h.size();
      while (i1 < i3)
      {
        localLongSparseArray.put(this.h.keyAt(i1), this.h.valueAt(i1));
        i1++;
      }
      i2 = 0;
      break;
      label317:
      if ((i2 != 0) && (this.W > 0))
      {
        localSavedState.c = getChildAt(0).getLeft();
        int i4 = this.W;
        if (i4 >= this.ao) {
          i4 = -1 + this.ao;
        }
        localSavedState.d = i4;
        localSavedState.b = this.k.getItemId(i4);
        break label202;
      }
      localSavedState.c = 0;
      localSavedState.b = -1L;
      localSavedState.d = 0;
      break label202;
      label408:
      bool = false;
    }
    localSavedState.j = localLongSparseArray;
    label419:
    localSavedState.h = this.f;
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (getChildCount() > 0)
    {
      this.aj = true;
      x();
    }
  }
  
  @SuppressLint({"Override"})
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 1;
    int i2 = 0;
    if (!isEnabled())
    {
      if ((isClickable()) || (isLongClickable())) {}
      int i29;
      for (int i28 = i1;; i29 = 0)
      {
        i1 = i28;
        return i1;
      }
    }
    if (this.J != null) {
      this.J.a();
    }
    if (!this.T) {
      return false;
    }
    int i3 = paramMotionEvent.getAction();
    D();
    this.a.addMovement(paramMotionEvent);
    int i24;
    int i25;
    int i26;
    int i27;
    switch (i3 & 0xFF)
    {
    case 4: 
    default: 
      return i1;
    case 0: 
      switch (this.G)
      {
      default: 
        this.aO = paramMotionEvent.getPointerId(0);
        i24 = (int)paramMotionEvent.getX();
        i25 = (int)paramMotionEvent.getY();
        i26 = a(i24, i25);
        if (!this.aj) {
          if ((this.G != 4) && (i26 >= 0) && (((ListAdapter)getAdapter()).isEnabled(i26)))
          {
            this.G = 0;
            if (this.aB == null) {
              this.aB = new f(this);
            }
            postDelayed(this.aB, ViewConfiguration.getTapTimeout());
            i27 = i26;
          }
        }
        break;
      }
      break;
    }
    for (;;)
    {
      if (i27 >= 0) {
        this.C = getChildAt(i27 - this.W).getLeft();
      }
      this.E = i24;
      this.F = i25;
      this.B = i27;
      this.H = -2147483648;
      while ((a(paramMotionEvent)) && (this.G == 0))
      {
        removeCallbacks(this.aB);
        return i1;
        this.au.b();
        if (this.J != null) {
          this.J.a();
        }
        this.G = 5;
        this.F = ((int)paramMotionEvent.getY());
        int i23 = (int)paramMotionEvent.getX();
        this.H = i23;
        this.E = i23;
        this.I = 0;
        this.aO = paramMotionEvent.getPointerId(0);
        this.aT = 0;
      }
      if (this.G == 4)
      {
        F();
        this.G = 3;
        this.I = 0;
        i27 = d(i24);
        this.au.c();
        continue;
        int i21 = paramMotionEvent.findPointerIndex(this.aO);
        if (i21 == -1) {
          this.aO = paramMotionEvent.getPointerId(0);
        }
        for (;;)
        {
          int i22 = (int)paramMotionEvent.getX(i2);
          if (this.aj) {
            e();
          }
          switch (this.G)
          {
          case 4: 
          default: 
            return i1;
          case 0: 
          case 1: 
          case 2: 
            g(i22);
            return i1;
          }
          h(i22);
          return i1;
          switch (this.G)
          {
          }
          for (;;)
          {
            setPressed(false);
            if (this.aP != null)
            {
              this.aP.c();
              this.aQ.c();
            }
            invalidate();
            Handler localHandler2 = getHandler();
            if (localHandler2 != null) {
              localHandler2.removeCallbacks(this.aA);
            }
            E();
            this.aO = -1;
            return i1;
            int i18 = this.B;
            View localView2 = getChildAt(i18 - this.W);
            float f1 = paramMotionEvent.getX();
            l locall;
            Handler localHandler3;
            if ((f1 > this.v.left) && (f1 < getWidth() - this.v.right))
            {
              int i19 = i1;
              if ((localView2 == null) || (localView2.hasFocusable()) || (i19 == 0)) {
                break label1043;
              }
              if (this.G != 0) {
                localView2.setPressed(false);
              }
              if (this.aD == null) {
                this.aD = new l(this, null);
              }
              locall = this.aD;
              locall.a = i18;
              locall.a();
              this.N = i18;
              if ((this.G != 0) && (this.G != i1)) {
                break label1017;
              }
              localHandler3 = getHandler();
              if (localHandler3 != null) {
                if (this.G != 0) {
                  break label997;
                }
              }
            }
            label997:
            for (Object localObject = this.aB;; localObject = this.aA)
            {
              localHandler3.removeCallbacks((Runnable)localObject);
              this.i = 0;
              if ((this.aj) || (!this.k.isEnabled(i18))) {
                break label1006;
              }
              this.G = i1;
              setSelectedPositionInt(this.B);
              e();
              localView2.setPressed(i1);
              a(this.B, localView2);
              setPressed(i1);
              if (this.n != null)
              {
                Drawable localDrawable = this.n.getCurrent();
                if ((localDrawable != null) && ((localDrawable instanceof TransitionDrawable))) {
                  ((TransitionDrawable)localDrawable).resetTransition();
                }
              }
              if (this.aE != null) {
                removeCallbacks(this.aE);
              }
              this.aE = new a(this, localView2, locall);
              postDelayed(this.aE, ViewConfiguration.getPressedStateDuration());
              return i1;
              int i20 = 0;
              break;
            }
            label1006:
            this.G = -1;
            j();
            return i1;
            label1017:
            if ((!this.aj) && (this.k.isEnabled(i18))) {
              locall.run();
            }
            label1043:
            this.G = -1;
            j();
            continue;
            int i12 = getChildCount();
            if (i12 > 0)
            {
              int i13 = getChildAt(0).getLeft();
              int i14 = getChildAt(i12 - 1).getRight();
              int i15 = this.v.left;
              int i16 = getWidth() - this.v.right;
              if ((this.W == 0) && (i13 >= i15) && (i12 + this.W < this.ao) && (i14 <= getWidth() - i16))
              {
                this.G = -1;
                b(0);
              }
              else
              {
                VelocityTracker localVelocityTracker2 = this.a;
                localVelocityTracker2.computeCurrentVelocity(1000, this.aM);
                int i17 = (int)(localVelocityTracker2.getXVelocity(this.aO) * this.aN);
                if ((Math.abs(i17) > this.aL) && ((this.W != 0) || (i13 != i15 - this.R)) && ((i12 + this.W != this.ao) || (i14 != i16 + this.R)))
                {
                  if (this.au == null) {
                    this.au = new g(this);
                  }
                  b(2);
                  this.au.a(-i17);
                }
                else
                {
                  this.G = -1;
                  b(0);
                  if (this.au != null) {
                    this.au.b();
                  }
                  if (this.J != null) {
                    this.J.a();
                  }
                }
              }
            }
            else
            {
              this.G = -1;
              b(0);
              continue;
              if (this.au == null) {
                this.au = new g(this);
              }
              VelocityTracker localVelocityTracker1 = this.a;
              localVelocityTracker1.computeCurrentVelocity(1000, this.aM);
              int i11 = (int)localVelocityTracker1.getXVelocity(this.aO);
              b(2);
              if (Math.abs(i11) > this.aL) {
                this.au.b(-i11);
              } else {
                this.au.a();
              }
            }
          }
          switch (this.G)
          {
          default: 
            this.G = -1;
            setPressed(false);
            View localView1 = getChildAt(this.B - this.W);
            if (localView1 != null) {
              localView1.setPressed(false);
            }
            G();
            Handler localHandler1 = getHandler();
            if (localHandler1 != null) {
              localHandler1.removeCallbacks(this.aA);
            }
            E();
          }
          for (;;)
          {
            if (this.aP != null)
            {
              this.aP.c();
              this.aQ.c();
            }
            this.aO = -1;
            return i1;
            if (this.au == null) {
              this.au = new g(this);
            }
            this.au.a();
          }
          b(paramMotionEvent);
          int i9 = this.E;
          int i10 = a(i9, this.F);
          if (i10 >= 0)
          {
            this.C = getChildAt(i10 - this.W).getLeft();
            this.B = i10;
          }
          this.H = i9;
          return i1;
          int i4 = paramMotionEvent.getActionIndex();
          int i5 = paramMotionEvent.getPointerId(i4);
          int i6 = (int)paramMotionEvent.getX(i4);
          int i7 = (int)paramMotionEvent.getY(i4);
          this.I = 0;
          this.aO = i5;
          this.E = i6;
          this.F = i7;
          int i8 = a(i6, i7);
          if (i8 >= 0)
          {
            this.C = getChildAt(i8 - this.W).getLeft();
            this.B = i8;
          }
          this.H = i6;
          return i1;
          i2 = i21;
        }
      }
      else
      {
        i27 = i26;
      }
    }
  }
  
  public void onTouchModeChanged(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      l();
      if ((getWidth() > 0) && (getChildCount() > 0)) {
        e();
      }
      j();
    }
    do
    {
      int i1;
      do
      {
        return;
        i1 = this.G;
      } while ((i1 != 5) && (i1 != 6));
      if (this.au != null) {
        this.au.b();
      }
      if (this.J != null) {
        this.J.a();
      }
    } while (getScrollX() == 0);
    this.b.a(0);
    H();
    invalidate();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    int i1;
    if (isInTouchMode())
    {
      i1 = 0;
      if (paramBoolean) {
        break label107;
      }
      setChildrenDrawingCacheEnabled(false);
      if (this.au != null)
      {
        removeCallbacks(this.au);
        this.au.b();
        if (this.J != null) {
          this.J.a();
        }
        if (getScrollX() != 0)
        {
          this.b.a(0);
          H();
          invalidate();
        }
      }
      if (i1 == 1) {
        this.N = this.am;
      }
    }
    for (;;)
    {
      this.az = i1;
      return;
      i1 = 1;
      break;
      label107:
      if ((i1 != this.az) && (this.az != -1)) {
        if (i1 == 1)
        {
          o();
        }
        else
        {
          l();
          this.i = 0;
          e();
        }
      }
    }
  }
  
  void p()
  {
    this.g.clear();
    int i1 = 0;
    int i2 = 0;
    long l1;
    int i3;
    int i7;
    if (i1 < this.h.size())
    {
      l1 = this.h.keyAt(i1);
      i3 = ((Integer)this.h.valueAt(i1)).intValue();
      if (l1 != this.k.getItemId(i3))
      {
        i7 = Math.max(0, i3 - 20);
        int i8 = Math.min(i3 + 20, this.ao);
        label88:
        if (i7 >= i8) {
          break label295;
        }
        if (l1 == this.k.getItemId(i7))
        {
          this.g.put(i7, Boolean.valueOf(true));
          this.h.setValueAt(i1, Integer.valueOf(i7));
        }
      }
    }
    label295:
    for (int i9 = 1;; i9 = 0)
    {
      if (i9 == 0)
      {
        this.h.delete(l1);
        int i10 = i1 - 1;
        this.f = (-1 + this.f);
        if ((Build.VERSION.SDK_INT > 11) && (this.d != null) && (this.e != null)) {
          ((it.sephiroth.android.library.a.a.b)this.e).a((ActionMode)this.d, i3, l1, false);
        }
        i1 = i10;
        i2 = 1;
      }
      int i4 = i1;
      for (int i5 = i2;; i5 = i2)
      {
        int i6 = i4 + 1;
        i2 = i5;
        i1 = i6;
        break;
        i7++;
        break label88;
        this.g.put(i3, Boolean.valueOf(true));
        i4 = i1;
      }
      if ((i2 != 0) && (this.d != null) && (Build.VERSION.SDK_INT > 11)) {
        ((ActionMode)this.d).invalidate();
      }
      return;
    }
  }
  
  @TargetApi(16)
  public boolean performAccessibilityAction(int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramInt, paramBundle)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 4096: 
      if ((isEnabled()) && (getLastVisiblePosition() < -1 + getCount()))
      {
        c(getWidth() - this.v.left - this.v.right, 200);
        return true;
      }
      return false;
    }
    if ((isEnabled()) && (this.W > 0))
    {
      c(-(getWidth() - this.v.left - this.v.right), 200);
      return true;
    }
    return false;
  }
  
  protected void q()
  {
    int i1 = this.ao;
    int i2 = this.ba;
    this.ba = this.ao;
    if ((this.c != 0) && (this.k != null) && (this.k.hasStableIds())) {
      p();
    }
    this.q.c();
    if (i1 > 0)
    {
      if (this.ad)
      {
        this.ad = false;
        this.bb = null;
        if (this.aF == 2) {
          this.i = 3;
        }
      }
      do
      {
        return;
        if (this.aF == 1)
        {
          if (this.aU)
          {
            this.aU = false;
            this.i = 3;
            return;
          }
          int i8 = getChildCount();
          int i9 = getWidth() - getPaddingRight();
          View localView = getChildAt(i8 - 1);
          if (localView != null) {}
          for (int i10 = localView.getBottom(); (i8 + this.W >= i2) && (i10 <= i9); i10 = i9)
          {
            this.i = 3;
            return;
          }
          awakenScrollBars();
        }
        switch (this.ae)
        {
        }
        while (!isInTouchMode())
        {
          int i4 = getSelectedItemPosition();
          if (i4 >= i1) {
            i4 = i1 - 1;
          }
          if (i4 < 0) {
            i4 = 0;
          }
          int i5 = b(i4, true);
          if (i5 >= 0)
          {
            setNextSelectedPositionInt(i5);
            return;
            if (isInTouchMode())
            {
              this.i = 5;
              this.aa = Math.min(Math.max(0, this.aa), i1 - 1);
              return;
            }
            int i7 = w();
            if ((i7 >= 0) && (b(i7, true) == i7))
            {
              this.aa = i7;
              if (this.ac == getWidth()) {}
              for (this.i = 5;; this.i = 2)
              {
                setNextSelectedPositionInt(i7);
                return;
              }
              this.i = 5;
              this.aa = Math.min(Math.max(0, this.aa), i1 - 1);
            }
          }
          else
          {
            int i6 = b(i4, false);
            if (i6 < 0) {
              break label414;
            }
            setNextSelectedPositionInt(i6);
            return;
          }
        }
      } while (this.N >= 0);
    }
    label414:
    if (this.L) {}
    for (int i3 = 3;; i3 = 1)
    {
      this.i = i3;
      this.am = -1;
      this.an = -9223372036854775808L;
      this.ak = -1;
      this.al = -9223372036854775808L;
      this.ad = false;
      this.bb = null;
      this.o = -1;
      v();
      return;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if (paramBoolean) {
      E();
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    if ((!this.at) && (!this.af)) {
      super.requestLayout();
    }
  }
  
  public void sendAccessibilityEvent(int paramInt)
  {
    if (paramInt == 4096)
    {
      int i1 = getFirstVisiblePosition();
      int i2 = getLastVisiblePosition();
      if ((this.aY == i1) && (this.aZ == i2)) {
        return;
      }
      this.aY = i1;
      this.aZ = i2;
    }
    super.sendAccessibilityEvent(paramInt);
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (paramListAdapter != null)
    {
      this.l = this.k.hasStableIds();
      if ((this.c != 0) && (this.l) && (this.h == null)) {
        this.h = new LongSparseArray();
      }
    }
    if (this.g != null) {
      this.g.clear();
    }
    if (this.h != null) {
      this.h.clear();
    }
  }
  
  public void setCacheColorHint(int paramInt)
  {
    if (paramInt != this.aG)
    {
      this.aG = paramInt;
      int i1 = getChildCount();
      for (int i2 = 0; i2 < i1; i2++) {
        getChildAt(i2).setDrawingCacheBackgroundColor(paramInt);
      }
      this.q.f(paramInt);
    }
  }
  
  @TargetApi(11)
  public void setChoiceMode(int paramInt)
  {
    this.c = paramInt;
    if ((Build.VERSION.SDK_INT >= 11) && (this.d != null))
    {
      if (Build.VERSION.SDK_INT >= 11) {
        ((ActionMode)this.d).finish();
      }
      this.d = null;
    }
    if (this.c != 0)
    {
      if (this.g == null) {
        this.g = new SparseArrayCompat();
      }
      if ((this.h == null) && (this.k != null) && (this.k.hasStableIds())) {
        this.h = new LongSparseArray();
      }
      if ((Build.VERSION.SDK_INT >= 11) && (this.c == 3))
      {
        a();
        setLongClickable(true);
      }
    }
  }
  
  public void setDrawSelectorOnTop(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }
  
  public void setFriction(float paramFloat)
  {
    if (this.au == null) {
      this.au = new g(this);
    }
    g.a(this.au).b(paramFloat);
  }
  
  @TargetApi(11)
  public void setMultiChoiceModeListener(it.sephiroth.android.library.a.a.a parama)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      if (this.e == null) {
        this.e = new it.sephiroth.android.library.a.a.b(this);
      }
      ((it.sephiroth.android.library.a.a.b)this.e).a(parama);
      return;
    }
    Log.e("AbsListView", "setMultiChoiceModeListener not supported for this version of Android");
  }
  
  public void setOnScrollListener(k paramk)
  {
    this.av = paramk;
    b();
  }
  
  public void setOverScrollMode(int paramInt)
  {
    Context localContext;
    if (paramInt != 2) {
      if (this.aP == null)
      {
        localContext = getContext();
        this.aP = new ac(localContext, 1);
      }
    }
    for (this.aQ = new ac(localContext, 1);; this.aQ = null)
    {
      super.setOverScrollMode(paramInt);
      return;
      this.aP = null;
    }
  }
  
  public void setRecyclerListener(q paramq)
  {
    p.a(this.q, paramq);
  }
  
  public void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if ((this.M) && (!paramBoolean)) {
      G();
    }
    this.M = paramBoolean;
  }
  
  public abstract void setSelectionInt(int paramInt);
  
  public void setSelector(int paramInt)
  {
    setSelector(getResources().getDrawable(paramInt));
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    if (this.n != null)
    {
      this.n.setCallback(null);
      unscheduleDrawable(this.n);
    }
    this.n = paramDrawable;
    Rect localRect = new Rect();
    paramDrawable.getPadding(localRect);
    this.r = localRect.left;
    this.s = localRect.top;
    this.t = localRect.right;
    this.u = localRect.bottom;
    paramDrawable.setCallback(this);
    j();
  }
  
  public void setSmoothScrollbarEnabled(boolean paramBoolean)
  {
    this.aw = paramBoolean;
  }
  
  public void setStackFromRight(boolean paramBoolean)
  {
    if (this.L != paramBoolean)
    {
      this.L = paramBoolean;
      c();
    }
  }
  
  public void setTranscriptMode(int paramInt)
  {
    this.aF = paramInt;
  }
  
  public void setVelocityScale(float paramFloat)
  {
    this.aN = paramFloat;
  }
  
  public boolean showContextMenuForChild(View paramView)
  {
    int i1 = e(paramView);
    boolean bool = false;
    if (i1 >= 0)
    {
      long l1 = this.k.getItemId(i1);
      z localz = this.ai;
      bool = false;
      if (localz != null) {
        bool = this.ai.a(this, paramView, i1, l1);
      }
      if (!bool)
      {
        this.ay = b(getChildAt(i1 - this.W), i1, l1);
        bool = super.showContextMenuForChild(paramView);
      }
    }
    return bool;
  }
  
  public boolean verifyDrawable(Drawable paramDrawable)
  {
    return (this.n == paramDrawable) || (super.verifyDrawable(paramDrawable));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.AbsHListView
 * JD-Core Version:    0.7.0.1
 */