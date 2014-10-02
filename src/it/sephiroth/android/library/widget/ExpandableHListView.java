package it.sephiroth.android.library.widget;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Gravity;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ExpandableListAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

public class ExpandableHListView
  extends HListView
{
  private static final int[] aI = new int[0];
  private static final int[] aJ = { 16842920 };
  private static final int[] aK = { 16842921 };
  private static final int[] aL = { 16842920, 16842921 };
  private static final int[][] aM;
  private static final int[] aN = { 16842918 };
  private ExpandableHListConnector a;
  private int aA;
  private int aB;
  private int aC;
  private int aD;
  private int aE;
  private int aF;
  private Drawable aG;
  private Drawable aH;
  private Drawable aO;
  private final Rect aP;
  private final Rect aQ;
  private int aR;
  private int aS;
  private int aT;
  private int aU;
  private al aV;
  private am aW;
  private ak aX;
  private aj aY;
  private ExpandableListAdapter az;
  
  static
  {
    int[][] arrayOfInt = new int[4][];
    arrayOfInt[0] = aI;
    arrayOfInt[1] = aJ;
    arrayOfInt[2] = aK;
    arrayOfInt[3] = aL;
    aM = arrayOfInt;
  }
  
  private void A()
  {
    if (this.aH != null)
    {
      this.aT = this.aH.getIntrinsicWidth();
      this.aU = this.aH.getIntrinsicHeight();
      return;
    }
    this.aT = 0;
    this.aU = 0;
  }
  
  public static int a(long paramLong)
  {
    if (paramLong == 4294967295L) {
      return 2;
    }
    if ((paramLong & 0x0) == -9223372036854775808L) {
      return 1;
    }
    return 0;
  }
  
  private long a(ag paramag)
  {
    if (paramag.d == 1) {
      return this.az.getChildId(paramag.a, paramag.b);
    }
    return this.az.getGroupId(paramag.a);
  }
  
  private Drawable a(af paramaf)
  {
    int i = 1;
    Drawable localDrawable2;
    if (paramaf.a.d == 2)
    {
      localDrawable2 = this.aG;
      if ((localDrawable2 != null) && (localDrawable2.isStateful()))
      {
        int j;
        if ((paramaf.b == null) || (paramaf.b.b == paramaf.b.a))
        {
          j = i;
          if (!paramaf.b()) {
            break label104;
          }
        }
        for (;;)
        {
          int k = 0;
          if (j != 0) {
            k = 2;
          }
          int m = i | k;
          localDrawable2.setState(aM[m]);
          return localDrawable2;
          j = 0;
          break;
          label104:
          i = 0;
        }
      }
    }
    else
    {
      Drawable localDrawable1 = this.aH;
      if ((localDrawable1 != null) && (localDrawable1.isStateful())) {
        if (paramaf.a.c != paramaf.b.b) {
          break label156;
        }
      }
      label156:
      for (int[] arrayOfInt = aN;; arrayOfInt = aI)
      {
        localDrawable1.setState(arrayOfInt);
        return localDrawable1;
      }
    }
    return localDrawable2;
  }
  
  public static int b(long paramLong)
  {
    if (paramLong == 4294967295L) {
      return -1;
    }
    return (int)((0x0 & paramLong) >> 32);
  }
  
  public static int c(long paramLong)
  {
    if (paramLong == 4294967295L) {}
    while ((paramLong & 0x0) != -9223372036854775808L) {
      return -1;
    }
    return (int)(paramLong & 0xFFFFFFFF);
  }
  
  private boolean k(int paramInt)
  {
    int i = this.ao - getFooterViewsCount();
    return (paramInt < getHeaderViewsCount()) || (paramInt >= i);
  }
  
  private int l(int paramInt)
  {
    return paramInt - getHeaderViewsCount();
  }
  
  private int m(int paramInt)
  {
    return paramInt + getHeaderViewsCount();
  }
  
  private void z()
  {
    if (this.aG != null)
    {
      this.aR = this.aG.getIntrinsicWidth();
      this.aS = this.aG.getIntrinsicHeight();
      return;
    }
    this.aR = 0;
    this.aS = 0;
  }
  
  void a(Canvas paramCanvas, Rect paramRect, int paramInt)
  {
    int i = paramInt + this.W;
    if (i >= 0)
    {
      int j = l(i);
      af localaf = this.a.a(j);
      if ((localaf.a.d == 1) || ((localaf.b()) && (localaf.b.b != localaf.b.a)))
      {
        Drawable localDrawable = this.aO;
        localDrawable.setBounds(paramRect);
        localDrawable.draw(paramCanvas);
        localaf.a();
        return;
      }
      localaf.a();
    }
    super.a(paramCanvas, paramRect, i);
  }
  
  public boolean a(View paramView, int paramInt, long paramLong)
  {
    if (k(paramInt)) {
      return super.a(paramView, paramInt, paramLong);
    }
    return d(paramView, l(paramInt), paramLong);
  }
  
  ContextMenu.ContextMenuInfo b(View paramView, int paramInt, long paramLong)
  {
    if (k(paramInt)) {
      return new w(paramView, paramInt, paramLong);
    }
    int i = l(paramInt);
    af localaf = this.a.a(i);
    ag localag = localaf.a;
    long l1 = a(localag);
    long l2 = localag.a();
    localaf.a();
    return new ai(paramView, l2, l1);
  }
  
  boolean d(View paramView, int paramInt, long paramLong)
  {
    af localaf = this.a.a(paramInt);
    long l = a(localaf.a);
    if (localaf.a.d == 2)
    {
      if ((this.aX != null) && (this.aX.a(this, paramView, localaf.a.a, l)))
      {
        localaf.a();
        return true;
      }
      if (localaf.b())
      {
        this.a.a(localaf);
        playSoundEffect(0);
        if (this.aV != null) {
          this.aV.a(localaf.a.a);
        }
      }
    }
    for (boolean bool = true;; bool = false)
    {
      localaf.a();
      return bool;
      this.a.b(localaf);
      playSoundEffect(0);
      if (this.aW != null) {
        this.aW.a(localaf.a.a);
      }
      int i = localaf.a.a;
      int j = localaf.a.c + getHeaderViewsCount();
      b(j + this.az.getChildrenCount(i), j);
      break;
      if (this.aY != null)
      {
        playSoundEffect(0);
        return this.aY.a(this, paramView, localaf.a.a, localaf.a.b, l);
      }
    }
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if ((this.aH == null) && (this.aG == null)) {
      return;
    }
    int i = getHeaderViewsCount();
    int j = -1 + (this.ao - getFooterViewsCount() - i);
    int k = getRight();
    Rect localRect = this.aP;
    int m = getChildCount();
    int n = this.W - i;
    int i1 = -4;
    int i2 = 0;
    int i3 = n;
    label76:
    if (i2 < m) {
      if (i3 >= 0) {
        break label97;
      }
    }
    label97:
    View localView;
    int i4;
    int i5;
    do
    {
      i2++;
      i3++;
      break label76;
      break;
      if (i3 > j) {
        break;
      }
      localView = getChildAt(i2);
      i4 = localView.getLeft();
      i5 = localView.getRight();
    } while ((i5 < 0) || (i4 > k));
    af localaf = this.a.a(i3);
    label203:
    Drawable localDrawable;
    if (localaf.a.d != i1)
    {
      if (localaf.a.d == 1)
      {
        localRect.top = (localView.getTop() + this.aE);
        localRect.bottom = (localView.getBottom() + this.aE);
        i1 = localaf.a.d;
      }
    }
    else if (localRect.top != localRect.bottom)
    {
      if (localaf.a.d != 1) {
        break label364;
      }
      localRect.left = (i4 + this.aF);
      localRect.right = (i5 + this.aF);
      label262:
      localDrawable = a(localaf);
      if (localDrawable != null)
      {
        if (localaf.a.d != 1) {
          break label391;
        }
        Gravity.apply(this.aD, this.aT, this.aU, localRect, this.aQ);
      }
    }
    for (;;)
    {
      localDrawable.setBounds(this.aQ);
      localDrawable.draw(paramCanvas);
      localaf.a();
      break;
      localRect.top = (localView.getTop() + this.aA);
      localRect.bottom = (localView.getBottom() + this.aA);
      break label203;
      label364:
      localRect.left = (i4 + this.aB);
      localRect.right = (i5 + this.aB);
      break label262;
      label391:
      Gravity.apply(this.aC, this.aR, this.aS, localRect, this.aQ);
    }
  }
  
  public long g(int paramInt)
  {
    if (k(paramInt)) {
      return 4294967295L;
    }
    int i = l(paramInt);
    af localaf = this.a.a(i);
    long l = localaf.a.a();
    localaf.a();
    return l;
  }
  
  public ListAdapter getAdapter()
  {
    return super.getAdapter();
  }
  
  public ExpandableListAdapter getExpandableListAdapter()
  {
    return this.az;
  }
  
  public long getSelectedId()
  {
    long l = getSelectedPosition();
    if (l == 4294967295L) {
      return -1L;
    }
    int i = b(l);
    if (a(l) == 0) {
      return this.az.getGroupId(i);
    }
    return this.az.getChildId(i, c(l));
  }
  
  public long getSelectedPosition()
  {
    return g(getSelectedItemPosition());
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ExpandableHListView.class.getName());
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(ExpandableHListView.class.getName());
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ExpandableHListView.SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
    }
    ExpandableHListView.SavedState localSavedState;
    do
    {
      return;
      localSavedState = (ExpandableHListView.SavedState)paramParcelable;
      super.onRestoreInstanceState(localSavedState.getSuperState());
    } while ((this.a == null) || (localSavedState.a == null));
    this.a.a(localSavedState.a);
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    z();
    A();
  }
  
  public Parcelable onSaveInstanceState()
  {
    Parcelable localParcelable = super.onSaveInstanceState();
    if (this.a != null) {}
    for (ArrayList localArrayList = this.a.b();; localArrayList = null) {
      return new ExpandableHListView.SavedState(localParcelable, localArrayList);
    }
  }
  
  public void setAdapter(ExpandableListAdapter paramExpandableListAdapter)
  {
    this.az = paramExpandableListAdapter;
    if (paramExpandableListAdapter != null) {}
    for (this.a = new ExpandableHListConnector(paramExpandableListAdapter);; this.a = null)
    {
      super.setAdapter(this.a);
      return;
    }
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    throw new RuntimeException("For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)");
  }
  
  public void setChildDivider(Drawable paramDrawable)
  {
    this.aO = paramDrawable;
  }
  
  public void setChildIndicator(Drawable paramDrawable)
  {
    this.aH = paramDrawable;
    A();
  }
  
  public void setGroupIndicator(Drawable paramDrawable)
  {
    this.aG = paramDrawable;
    z();
  }
  
  public void setOnChildClickListener(aj paramaj)
  {
    this.aY = paramaj;
  }
  
  public void setOnGroupClickListener(ak paramak)
  {
    this.aX = paramak;
  }
  
  public void setOnGroupCollapseListener(al paramal)
  {
    this.aV = paramal;
  }
  
  public void setOnGroupExpandListener(am paramam)
  {
    this.aW = paramam;
  }
  
  public void setOnItemClickListener(y paramy)
  {
    super.setOnItemClickListener(paramy);
  }
  
  public void setSelectedGroup(int paramInt)
  {
    ag localag = ag.a(paramInt);
    af localaf = this.a.a(localag);
    localag.b();
    super.setSelection(m(localaf.a.c));
    localaf.a();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.ExpandableHListView
 * JD-Core Version:    0.7.0.1
 */