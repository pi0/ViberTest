package com.actionbarsherlock.internal.widget;

import android.content.Context;
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
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Adapter;
import android.widget.AdapterView.OnItemClickListener;

public abstract class IcsAdapterView<T extends Adapter>
  extends ViewGroup
{
  public static final int INVALID_POSITION = -1;
  public static final long INVALID_ROW_ID = -9223372036854775808L;
  public static final int ITEM_VIEW_TYPE_HEADER_OR_FOOTER = -2;
  public static final int ITEM_VIEW_TYPE_IGNORE = -1;
  static final int SYNC_FIRST_POSITION = 1;
  static final int SYNC_MAX_DURATION_MILLIS = 100;
  static final int SYNC_SELECTED_POSITION;
  boolean mBlockLayoutRequests = false;
  boolean mDataChanged;
  private boolean mDesiredFocusableInTouchModeState;
  private boolean mDesiredFocusableState;
  private View mEmptyView;
  @ViewDebug.ExportedProperty(category="scrolling")
  int mFirstPosition = 0;
  boolean mInLayout = false;
  @ViewDebug.ExportedProperty(category="list")
  int mItemCount;
  private int mLayoutHeight;
  boolean mNeedSync = false;
  @ViewDebug.ExportedProperty(category="list")
  int mNextSelectedPosition = -1;
  long mNextSelectedRowId = -9223372036854775808L;
  int mOldItemCount;
  int mOldSelectedPosition = -1;
  long mOldSelectedRowId = -9223372036854775808L;
  AdapterView.OnItemClickListener mOnItemClickListener;
  IcsAdapterView.OnItemLongClickListener mOnItemLongClickListener;
  IcsAdapterView.OnItemSelectedListener mOnItemSelectedListener;
  @ViewDebug.ExportedProperty(category="list")
  int mSelectedPosition = -1;
  long mSelectedRowId = -9223372036854775808L;
  private IcsAdapterView<T>.SelectionNotifier mSelectionNotifier;
  int mSpecificTop;
  long mSyncHeight;
  int mSyncMode;
  int mSyncPosition;
  long mSyncRowId = -9223372036854775808L;
  
  public IcsAdapterView(Context paramContext)
  {
    super(paramContext);
  }
  
  public IcsAdapterView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public IcsAdapterView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void fireOnSelected()
  {
    if (this.mOnItemSelectedListener == null) {
      return;
    }
    int i = getSelectedItemPosition();
    if (i >= 0)
    {
      View localView = getSelectedView();
      this.mOnItemSelectedListener.onItemSelected(this, localView, i, getAdapter().getItemId(i));
      return;
    }
    this.mOnItemSelectedListener.onNothingSelected(this);
  }
  
  private boolean isScrollableForAccessibility()
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
  
  private void updateEmptyStatus(boolean paramBoolean)
  {
    if (isInFilterMode()) {
      paramBoolean = false;
    }
    if (paramBoolean)
    {
      if (this.mEmptyView != null)
      {
        this.mEmptyView.setVisibility(0);
        setVisibility(8);
      }
      for (;;)
      {
        if (this.mDataChanged) {
          onLayout(false, getLeft(), getTop(), getRight(), getBottom());
        }
        return;
        setVisibility(0);
      }
    }
    if (this.mEmptyView != null) {
      this.mEmptyView.setVisibility(8);
    }
    setVisibility(0);
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
  
  protected boolean canAnimate()
  {
    return (super.canAnimate()) && (this.mItemCount > 0);
  }
  
  void checkFocus()
  {
    Adapter localAdapter = getAdapter();
    int i;
    int j;
    label33:
    boolean bool1;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      i = 1;
      if ((i != 0) && (!isInFilterMode())) {
        break label115;
      }
      j = 1;
      if ((j == 0) || (!this.mDesiredFocusableInTouchModeState)) {
        break label120;
      }
      bool1 = true;
      label47:
      super.setFocusableInTouchMode(bool1);
      if ((j == 0) || (!this.mDesiredFocusableState)) {
        break label126;
      }
    }
    label115:
    label120:
    label126:
    for (boolean bool2 = true;; bool2 = false)
    {
      super.setFocusable(bool2);
      if (this.mEmptyView != null)
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
        updateEmptyStatus(bool3);
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
  
  void checkSelectionChanged()
  {
    if ((this.mSelectedPosition != this.mOldSelectedPosition) || (this.mSelectedRowId != this.mOldSelectedRowId))
    {
      selectionChanged();
      this.mOldSelectedPosition = this.mSelectedPosition;
      this.mOldSelectedRowId = this.mSelectedRowId;
    }
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
  
  int findSyncPosition()
  {
    int i = this.mItemCount;
    int i2;
    if (i == 0)
    {
      i2 = -1;
      return i2;
    }
    long l1 = this.mSyncRowId;
    int j = this.mSyncPosition;
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
  
  public abstract T getAdapter();
  
  @ViewDebug.CapturedViewProperty
  public int getCount()
  {
    return this.mItemCount;
  }
  
  public View getEmptyView()
  {
    return this.mEmptyView;
  }
  
  public int getFirstVisiblePosition()
  {
    return this.mFirstPosition;
  }
  
  public Object getItemAtPosition(int paramInt)
  {
    Adapter localAdapter = getAdapter();
    if ((localAdapter == null) || (paramInt < 0)) {
      return null;
    }
    return localAdapter.getItem(paramInt);
  }
  
  public long getItemIdAtPosition(int paramInt)
  {
    Adapter localAdapter = getAdapter();
    if ((localAdapter == null) || (paramInt < 0)) {
      return -9223372036854775808L;
    }
    return localAdapter.getItemId(paramInt);
  }
  
  public int getLastVisiblePosition()
  {
    return -1 + (this.mFirstPosition + getChildCount());
  }
  
  public final AdapterView.OnItemClickListener getOnItemClickListener()
  {
    return this.mOnItemClickListener;
  }
  
  public final IcsAdapterView.OnItemLongClickListener getOnItemLongClickListener()
  {
    return this.mOnItemLongClickListener;
  }
  
  public final IcsAdapterView.OnItemSelectedListener getOnItemSelectedListener()
  {
    return this.mOnItemSelectedListener;
  }
  
  public int getPositionForView(View paramView)
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
        return j + this.mFirstPosition;
      }
    }
    return -1;
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
    return this.mNextSelectedRowId;
  }
  
  @ViewDebug.CapturedViewProperty
  public int getSelectedItemPosition()
  {
    return this.mNextSelectedPosition;
  }
  
  public abstract View getSelectedView();
  
  void handleDataChanged()
  {
    int i = this.mItemCount;
    int k;
    int n;
    int i1;
    label104:
    int j;
    if (i > 0) {
      if (this.mNeedSync)
      {
        this.mNeedSync = false;
        int i2 = findSyncPosition();
        if ((i2 >= 0) && (lookForSelectablePosition(i2, true) == i2))
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
            n = lookForSelectablePosition(m, true);
            if (n >= 0) {
              break label164;
            }
            i1 = lookForSelectablePosition(m, false);
            if (i1 >= 0)
            {
              setNextSelectedPositionInt(i1);
              checkSelectionChanged();
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
        this.mSelectedPosition = -1;
        this.mSelectedRowId = -9223372036854775808L;
        this.mNextSelectedPosition = -1;
        this.mNextSelectedRowId = -9223372036854775808L;
        this.mNeedSync = false;
        checkSelectionChanged();
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
  
  boolean isInFilterMode()
  {
    return false;
  }
  
  int lookForSelectablePosition(int paramInt, boolean paramBoolean)
  {
    return paramInt;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.mSelectionNotifier);
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setScrollable(isScrollableForAccessibility());
    View localView = getSelectedView();
    if (localView != null) {
      paramAccessibilityEvent.setEnabled(localView.isEnabled());
    }
    paramAccessibilityEvent.setCurrentItemIndex(getSelectedItemPosition());
    paramAccessibilityEvent.setFromIndex(getFirstVisiblePosition());
    paramAccessibilityEvent.setToIndex(getLastVisiblePosition());
    paramAccessibilityEvent.setItemCount(getCount());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setScrollable(isScrollableForAccessibility());
    View localView = getSelectedView();
    if (localView != null) {
      paramAccessibilityNodeInfo.setEnabled(localView.isEnabled());
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mLayoutHeight = getHeight();
  }
  
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
  
  public boolean performItemClick(View paramView, int paramInt, long paramLong)
  {
    AdapterView.OnItemClickListener localOnItemClickListener = this.mOnItemClickListener;
    boolean bool = false;
    if (localOnItemClickListener != null)
    {
      playSoundEffect(0);
      if (paramView != null) {
        paramView.sendAccessibilityEvent(1);
      }
      this.mOnItemClickListener.onItemClick(null, paramView, paramInt, paramLong);
      bool = true;
    }
    return bool;
  }
  
  void rememberSyncState()
  {
    if (getChildCount() > 0)
    {
      this.mNeedSync = true;
      this.mSyncHeight = this.mLayoutHeight;
      if (this.mSelectedPosition >= 0)
      {
        View localView2 = getChildAt(this.mSelectedPosition - this.mFirstPosition);
        this.mSyncRowId = this.mNextSelectedRowId;
        this.mSyncPosition = this.mNextSelectedPosition;
        if (localView2 != null) {
          this.mSpecificTop = localView2.getTop();
        }
        this.mSyncMode = 0;
      }
    }
    else
    {
      return;
    }
    View localView1 = getChildAt(0);
    Adapter localAdapter = getAdapter();
    if ((this.mFirstPosition >= 0) && (this.mFirstPosition < localAdapter.getCount())) {}
    for (this.mSyncRowId = localAdapter.getItemId(this.mFirstPosition);; this.mSyncRowId = -1L)
    {
      this.mSyncPosition = this.mFirstPosition;
      if (localView1 != null) {
        this.mSpecificTop = localView1.getTop();
      }
      this.mSyncMode = 1;
      return;
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
  
  void selectionChanged()
  {
    if (this.mOnItemSelectedListener != null)
    {
      if ((!this.mInLayout) && (!this.mBlockLayoutRequests)) {
        break label78;
      }
      if (this.mSelectionNotifier == null) {
        this.mSelectionNotifier = new IcsAdapterView.SelectionNotifier(this, null);
      }
      post(this.mSelectionNotifier);
    }
    for (;;)
    {
      if ((this.mSelectedPosition != -1) && (isShown()) && (!isInTouchMode())) {
        sendAccessibilityEvent(4);
      }
      return;
      label78:
      fireOnSelected();
    }
  }
  
  public abstract void setAdapter(T paramT);
  
  public void setEmptyView(View paramView)
  {
    this.mEmptyView = paramView;
    Adapter localAdapter = getAdapter();
    if ((localAdapter == null) || (localAdapter.isEmpty())) {}
    for (boolean bool = true;; bool = false)
    {
      updateEmptyStatus(bool);
      return;
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
      this.mDesiredFocusableState = paramBoolean;
      if (!paramBoolean) {
        this.mDesiredFocusableInTouchModeState = false;
      }
      if ((!paramBoolean) || ((bool2) && (!isInFilterMode()))) {
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
      this.mDesiredFocusableInTouchModeState = paramBoolean;
      if (paramBoolean) {
        this.mDesiredFocusableState = bool1;
      }
      if ((!paramBoolean) || ((bool2) && (!isInFilterMode()))) {
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
  
  void setNextSelectedPositionInt(int paramInt)
  {
    this.mNextSelectedPosition = paramInt;
    this.mNextSelectedRowId = getItemIdAtPosition(paramInt);
    if ((this.mNeedSync) && (this.mSyncMode == 0) && (paramInt >= 0))
    {
      this.mSyncPosition = paramInt;
      this.mSyncRowId = this.mNextSelectedRowId;
    }
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
  }
  
  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.mOnItemClickListener = paramOnItemClickListener;
  }
  
  public void setOnItemLongClickListener(IcsAdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    if (!isLongClickable()) {
      setLongClickable(true);
    }
    this.mOnItemLongClickListener = paramOnItemLongClickListener;
  }
  
  public void setOnItemSelectedListener(IcsAdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    this.mOnItemSelectedListener = paramOnItemSelectedListener;
  }
  
  void setSelectedPositionInt(int paramInt)
  {
    this.mSelectedPosition = paramInt;
    this.mSelectedRowId = getItemIdAtPosition(paramInt);
  }
  
  public abstract void setSelection(int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsAdapterView
 * JD-Core Version:    0.7.0.1
 */