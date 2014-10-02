package it.sephiroth.android.library.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewDebug.CapturedViewProperty;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Adapter;

public abstract class u<T extends Adapter>
  extends ViewGroup
{
  @ViewDebug.ExportedProperty(category="scrolling")
  protected int W = 0;
  protected int Z;
  private int a;
  protected int aa;
  protected long ab = -9223372036854775808L;
  protected long ac;
  protected boolean ad = false;
  int ae;
  protected boolean af = false;
  aa ag;
  y ah;
  z ai;
  public boolean aj;
  @ViewDebug.ExportedProperty(category="list")
  protected int ak = -1;
  protected long al = -9223372036854775808L;
  @ViewDebug.ExportedProperty(category="list")
  protected int am = -1;
  protected long an = -9223372036854775808L;
  @ViewDebug.ExportedProperty(category="list")
  protected int ao;
  protected int ap;
  AccessibilityManager aq;
  protected int ar = -1;
  protected long as = -9223372036854775808L;
  protected boolean at = false;
  private View b;
  private boolean c;
  private boolean d;
  private u<T>.ab e;
  
  public u(Context paramContext)
  {
    super(paramContext);
  }
  
  public u(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  @TargetApi(16)
  public u(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if ((Build.VERSION.SDK_INT >= 16) && (getImportantForAccessibility() == 0)) {
      setImportantForAccessibility(1);
    }
    if (!isInEditMode()) {
      this.aq = ((AccessibilityManager)getContext().getSystemService("accessibility"));
    }
  }
  
  private void a()
  {
    if (this.ag == null) {
      return;
    }
    int i = getSelectedItemPosition();
    if (i >= 0)
    {
      View localView = getSelectedView();
      this.ag.a(this, localView, i, getAdapter().getItemId(i));
      return;
    }
    this.ag.a(this);
  }
  
  @SuppressLint({"WrongCall"})
  private void a(boolean paramBoolean)
  {
    if (s()) {
      paramBoolean = false;
    }
    if (paramBoolean)
    {
      if (this.b != null)
      {
        this.b.setVisibility(0);
        setVisibility(8);
      }
      for (;;)
      {
        if (this.aj) {
          onLayout(false, getLeft(), getTop(), getRight(), getBottom());
        }
        return;
        setVisibility(0);
      }
    }
    if (this.b != null) {
      this.b.setVisibility(8);
    }
    setVisibility(0);
  }
  
  private void b()
  {
    if (!this.aq.isEnabled()) {}
    while (getSelectedItemPosition() < 0) {
      return;
    }
    sendAccessibilityEvent(4);
  }
  
  private boolean c()
  {
    Adapter localAdapter = getAdapter();
    boolean bool = false;
    if (localAdapter != null)
    {
      int i = localAdapter.getCount();
      bool = false;
      if (i > 0) {
        if (getFirstVisiblePosition() <= 0)
        {
          int j = getLastVisiblePosition();
          int k = i - 1;
          bool = false;
          if (j >= k) {}
        }
        else
        {
          bool = true;
        }
      }
    }
    return bool;
  }
  
  public boolean a(View paramView, int paramInt, long paramLong)
  {
    y localy = this.ah;
    boolean bool = false;
    if (localy != null)
    {
      playSoundEffect(0);
      if (paramView != null) {
        paramView.sendAccessibilityEvent(1);
      }
      this.ah.a(this, paramView, paramInt, paramLong);
      bool = true;
    }
    return bool;
  }
  
  public void addView(View paramView)
  {
    throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
  }
  
  public void addView(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
  }
  
  protected int b(int paramInt, boolean paramBoolean)
  {
    return paramInt;
  }
  
  protected boolean canAnimate()
  {
    return (super.canAnimate()) && (this.ao > 0);
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    View localView = getSelectedView();
    return (localView != null) && (localView.getVisibility() == 0) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent));
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public int e(View paramView)
  {
    try
    {
      for (;;)
      {
        View localView = (View)paramView.getParent();
        boolean bool = localView.equals(this);
        if (bool) {
          break;
        }
        paramView = localView;
      }
      i = getChildCount();
    }
    catch (ClassCastException localClassCastException)
    {
      return -1;
    }
    int i;
    for (int j = 0; j < i; j++) {
      if (getChildAt(j).equals(paramView)) {
        return j + this.W;
      }
    }
    return -1;
  }
  
  public long f(int paramInt)
  {
    Adapter localAdapter = getAdapter();
    if ((localAdapter == null) || (paramInt < 0)) {
      return -9223372036854775808L;
    }
    return localAdapter.getItemId(paramInt);
  }
  
  public abstract T getAdapter();
  
  @ViewDebug.CapturedViewProperty
  public int getCount()
  {
    return this.ao;
  }
  
  public View getEmptyView()
  {
    return this.b;
  }
  
  public int getFirstVisiblePosition()
  {
    return this.W;
  }
  
  public int getLastVisiblePosition()
  {
    return -1 + (this.W + getChildCount());
  }
  
  public final y getOnItemClickListener()
  {
    return this.ah;
  }
  
  public final z getOnItemLongClickListener()
  {
    return this.ai;
  }
  
  public final aa getOnItemSelectedListener()
  {
    return this.ag;
  }
  
  public Object getSelectedItem()
  {
    Adapter localAdapter = getAdapter();
    int i = getSelectedItemPosition();
    if ((localAdapter != null) && (localAdapter.getCount() > 0) && (i >= 0)) {
      return localAdapter.getItem(i);
    }
    return null;
  }
  
  @ViewDebug.CapturedViewProperty
  public long getSelectedItemId()
  {
    return this.al;
  }
  
  @ViewDebug.CapturedViewProperty
  public int getSelectedItemPosition()
  {
    return this.ak;
  }
  
  public abstract View getSelectedView();
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.e);
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(u.class.getName());
    paramAccessibilityEvent.setScrollable(c());
    View localView = getSelectedView();
    if (localView != null) {
      paramAccessibilityEvent.setEnabled(localView.isEnabled());
    }
    paramAccessibilityEvent.setCurrentItemIndex(getSelectedItemPosition());
    paramAccessibilityEvent.setFromIndex(getFirstVisiblePosition());
    paramAccessibilityEvent.setToIndex(getLastVisiblePosition());
    paramAccessibilityEvent.setItemCount(getCount());
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(u.class.getName());
    paramAccessibilityNodeInfo.setScrollable(c());
    View localView = getSelectedView();
    if (localView != null) {
      paramAccessibilityNodeInfo.setEnabled(localView.isEnabled());
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a = getWidth();
  }
  
  @TargetApi(14)
  public boolean onRequestSendAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (super.onRequestSendAccessibilityEvent(paramView, paramAccessibilityEvent))
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
      onInitializeAccessibilityEvent(localAccessibilityEvent);
      paramView.dispatchPopulateAccessibilityEvent(localAccessibilityEvent);
      paramAccessibilityEvent.appendRecord(localAccessibilityEvent);
      return true;
    }
    return false;
  }
  
  void q()
  {
    int i = this.ao;
    int k;
    int n;
    int i1;
    label104:
    int j;
    if (i > 0) {
      if (this.ad)
      {
        this.ad = false;
        int i2 = w();
        if ((i2 >= 0) && (b(i2, true) == i2))
        {
          setNextSelectedPositionInt(i2);
          k = 1;
          if (k == 0)
          {
            int m = getSelectedItemPosition();
            if (m >= i) {
              m = i - 1;
            }
            if (m < 0) {
              m = 0;
            }
            n = b(m, true);
            if (n >= 0) {
              break label164;
            }
            i1 = b(m, false);
            if (i1 >= 0)
            {
              setNextSelectedPositionInt(i1);
              v();
              j = 1;
            }
          }
        }
      }
    }
    for (;;)
    {
      if (j == 0)
      {
        this.am = -1;
        this.an = -9223372036854775808L;
        this.ak = -1;
        this.al = -9223372036854775808L;
        this.ad = false;
        v();
      }
      return;
      j = k;
      continue;
      label164:
      i1 = n;
      break label104;
      k = 0;
      break;
      j = 0;
    }
  }
  
  public void removeAllViews()
  {
    throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
  }
  
  public void removeView(View paramView)
  {
    throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
  }
  
  public void removeViewAt(int paramInt)
  {
    throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
  }
  
  boolean s()
  {
    return false;
  }
  
  public abstract void setAdapter(T paramT);
  
  @TargetApi(16)
  public void setEmptyView(View paramView)
  {
    int i = 1;
    this.b = paramView;
    if ((Build.VERSION.SDK_INT >= 16) && (paramView != null) && (paramView.getImportantForAccessibility() == 0)) {
      paramView.setImportantForAccessibility(i);
    }
    Adapter localAdapter = getAdapter();
    if ((localAdapter == null) || (localAdapter.isEmpty())) {}
    for (;;)
    {
      a(i);
      return;
      int j = 0;
    }
  }
  
  public void setFocusable(boolean paramBoolean)
  {
    boolean bool1 = true;
    Adapter localAdapter = getAdapter();
    boolean bool2;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      bool2 = bool1;
      this.c = paramBoolean;
      if (!paramBoolean) {
        this.d = false;
      }
      if ((!paramBoolean) || ((bool2) && (!s()))) {
        break label65;
      }
    }
    for (;;)
    {
      super.setFocusable(bool1);
      return;
      bool2 = false;
      break;
      label65:
      bool1 = false;
    }
  }
  
  public void setFocusableInTouchMode(boolean paramBoolean)
  {
    boolean bool1 = true;
    Adapter localAdapter = getAdapter();
    boolean bool2;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      bool2 = bool1;
      this.d = paramBoolean;
      if (paramBoolean) {
        this.c = bool1;
      }
      if ((!paramBoolean) || ((bool2) && (!s()))) {
        break label65;
      }
    }
    for (;;)
    {
      super.setFocusableInTouchMode(bool1);
      return;
      bool2 = false;
      break;
      label65:
      bool1 = false;
    }
  }
  
  protected void setNextSelectedPositionInt(int paramInt)
  {
    this.ak = paramInt;
    this.al = f(paramInt);
    if ((this.ad) && (this.ae == 0) && (paramInt >= 0))
    {
      this.aa = paramInt;
      this.ab = this.al;
    }
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
  }
  
  public void setOnItemClickListener(y paramy)
  {
    this.ah = paramy;
  }
  
  public void setOnItemLongClickListener(z paramz)
  {
    if (!isLongClickable()) {
      setLongClickable(true);
    }
    this.ai = paramz;
  }
  
  public void setOnItemSelectedListener(aa paramaa)
  {
    this.ag = paramaa;
  }
  
  protected void setSelectedPositionInt(int paramInt)
  {
    this.am = paramInt;
    this.an = f(paramInt);
  }
  
  public abstract void setSelection(int paramInt);
  
  protected void t()
  {
    Adapter localAdapter = getAdapter();
    int i;
    int j;
    label33:
    boolean bool1;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      i = 1;
      if ((i != 0) && (!s())) {
        break label115;
      }
      j = 1;
      if ((j == 0) || (!this.d)) {
        break label120;
      }
      bool1 = true;
      label47:
      super.setFocusableInTouchMode(bool1);
      if ((j == 0) || (!this.c)) {
        break label126;
      }
    }
    label115:
    label120:
    label126:
    for (boolean bool2 = true;; bool2 = false)
    {
      super.setFocusable(bool2);
      if (this.b != null)
      {
        boolean bool3;
        if (localAdapter != null)
        {
          boolean bool4 = localAdapter.isEmpty();
          bool3 = false;
          if (!bool4) {}
        }
        else
        {
          bool3 = true;
        }
        a(bool3);
      }
      return;
      i = 0;
      break;
      j = 0;
      break label33;
      bool1 = false;
      break label47;
    }
  }
  
  void u()
  {
    if ((this.ag != null) || (this.aq.isEnabled()))
    {
      if ((this.af) || (this.at))
      {
        if (this.e == null) {
          this.e = new ab(this, null);
        }
        post(this.e);
      }
    }
    else {
      return;
    }
    a();
    b();
  }
  
  protected void v()
  {
    if ((this.am != this.ar) || (this.an != this.as))
    {
      u();
      this.ar = this.am;
      this.as = this.an;
    }
  }
  
  int w()
  {
    int i = this.ao;
    int i2;
    if (i == 0)
    {
      i2 = -1;
      return i2;
    }
    long l1 = this.ab;
    int j = this.aa;
    if (l1 == -9223372036854775808L) {
      return -1;
    }
    int k = Math.max(0, j);
    int m = Math.min(i - 1, k);
    long l2 = 100L + SystemClock.uptimeMillis();
    Adapter localAdapter = getAdapter();
    label76:
    int i5;
    int i3;
    int i4;
    int n;
    if (localAdapter == null)
    {
      return -1;
      if ((i5 != 0) || ((i3 != 0) && (i4 == 0)))
      {
        int i6 = n + 1;
        n = i6;
        i2 = i6;
        i3 = 0;
      }
    }
    for (;;)
    {
      int i1;
      if (SystemClock.uptimeMillis() <= l2)
      {
        if (localAdapter.getItemId(i2) == l1) {
          break;
        }
        if (n != i - 1) {
          break label162;
        }
        i4 = 1;
        if (i1 != 0) {
          break label168;
        }
      }
      label162:
      label168:
      for (i5 = 1;; i5 = 0)
      {
        if ((i4 == 0) || (i5 == 0)) {
          break label172;
        }
        return -1;
        i4 = 0;
        break;
      }
      label172:
      break label76;
      if ((i4 != 0) || ((i3 == 0) && (i5 == 0)))
      {
        int i7 = i1 - 1;
        i1 = i7;
        i2 = i7;
        i3 = 1;
        continue;
        n = m;
        i1 = m;
        i2 = m;
        i3 = 0;
      }
    }
  }
  
  public void x()
  {
    if (getChildCount() > 0)
    {
      this.ad = true;
      this.ac = this.a;
      if (this.am >= 0)
      {
        View localView2 = getChildAt(this.am - this.W);
        this.ab = this.al;
        this.aa = this.ak;
        if (localView2 != null) {
          this.Z = localView2.getLeft();
        }
        this.ae = 0;
      }
    }
    else
    {
      return;
    }
    View localView1 = getChildAt(0);
    Adapter localAdapter = getAdapter();
    if ((this.W >= 0) && (this.W < localAdapter.getCount())) {}
    for (this.ab = localAdapter.getItemId(this.W);; this.ab = -1L)
    {
      this.aa = this.W;
      if (localView1 != null) {
        this.Z = localView1.getLeft();
      }
      this.ae = 1;
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.u
 * JD-Core Version:    0.7.0.1
 */