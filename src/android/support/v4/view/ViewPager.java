package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager
  extends ViewGroup
{
  private static final int CLOSE_ENOUGH = 2;
  private static final Comparator<ViewPager.ItemInfo> COMPARATOR = new ViewPager.1();
  private static final boolean DEBUG = false;
  private static final int DEFAULT_GUTTER_SIZE = 16;
  private static final int DEFAULT_OFFSCREEN_PAGES = 1;
  private static final int DRAW_ORDER_DEFAULT = 0;
  private static final int DRAW_ORDER_FORWARD = 1;
  private static final int DRAW_ORDER_REVERSE = 2;
  private static final int INVALID_POINTER = -1;
  private static final int[] LAYOUT_ATTRS = { 16842931 };
  private static final int MAX_SETTLE_DURATION = 600;
  private static final int MIN_DISTANCE_FOR_FLING = 25;
  private static final int MIN_FLING_VELOCITY = 400;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  private static final String TAG = "ViewPager";
  private static final boolean USE_CACHE;
  private static final Interpolator sInterpolator = new ViewPager.2();
  private static final ViewPager.ViewPositionComparator sPositionComparator = new ViewPager.ViewPositionComparator();
  private int mActivePointerId = -1;
  private PagerAdapter mAdapter;
  private ViewPager.OnAdapterChangeListener mAdapterChangeListener;
  private int mBottomPageBounds;
  private boolean mCalledSuper;
  private int mChildHeightMeasureSpec;
  private int mChildWidthMeasureSpec;
  private int mCloseEnough;
  private int mCurItem;
  private int mDecorChildCount;
  private int mDefaultGutterSize;
  private int mDrawingOrder;
  private ArrayList<View> mDrawingOrderedChildren;
  private final Runnable mEndScrollRunnable = new ViewPager.3(this);
  private int mExpectedAdapterCount;
  private long mFakeDragBeginTime;
  private boolean mFakeDragging;
  private boolean mFirstLayout = true;
  private float mFirstOffset = -3.402824E+038F;
  private int mFlingDistance;
  private int mGutterSize;
  private boolean mIgnoreGutter;
  private boolean mInLayout;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private ViewPager.OnPageChangeListener mInternalPageChangeListener;
  private boolean mIsBeingDragged;
  private boolean mIsUnableToDrag;
  private final ArrayList<ViewPager.ItemInfo> mItems = new ArrayList();
  private float mLastMotionX;
  private float mLastMotionY;
  private float mLastOffset = 3.4028235E+38F;
  private EdgeEffectCompat mLeftEdge;
  private Drawable mMarginDrawable;
  private int mMaximumVelocity;
  private int mMinimumVelocity;
  private boolean mNeedCalculatePageOffsets = false;
  private ViewPager.PagerObserver mObserver;
  private int mOffscreenPageLimit = 1;
  private ViewPager.OnPageChangeListener mOnPageChangeListener;
  private int mPageMargin;
  private ViewPager.PageTransformer mPageTransformer;
  private boolean mPopulatePending;
  private Parcelable mRestoredAdapterState = null;
  private ClassLoader mRestoredClassLoader = null;
  private int mRestoredCurItem = -1;
  private EdgeEffectCompat mRightEdge;
  private int mScrollState = 0;
  private Scroller mScroller;
  private boolean mScrollingCacheEnabled;
  private Method mSetChildrenDrawingOrderEnabled;
  private final ViewPager.ItemInfo mTempItem = new ViewPager.ItemInfo();
  private final Rect mTempRect = new Rect();
  private int mTopPageBounds;
  private int mTouchSlop;
  private VelocityTracker mVelocityTracker;
  
  public ViewPager(Context paramContext)
  {
    super(paramContext);
    initViewPager();
  }
  
  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initViewPager();
  }
  
  private void calculatePageOffsets(ViewPager.ItemInfo paramItemInfo1, int paramInt, ViewPager.ItemInfo paramItemInfo2)
  {
    int i = this.mAdapter.getCount();
    int j = getClientWidth();
    float f1;
    int i7;
    float f9;
    int i10;
    int i11;
    if (j > 0)
    {
      f1 = this.mPageMargin / j;
      if (paramItemInfo2 == null) {
        break label371;
      }
      i7 = paramItemInfo2.position;
      if (i7 < paramItemInfo1.position)
      {
        f9 = f1 + (paramItemInfo2.offset + paramItemInfo2.widthFactor);
        i10 = i7 + 1;
        i11 = 0;
      }
    }
    else
    {
      for (;;)
      {
        if ((i10 > paramItemInfo1.position) || (i11 >= this.mItems.size())) {
          break label371;
        }
        ViewPager.ItemInfo localItemInfo4 = (ViewPager.ItemInfo)this.mItems.get(i11);
        for (;;)
        {
          if ((i10 > localItemInfo4.position) && (i11 < -1 + this.mItems.size()))
          {
            i11++;
            localItemInfo4 = (ViewPager.ItemInfo)this.mItems.get(i11);
            continue;
            f1 = 0.0F;
            break;
          }
        }
        while (i10 < localItemInfo4.position)
        {
          f9 += f1 + this.mAdapter.getPageWidth(i10);
          i10++;
        }
        localItemInfo4.offset = f9;
        f9 += f1 + localItemInfo4.widthFactor;
        i10++;
      }
    }
    if (i7 > paramItemInfo1.position)
    {
      int i8 = -1 + this.mItems.size();
      float f8 = paramItemInfo2.offset;
      for (int i9 = i7 - 1; (i9 >= paramItemInfo1.position) && (i8 >= 0); i9--)
      {
        for (ViewPager.ItemInfo localItemInfo3 = (ViewPager.ItemInfo)this.mItems.get(i8); (i9 < localItemInfo3.position) && (i8 > 0); localItemInfo3 = (ViewPager.ItemInfo)this.mItems.get(i8)) {
          i8--;
        }
        while (i9 > localItemInfo3.position)
        {
          f8 -= f1 + this.mAdapter.getPageWidth(i9);
          i9--;
        }
        f8 -= f1 + localItemInfo3.widthFactor;
        localItemInfo3.offset = f8;
      }
    }
    label371:
    int k = this.mItems.size();
    float f2 = paramItemInfo1.offset;
    int m = -1 + paramItemInfo1.position;
    float f3;
    float f4;
    if (paramItemInfo1.position == 0)
    {
      f3 = paramItemInfo1.offset;
      this.mFirstOffset = f3;
      if (paramItemInfo1.position != i - 1) {
        break label522;
      }
      f4 = paramItemInfo1.offset + paramItemInfo1.widthFactor - 1.0F;
      label437:
      this.mLastOffset = f4;
    }
    label522:
    int i5;
    for (int n = paramInt - 1;; n = i5)
    {
      if (n < 0) {
        break label579;
      }
      ViewPager.ItemInfo localItemInfo2 = (ViewPager.ItemInfo)this.mItems.get(n);
      float f7 = f2;
      for (;;)
      {
        if (m > localItemInfo2.position)
        {
          PagerAdapter localPagerAdapter2 = this.mAdapter;
          int i6 = m - 1;
          f7 -= f1 + localPagerAdapter2.getPageWidth(m);
          m = i6;
          continue;
          f3 = -3.402824E+038F;
          break;
          f4 = 3.4028235E+38F;
          break label437;
        }
      }
      f2 = f7 - (f1 + localItemInfo2.widthFactor);
      localItemInfo2.offset = f2;
      if (localItemInfo2.position == 0) {
        this.mFirstOffset = f2;
      }
      i5 = n - 1;
      m--;
    }
    label579:
    float f5 = f1 + (paramItemInfo1.offset + paramItemInfo1.widthFactor);
    int i1 = 1 + paramItemInfo1.position;
    int i3;
    for (int i2 = paramInt + 1; i2 < k; i2 = i3)
    {
      ViewPager.ItemInfo localItemInfo1 = (ViewPager.ItemInfo)this.mItems.get(i2);
      float f6 = f5;
      while (i1 < localItemInfo1.position)
      {
        PagerAdapter localPagerAdapter1 = this.mAdapter;
        int i4 = i1 + 1;
        f6 += f1 + localPagerAdapter1.getPageWidth(i1);
        i1 = i4;
      }
      if (localItemInfo1.position == i - 1) {
        this.mLastOffset = (f6 + localItemInfo1.widthFactor - 1.0F);
      }
      localItemInfo1.offset = f6;
      f5 = f6 + (f1 + localItemInfo1.widthFactor);
      i3 = i2 + 1;
      i1++;
    }
    this.mNeedCalculatePageOffsets = false;
  }
  
  private void completeScroll(boolean paramBoolean)
  {
    if (this.mScrollState == 2) {}
    int k;
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        setScrollingCacheEnabled(false);
        this.mScroller.abortAnimation();
        int m = getScrollX();
        int n = getScrollY();
        int i1 = this.mScroller.getCurrX();
        int i2 = this.mScroller.getCurrY();
        if ((m != i1) || (n != i2)) {
          scrollTo(i1, i2);
        }
      }
      this.mPopulatePending = false;
      int j = 0;
      k = i;
      while (j < this.mItems.size())
      {
        ViewPager.ItemInfo localItemInfo = (ViewPager.ItemInfo)this.mItems.get(j);
        if (localItemInfo.scrolling)
        {
          localItemInfo.scrolling = false;
          k = 1;
        }
        j++;
      }
    }
    if (k != 0)
    {
      if (paramBoolean) {
        ViewCompat.postOnAnimation(this, this.mEndScrollRunnable);
      }
    }
    else {
      return;
    }
    this.mEndScrollRunnable.run();
  }
  
  private int determineTargetPage(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > this.mFlingDistance) && (Math.abs(paramInt2) > this.mMinimumVelocity))
    {
      if (paramInt2 > 0) {}
      for (;;)
      {
        if (this.mItems.size() > 0)
        {
          ViewPager.ItemInfo localItemInfo1 = (ViewPager.ItemInfo)this.mItems.get(0);
          ViewPager.ItemInfo localItemInfo2 = (ViewPager.ItemInfo)this.mItems.get(-1 + this.mItems.size());
          paramInt1 = Math.max(localItemInfo1.position, Math.min(paramInt1, localItemInfo2.position));
        }
        return paramInt1;
        paramInt1++;
      }
    }
    if (paramInt1 >= this.mCurItem) {}
    for (float f = 0.4F;; f = 0.6F)
    {
      paramInt1 = (int)(f + (paramFloat + paramInt1));
      break;
    }
  }
  
  private void enableLayers(boolean paramBoolean)
  {
    int i = getChildCount();
    int j = 0;
    if (j < i)
    {
      if (paramBoolean) {}
      for (int k = 2;; k = 0)
      {
        ViewCompat.setLayerType(getChildAt(j), k, null);
        j++;
        break;
      }
    }
  }
  
  private void endDrag()
  {
    this.mIsBeingDragged = false;
    this.mIsUnableToDrag = false;
    if (this.mVelocityTracker != null)
    {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    }
  }
  
  private Rect getChildRectInPagerCoordinates(Rect paramRect, View paramView)
  {
    if (paramRect == null) {}
    for (Rect localRect = new Rect();; localRect = paramRect)
    {
      if (paramView == null)
      {
        localRect.set(0, 0, 0, 0);
        return localRect;
      }
      localRect.left = paramView.getLeft();
      localRect.right = paramView.getRight();
      localRect.top = paramView.getTop();
      localRect.bottom = paramView.getBottom();
      ViewGroup localViewGroup;
      for (ViewParent localViewParent = paramView.getParent(); ((localViewParent instanceof ViewGroup)) && (localViewParent != this); localViewParent = localViewGroup.getParent())
      {
        localViewGroup = (ViewGroup)localViewParent;
        localRect.left += localViewGroup.getLeft();
        localRect.right += localViewGroup.getRight();
        localRect.top += localViewGroup.getTop();
        localRect.bottom += localViewGroup.getBottom();
      }
      return localRect;
    }
  }
  
  private int getClientWidth()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }
  
  private ViewPager.ItemInfo infoForCurrentScrollPosition()
  {
    int i = getClientWidth();
    float f1;
    float f2;
    label31:
    float f3;
    float f4;
    int j;
    int k;
    int m;
    Object localObject;
    label49:
    ViewPager.ItemInfo localItemInfo1;
    ViewPager.ItemInfo localItemInfo3;
    int n;
    if (i > 0)
    {
      f1 = getScrollX() / i;
      if (i <= 0) {
        break label210;
      }
      f2 = this.mPageMargin / i;
      f3 = 0.0F;
      f4 = 0.0F;
      j = -1;
      k = 0;
      m = 1;
      localObject = null;
      if (k < this.mItems.size())
      {
        localItemInfo1 = (ViewPager.ItemInfo)this.mItems.get(k);
        if ((m != 0) || (localItemInfo1.position == j + 1)) {
          break label261;
        }
        localItemInfo3 = this.mTempItem;
        localItemInfo3.offset = (f2 + (f3 + f4));
        localItemInfo3.position = (j + 1);
        localItemInfo3.widthFactor = this.mAdapter.getPageWidth(localItemInfo3.position);
        n = k - 1;
      }
    }
    for (ViewPager.ItemInfo localItemInfo2 = localItemInfo3;; localItemInfo2 = localItemInfo1)
    {
      float f5 = localItemInfo2.offset;
      float f6 = f2 + (f5 + localItemInfo2.widthFactor);
      if ((m != 0) || (f1 >= f5))
      {
        if ((f1 < f6) || (n == -1 + this.mItems.size())) {
          localObject = localItemInfo2;
        }
      }
      else
      {
        return localObject;
        f1 = 0.0F;
        break;
        label210:
        f2 = 0.0F;
        break label31;
      }
      int i1 = localItemInfo2.position;
      float f7 = localItemInfo2.widthFactor;
      int i2 = n + 1;
      f4 = f5;
      j = i1;
      f3 = f7;
      localObject = localItemInfo2;
      k = i2;
      m = 0;
      break label49;
      label261:
      n = k;
    }
  }
  
  private boolean isGutterDrag(float paramFloat1, float paramFloat2)
  {
    return ((paramFloat1 < this.mGutterSize) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - this.mGutterSize) && (paramFloat2 < 0.0F));
  }
  
  private void onSecondaryPointerUp(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i) == this.mActivePointerId) {
      if (i != 0) {
        break label56;
      }
    }
    label56:
    for (int j = 1;; j = 0)
    {
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, j);
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, j);
      if (this.mVelocityTracker != null) {
        this.mVelocityTracker.clear();
      }
      return;
    }
  }
  
  private boolean pageScrolled(int paramInt)
  {
    boolean bool1;
    if (this.mItems.size() == 0)
    {
      this.mCalledSuper = false;
      onPageScrolled(0, 0.0F, 0);
      boolean bool2 = this.mCalledSuper;
      bool1 = false;
      if (!bool2) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
    }
    else
    {
      ViewPager.ItemInfo localItemInfo = infoForCurrentScrollPosition();
      int i = getClientWidth();
      int j = i + this.mPageMargin;
      float f1 = this.mPageMargin / i;
      int k = localItemInfo.position;
      float f2 = (paramInt / i - localItemInfo.offset) / (f1 + localItemInfo.widthFactor);
      int m = (int)(f2 * j);
      this.mCalledSuper = false;
      onPageScrolled(k, f2, m);
      if (!this.mCalledSuper) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
      bool1 = true;
    }
    return bool1;
  }
  
  private boolean performDrag(float paramFloat)
  {
    int i = 1;
    float f1 = this.mLastMotionX - paramFloat;
    this.mLastMotionX = paramFloat;
    float f2 = f1 + getScrollX();
    int j = getClientWidth();
    float f3 = j * this.mFirstOffset;
    float f4 = j * this.mLastOffset;
    ViewPager.ItemInfo localItemInfo1 = (ViewPager.ItemInfo)this.mItems.get(0);
    ViewPager.ItemInfo localItemInfo2 = (ViewPager.ItemInfo)this.mItems.get(-1 + this.mItems.size());
    if (localItemInfo1.position != 0) {
      f3 = localItemInfo1.offset * j;
    }
    for (int k = 0;; k = i)
    {
      float f5;
      if (localItemInfo2.position != -1 + this.mAdapter.getCount())
      {
        f5 = localItemInfo2.offset * j;
        i = 0;
      }
      for (;;)
      {
        boolean bool;
        if (f2 < f3)
        {
          bool = false;
          if (k != 0)
          {
            float f6 = f3 - f2;
            bool = this.mLeftEdge.onPull(Math.abs(f6) / j);
          }
        }
        for (;;)
        {
          this.mLastMotionX += f3 - (int)f3;
          scrollTo((int)f3, getScrollY());
          pageScrolled((int)f3);
          return bool;
          if (f2 > f5)
          {
            bool = false;
            if (i != 0)
            {
              float f7 = f2 - f5;
              bool = this.mRightEdge.onPull(Math.abs(f7) / j);
            }
            f3 = f5;
          }
          else
          {
            f3 = f2;
            bool = false;
          }
        }
        f5 = f4;
      }
    }
  }
  
  private void recomputeScrollPosition(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!this.mItems.isEmpty()))
    {
      int j = paramInt3 + (paramInt1 - getPaddingLeft() - getPaddingRight());
      int k = paramInt4 + (paramInt2 - getPaddingLeft() - getPaddingRight());
      int m = (int)(getScrollX() / k * j);
      scrollTo(m, getScrollY());
      if (!this.mScroller.isFinished())
      {
        int n = this.mScroller.getDuration() - this.mScroller.timePassed();
        ViewPager.ItemInfo localItemInfo2 = infoForPosition(this.mCurItem);
        this.mScroller.startScroll(m, 0, (int)(localItemInfo2.offset * paramInt1), 0, n);
      }
      return;
    }
    ViewPager.ItemInfo localItemInfo1 = infoForPosition(this.mCurItem);
    if (localItemInfo1 != null) {}
    for (float f = Math.min(localItemInfo1.offset, this.mLastOffset);; f = 0.0F)
    {
      int i = (int)(f * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (i == getScrollX()) {
        break;
      }
      completeScroll(false);
      scrollTo(i, getScrollY());
      return;
    }
  }
  
  private void removeNonDecorViews()
  {
    for (int i = 0; i < getChildCount(); i++) {
      if (!((ViewPager.LayoutParams)getChildAt(i).getLayoutParams()).isDecor)
      {
        removeViewAt(i);
        i--;
      }
    }
  }
  
  private void requestParentDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null) {
      localViewParent.requestDisallowInterceptTouchEvent(paramBoolean);
    }
  }
  
  private void scrollToItem(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    ViewPager.ItemInfo localItemInfo = infoForPosition(paramInt1);
    if (localItemInfo != null) {}
    for (int i = (int)(getClientWidth() * Math.max(this.mFirstOffset, Math.min(localItemInfo.offset, this.mLastOffset)));; i = 0)
    {
      if (paramBoolean1)
      {
        smoothScrollTo(i, 0, paramInt2);
        if ((paramBoolean2) && (this.mOnPageChangeListener != null)) {
          this.mOnPageChangeListener.onPageSelected(paramInt1);
        }
        if ((paramBoolean2) && (this.mInternalPageChangeListener != null)) {
          this.mInternalPageChangeListener.onPageSelected(paramInt1);
        }
        return;
      }
      if ((paramBoolean2) && (this.mOnPageChangeListener != null)) {
        this.mOnPageChangeListener.onPageSelected(paramInt1);
      }
      if ((paramBoolean2) && (this.mInternalPageChangeListener != null)) {
        this.mInternalPageChangeListener.onPageSelected(paramInt1);
      }
      completeScroll(false);
      scrollTo(i, 0);
      pageScrolled(i);
      return;
    }
  }
  
  private void setScrollState(int paramInt)
  {
    if (this.mScrollState == paramInt) {
      return;
    }
    this.mScrollState = paramInt;
    if (this.mPageTransformer != null) {
      if (paramInt == 0) {
        break label50;
      }
    }
    label50:
    for (boolean bool = true;; bool = false)
    {
      enableLayers(bool);
      if (this.mOnPageChangeListener == null) {
        break;
      }
      this.mOnPageChangeListener.onPageScrollStateChanged(paramInt);
      return;
    }
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.mScrollingCacheEnabled != paramBoolean) {
      this.mScrollingCacheEnabled = paramBoolean;
    }
  }
  
  private void sortChildDrawingOrder()
  {
    if (this.mDrawingOrder != 0)
    {
      if (this.mDrawingOrderedChildren == null) {
        this.mDrawingOrderedChildren = new ArrayList();
      }
      for (;;)
      {
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
          View localView = getChildAt(j);
          this.mDrawingOrderedChildren.add(localView);
        }
        this.mDrawingOrderedChildren.clear();
      }
      Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i = paramArrayList.size();
    int j = getDescendantFocusability();
    if (j != 393216) {
      for (int k = 0; k < getChildCount(); k++)
      {
        View localView = getChildAt(k);
        if (localView.getVisibility() == 0)
        {
          ViewPager.ItemInfo localItemInfo = infoForChild(localView);
          if ((localItemInfo != null) && (localItemInfo.position == this.mCurItem)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
      }
    }
    if (((j == 262144) && (i != paramArrayList.size())) || (!isFocusable())) {}
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null)) {
      return;
    }
    paramArrayList.add(this);
  }
  
  ViewPager.ItemInfo addNewItem(int paramInt1, int paramInt2)
  {
    ViewPager.ItemInfo localItemInfo = new ViewPager.ItemInfo();
    localItemInfo.position = paramInt1;
    localItemInfo.object = this.mAdapter.instantiateItem(this, paramInt1);
    localItemInfo.widthFactor = this.mAdapter.getPageWidth(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 >= this.mItems.size()))
    {
      this.mItems.add(localItemInfo);
      return localItemInfo;
    }
    this.mItems.add(paramInt2, localItemInfo);
    return localItemInfo;
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    for (int i = 0; i < getChildCount(); i++)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ViewPager.ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo != null) && (localItemInfo.position == this.mCurItem)) {
          localView.addTouchables(paramArrayList);
        }
      }
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams)) {}
    for (ViewGroup.LayoutParams localLayoutParams = generateLayoutParams(paramLayoutParams);; localLayoutParams = paramLayoutParams)
    {
      ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localLayoutParams;
      localLayoutParams1.isDecor |= paramView instanceof ViewPager.Decor;
      if (this.mInLayout)
      {
        if ((localLayoutParams1 != null) && (localLayoutParams1.isDecor)) {
          throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        localLayoutParams1.needsMeasure = true;
        addViewInLayout(paramView, paramInt, localLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, localLayoutParams);
      return;
    }
  }
  
  public boolean arrowScroll(int paramInt)
  {
    View localView1 = findFocus();
    View localView2;
    View localView3;
    boolean bool;
    label86:
    ViewParent localViewParent1;
    if (localView1 == this)
    {
      localView2 = null;
      localView3 = FocusFinder.getInstance().findNextFocus(this, localView2, paramInt);
      if ((localView3 == null) || (localView3 == localView2)) {
        break label324;
      }
      if (paramInt != 17) {
        break label259;
      }
      int k = getChildRectInPagerCoordinates(this.mTempRect, localView3).left;
      int m = getChildRectInPagerCoordinates(this.mTempRect, localView2).left;
      if ((localView2 != null) && (k >= m))
      {
        bool = pageLeft();
        if (bool) {
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        }
        return bool;
      }
    }
    else
    {
      if (localView1 == null) {
        break label370;
      }
      localViewParent1 = localView1.getParent();
      if (!(localViewParent1 instanceof ViewGroup)) {
        break label375;
      }
      if (localViewParent1 != this) {}
    }
    label259:
    label324:
    label370:
    label375:
    for (int n = 1;; n = 0)
    {
      if (n == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView1.getClass().getSimpleName());
        ViewParent localViewParent2 = localView1.getParent();
        for (;;)
        {
          if ((localViewParent2 instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localViewParent2.getClass().getSimpleName());
            localViewParent2 = localViewParent2.getParent();
            continue;
            localViewParent1 = localViewParent1.getParent();
            break;
          }
        }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + localStringBuilder.toString());
        localView2 = null;
        break;
        bool = localView3.requestFocus();
        break label86;
        if (paramInt == 66)
        {
          int i = getChildRectInPagerCoordinates(this.mTempRect, localView3).left;
          int j = getChildRectInPagerCoordinates(this.mTempRect, localView2).left;
          if ((localView2 != null) && (i <= j))
          {
            bool = pageRight();
            break label86;
          }
          bool = localView3.requestFocus();
          break label86;
          if ((paramInt == 17) || (paramInt == 1))
          {
            bool = pageLeft();
            break label86;
          }
          if ((paramInt == 66) || (paramInt == 2))
          {
            bool = pageRight();
            break label86;
          }
        }
        bool = false;
        break label86;
      }
      localView2 = localView1;
      break;
    }
  }
  
  public boolean beginFakeDrag()
  {
    if (this.mIsBeingDragged) {
      return false;
    }
    this.mFakeDragging = true;
    setScrollState(1);
    this.mLastMotionX = 0.0F;
    this.mInitialMotionX = 0.0F;
    if (this.mVelocityTracker == null) {
      this.mVelocityTracker = VelocityTracker.obtain();
    }
    for (;;)
    {
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 0, 0.0F, 0.0F, 0);
      this.mVelocityTracker.addMovement(localMotionEvent);
      localMotionEvent.recycle();
      this.mFakeDragBeginTime = l;
      return true;
      this.mVelocityTracker.clear();
    }
  }
  
  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int k;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i = paramView.getScrollX();
      int j = paramView.getScrollY();
      k = -1 + localViewGroup.getChildCount();
      if (k >= 0)
      {
        localView = localViewGroup.getChildAt(k);
        if ((paramInt2 + i < localView.getLeft()) || (paramInt2 + i >= localView.getRight()) || (paramInt3 + j < localView.getTop()) || (paramInt3 + j >= localView.getBottom()) || (!canScroll(localView, true, paramInt1, paramInt2 + i - localView.getLeft(), paramInt3 + j - localView.getTop()))) {}
      }
    }
    while ((paramBoolean) && (ViewCompat.canScrollHorizontally(paramView, -paramInt1)))
    {
      View localView;
      return true;
      k--;
      break;
    }
    return false;
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    boolean bool = true;
    if (this.mAdapter == null) {}
    int i;
    int j;
    do
    {
      return false;
      i = getClientWidth();
      j = getScrollX();
      if (paramInt < 0)
      {
        if (j > (int)(i * this.mFirstOffset)) {}
        for (;;)
        {
          return bool;
          bool = false;
        }
      }
    } while (paramInt <= 0);
    if (j < (int)(i * this.mLastOffset)) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ViewPager.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if ((!this.mScroller.isFinished()) && (this.mScroller.computeScrollOffset()))
    {
      int i = getScrollX();
      int j = getScrollY();
      int k = this.mScroller.getCurrX();
      int m = this.mScroller.getCurrY();
      if ((i != k) || (j != m))
      {
        scrollTo(k, m);
        if (!pageScrolled(k))
        {
          this.mScroller.abortAnimation();
          scrollTo(0, m);
        }
      }
      ViewCompat.postInvalidateOnAnimation(this);
      return;
    }
    completeScroll(true);
  }
  
  void dataSetChanged()
  {
    int i = this.mAdapter.getCount();
    this.mExpectedAdapterCount = i;
    int j;
    int m;
    int n;
    int i1;
    int i2;
    label61:
    ViewPager.ItemInfo localItemInfo;
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    if ((this.mItems.size() < 1 + 2 * this.mOffscreenPageLimit) && (this.mItems.size() < i))
    {
      j = 1;
      int k = this.mCurItem;
      m = 0;
      n = k;
      i1 = j;
      i2 = 0;
      if (i2 >= this.mItems.size()) {
        break label307;
      }
      localItemInfo = (ViewPager.ItemInfo)this.mItems.get(i2);
      i5 = this.mAdapter.getItemPosition(localItemInfo.object);
      if (i5 != -1) {
        break label153;
      }
      i6 = i2;
      i7 = m;
      i8 = n;
      i9 = i1;
    }
    for (;;)
    {
      int i10 = i6 + 1;
      i1 = i9;
      n = i8;
      m = i7;
      i2 = i10;
      break label61;
      j = 0;
      break;
      label153:
      int i11;
      if (i5 == -2)
      {
        this.mItems.remove(i2);
        i11 = i2 - 1;
        if (m == 0)
        {
          this.mAdapter.startUpdate(this);
          m = 1;
        }
        this.mAdapter.destroyItem(this, localItemInfo.position, localItemInfo.object);
        if (this.mCurItem == localItemInfo.position)
        {
          int i12 = Math.max(0, Math.min(this.mCurItem, i - 1));
          i6 = i11;
          i7 = m;
          i8 = i12;
          i9 = 1;
        }
      }
      else
      {
        if (localItemInfo.position != i5)
        {
          if (localItemInfo.position == this.mCurItem) {
            n = i5;
          }
          localItemInfo.position = i5;
          i6 = i2;
          i7 = m;
          i8 = n;
          i9 = 1;
          continue;
          label307:
          if (m != 0) {
            this.mAdapter.finishUpdate(this);
          }
          Collections.sort(this.mItems, COMPARATOR);
          if (i1 != 0)
          {
            int i3 = getChildCount();
            for (int i4 = 0; i4 < i3; i4++)
            {
              ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)getChildAt(i4).getLayoutParams();
              if (!localLayoutParams.isDecor) {
                localLayoutParams.widthFactor = 0.0F;
              }
            }
            setCurrentItemInternal(n, false, true);
            requestLayout();
          }
          return;
        }
        i6 = i2;
        i7 = m;
        i8 = n;
        i9 = i1;
        continue;
      }
      i6 = i11;
      i7 = m;
      i8 = n;
      i9 = 1;
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (executeKeyEvent(paramKeyEvent));
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool;
    if (paramAccessibilityEvent.getEventType() == 4096)
    {
      bool = super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
      return bool;
    }
    int i = getChildCount();
    for (int j = 0;; j++)
    {
      bool = false;
      if (j >= i) {
        break;
      }
      View localView = getChildAt(j);
      if (localView.getVisibility() == 0)
      {
        ViewPager.ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo != null) && (localItemInfo.position == this.mCurItem) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
          return true;
        }
      }
    }
  }
  
  float distanceInfluenceForSnapDuration(float paramFloat)
  {
    return (float)Math.sin((float)(0.47123891676382D * (paramFloat - 0.5F)));
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i = ViewCompat.getOverScrollMode(this);
    boolean bool2;
    if ((i == 0) || ((i == 1) && (this.mAdapter != null) && (this.mAdapter.getCount() > 1)))
    {
      boolean bool1 = this.mLeftEdge.isFinished();
      bool2 = false;
      if (!bool1)
      {
        int n = paramCanvas.save();
        int i1 = getHeight() - getPaddingTop() - getPaddingBottom();
        int i2 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i1 + getPaddingTop(), this.mFirstOffset * i2);
        this.mLeftEdge.setSize(i1, i2);
        bool2 = false | this.mLeftEdge.draw(paramCanvas);
        paramCanvas.restoreToCount(n);
      }
      if (!this.mRightEdge.isFinished())
      {
        int j = paramCanvas.save();
        int k = getWidth();
        int m = getHeight() - getPaddingTop() - getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(1.0F + this.mLastOffset) * k);
        this.mRightEdge.setSize(m, k);
        bool2 |= this.mRightEdge.draw(paramCanvas);
        paramCanvas.restoreToCount(j);
      }
    }
    for (;;)
    {
      if (bool2) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      return;
      this.mLeftEdge.finish();
      this.mRightEdge.finish();
      bool2 = false;
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.mMarginDrawable;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  public void endFakeDrag()
  {
    if (!this.mFakeDragging) {
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }
    VelocityTracker localVelocityTracker = this.mVelocityTracker;
    localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
    int i = (int)VelocityTrackerCompat.getXVelocity(localVelocityTracker, this.mActivePointerId);
    this.mPopulatePending = true;
    int j = getClientWidth();
    int k = getScrollX();
    ViewPager.ItemInfo localItemInfo = infoForCurrentScrollPosition();
    setCurrentItemInternal(determineTargetPage(localItemInfo.position, (k / j - localItemInfo.offset) / localItemInfo.widthFactor, i, (int)(this.mLastMotionX - this.mInitialMotionX)), true, true, i);
    endDrag();
    this.mFakeDragging = false;
  }
  
  public boolean executeKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0) {
      switch (paramKeyEvent.getKeyCode())
      {
      }
    }
    do
    {
      do
      {
        return false;
        return arrowScroll(17);
        return arrowScroll(66);
      } while (Build.VERSION.SDK_INT < 11);
      if (KeyEventCompat.hasNoModifiers(paramKeyEvent)) {
        return arrowScroll(2);
      }
    } while (!KeyEventCompat.hasModifiers(paramKeyEvent, 1));
    return arrowScroll(1);
  }
  
  public void fakeDragBy(float paramFloat)
  {
    if (!this.mFakeDragging) {
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }
    this.mLastMotionX = (paramFloat + this.mLastMotionX);
    float f1 = getScrollX() - paramFloat;
    int i = getClientWidth();
    float f2 = i * this.mFirstOffset;
    float f3 = i * this.mLastOffset;
    ViewPager.ItemInfo localItemInfo1 = (ViewPager.ItemInfo)this.mItems.get(0);
    ViewPager.ItemInfo localItemInfo2 = (ViewPager.ItemInfo)this.mItems.get(-1 + this.mItems.size());
    if (localItemInfo1.position != 0) {}
    for (float f4 = localItemInfo1.offset * i;; f4 = f2)
    {
      if (localItemInfo2.position != -1 + this.mAdapter.getCount()) {}
      for (float f5 = localItemInfo2.offset * i;; f5 = f3)
      {
        if (f1 < f4) {}
        for (;;)
        {
          this.mLastMotionX += f4 - (int)f4;
          scrollTo((int)f4, getScrollY());
          pageScrolled((int)f4);
          long l = SystemClock.uptimeMillis();
          MotionEvent localMotionEvent = MotionEvent.obtain(this.mFakeDragBeginTime, l, 2, this.mLastMotionX, 0.0F, 0);
          this.mVelocityTracker.addMovement(localMotionEvent);
          localMotionEvent.recycle();
          return;
          if (f1 > f5) {
            f4 = f5;
          } else {
            f4 = f1;
          }
        }
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewPager.LayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewPager.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  public PagerAdapter getAdapter()
  {
    return this.mAdapter;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.mDrawingOrder == 2) {
      paramInt2 = paramInt1 - 1 - paramInt2;
    }
    return ((ViewPager.LayoutParams)((View)this.mDrawingOrderedChildren.get(paramInt2)).getLayoutParams()).childIndex;
  }
  
  public int getCurrentItem()
  {
    return this.mCurItem;
  }
  
  public int getOffscreenPageLimit()
  {
    return this.mOffscreenPageLimit;
  }
  
  public int getPageMargin()
  {
    return this.mPageMargin;
  }
  
  ViewPager.ItemInfo infoForAnyChild(View paramView)
  {
    for (;;)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this) {
        break;
      }
      if ((localViewParent == null) || (!(localViewParent instanceof View))) {
        return null;
      }
      paramView = (View)localViewParent;
    }
    return infoForChild(paramView);
  }
  
  ViewPager.ItemInfo infoForChild(View paramView)
  {
    for (int i = 0; i < this.mItems.size(); i++)
    {
      ViewPager.ItemInfo localItemInfo = (ViewPager.ItemInfo)this.mItems.get(i);
      if (this.mAdapter.isViewFromObject(paramView, localItemInfo.object)) {
        return localItemInfo;
      }
    }
    return null;
  }
  
  ViewPager.ItemInfo infoForPosition(int paramInt)
  {
    for (int i = 0; i < this.mItems.size(); i++)
    {
      ViewPager.ItemInfo localItemInfo = (ViewPager.ItemInfo)this.mItems.get(i);
      if (localItemInfo.position == paramInt) {
        return localItemInfo;
      }
    }
    return null;
  }
  
  void initViewPager()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.mScroller = new Scroller(localContext, sInterpolator);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f = localContext.getResources().getDisplayMetrics().density;
    this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
    this.mMinimumVelocity = ((int)(400.0F * f));
    this.mMaximumVelocity = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.mLeftEdge = new EdgeEffectCompat(localContext);
    this.mRightEdge = new EdgeEffectCompat(localContext);
    this.mFlingDistance = ((int)(25.0F * f));
    this.mCloseEnough = ((int)(2.0F * f));
    this.mDefaultGutterSize = ((int)(16.0F * f));
    ViewCompat.setAccessibilityDelegate(this, new ViewPager.MyAccessibilityDelegate(this));
    if (ViewCompat.getImportantForAccessibility(this) == 0) {
      ViewCompat.setImportantForAccessibility(this, 1);
    }
  }
  
  public boolean isFakeDragging()
  {
    return this.mFakeDragging;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.mFirstLayout = true;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.mEndScrollRunnable);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i;
    int j;
    float f1;
    ViewPager.ItemInfo localItemInfo;
    float f2;
    int k;
    int m;
    int n;
    int i1;
    if ((this.mPageMargin > 0) && (this.mMarginDrawable != null) && (this.mItems.size() > 0) && (this.mAdapter != null))
    {
      i = getScrollX();
      j = getWidth();
      f1 = this.mPageMargin / j;
      localItemInfo = (ViewPager.ItemInfo)this.mItems.get(0);
      f2 = localItemInfo.offset;
      k = this.mItems.size();
      m = localItemInfo.position;
      n = ((ViewPager.ItemInfo)this.mItems.get(k - 1)).position;
      i1 = 0;
    }
    for (int i2 = m;; i2++)
    {
      float f4;
      if (i2 < n)
      {
        while ((i2 > localItemInfo.position) && (i1 < k))
        {
          ArrayList localArrayList = this.mItems;
          i1++;
          localItemInfo = (ViewPager.ItemInfo)localArrayList.get(i1);
        }
        if (i2 != localItemInfo.position) {
          break label272;
        }
        f4 = (localItemInfo.offset + localItemInfo.widthFactor) * j;
      }
      label272:
      float f3;
      for (f2 = f1 + (localItemInfo.offset + localItemInfo.widthFactor);; f2 += f3 + f1)
      {
        if (f4 + this.mPageMargin > i)
        {
          this.mMarginDrawable.setBounds((int)f4, this.mTopPageBounds, (int)(0.5F + (f4 + this.mPageMargin)), this.mBottomPageBounds);
          this.mMarginDrawable.draw(paramCanvas);
        }
        if (f4 <= i + j) {
          break;
        }
        return;
        f3 = this.mAdapter.getPageWidth(i2);
        f4 = (f2 + f3) * j;
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 0xFF & paramMotionEvent.getAction();
    if ((i == 3) || (i == 1))
    {
      this.mIsBeingDragged = false;
      this.mIsUnableToDrag = false;
      this.mActivePointerId = -1;
      if (this.mVelocityTracker != null)
      {
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
      }
    }
    do
    {
      return false;
      if (i == 0) {
        break;
      }
      if (this.mIsBeingDragged) {
        return true;
      }
    } while (this.mIsUnableToDrag);
    switch (i)
    {
    }
    for (;;)
    {
      if (this.mVelocityTracker == null) {
        this.mVelocityTracker = VelocityTracker.obtain();
      }
      this.mVelocityTracker.addMovement(paramMotionEvent);
      return this.mIsBeingDragged;
      int j = this.mActivePointerId;
      if (j != -1)
      {
        int k = MotionEventCompat.findPointerIndex(paramMotionEvent, j);
        float f3 = MotionEventCompat.getX(paramMotionEvent, k);
        float f4 = f3 - this.mLastMotionX;
        float f5 = Math.abs(f4);
        float f6 = MotionEventCompat.getY(paramMotionEvent, k);
        float f7 = Math.abs(f6 - this.mInitialMotionY);
        if ((f4 != 0.0F) && (!isGutterDrag(this.mLastMotionX, f4)) && (canScroll(this, false, (int)f4, (int)f3, (int)f6)))
        {
          this.mLastMotionX = f3;
          this.mLastMotionY = f6;
          this.mIsUnableToDrag = true;
          return false;
        }
        float f8;
        if ((f5 > this.mTouchSlop) && (0.5F * f5 > f7))
        {
          this.mIsBeingDragged = true;
          requestParentDisallowInterceptTouchEvent(true);
          setScrollState(1);
          if (f4 > 0.0F)
          {
            f8 = this.mInitialMotionX + this.mTouchSlop;
            label317:
            this.mLastMotionX = f8;
            this.mLastMotionY = f6;
            setScrollingCacheEnabled(true);
          }
        }
        while ((this.mIsBeingDragged) && (performDrag(f3)))
        {
          ViewCompat.postInvalidateOnAnimation(this);
          break;
          f8 = this.mInitialMotionX - this.mTouchSlop;
          break label317;
          if (f7 > this.mTouchSlop) {
            this.mIsUnableToDrag = true;
          }
        }
        float f1 = paramMotionEvent.getX();
        this.mInitialMotionX = f1;
        this.mLastMotionX = f1;
        float f2 = paramMotionEvent.getY();
        this.mInitialMotionY = f2;
        this.mLastMotionY = f2;
        this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
        this.mIsUnableToDrag = false;
        this.mScroller.computeScrollOffset();
        if ((this.mScrollState == 2) && (Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) > this.mCloseEnough))
        {
          this.mScroller.abortAnimation();
          this.mPopulatePending = false;
          populate();
          this.mIsBeingDragged = true;
          requestParentDisallowInterceptTouchEvent(true);
          setScrollState(1);
        }
        else
        {
          completeScroll(false);
          this.mIsBeingDragged = false;
          continue;
          onSecondaryPointerUp(paramMotionEvent);
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = paramInt3 - paramInt1;
    int k = paramInt4 - paramInt2;
    int m = getPaddingLeft();
    int n = getPaddingTop();
    int i1 = getPaddingRight();
    int i2 = getPaddingBottom();
    int i3 = getScrollX();
    int i4 = 0;
    int i5 = 0;
    View localView2;
    int i16;
    label156:
    int i17;
    int i19;
    int i20;
    label208:
    int i9;
    int i10;
    int i11;
    if (i5 < i)
    {
      localView2 = getChildAt(i5);
      if (localView2.getVisibility() == 8) {
        break label659;
      }
      ViewPager.LayoutParams localLayoutParams2 = (ViewPager.LayoutParams)localView2.getLayoutParams();
      if (!localLayoutParams2.isDecor) {
        break label659;
      }
      int i13 = 0x7 & localLayoutParams2.gravity;
      int i14 = 0x70 & localLayoutParams2.gravity;
      switch (i13)
      {
      case 2: 
      case 4: 
      default: 
        i16 = m;
        switch (i14)
        {
        default: 
          i17 = n;
          int i25 = i2;
          i19 = n;
          i20 = i25;
          int i21 = i16 + i3;
          localView2.layout(i21, i17, i21 + localView2.getMeasuredWidth(), i17 + localView2.getMeasuredHeight());
          i9 = i4 + 1;
          i10 = i19;
          i2 = i20;
          i11 = i1;
        }
        break;
      }
    }
    for (int i12 = m;; i12 = m)
    {
      i5++;
      m = i12;
      i1 = i11;
      n = i10;
      i4 = i9;
      break;
      int i26 = m + localView2.getMeasuredWidth();
      i16 = m;
      m = i26;
      break label156;
      i16 = Math.max((j - localView2.getMeasuredWidth()) / 2, m);
      break label156;
      int i15 = j - i1 - localView2.getMeasuredWidth();
      i1 += localView2.getMeasuredWidth();
      i16 = i15;
      break label156;
      int i23 = n + localView2.getMeasuredHeight();
      int i24 = n;
      i20 = i2;
      i19 = i23;
      i17 = i24;
      break label208;
      i17 = Math.max((k - localView2.getMeasuredHeight()) / 2, n);
      int i22 = i2;
      i19 = n;
      i20 = i22;
      break label208;
      i17 = k - i2 - localView2.getMeasuredHeight();
      int i18 = i2 + localView2.getMeasuredHeight();
      i19 = n;
      i20 = i18;
      break label208;
      int i6 = j - m - i1;
      for (int i7 = 0; i7 < i; i7++)
      {
        View localView1 = getChildAt(i7);
        if (localView1.getVisibility() != 8)
        {
          ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localView1.getLayoutParams();
          if (!localLayoutParams1.isDecor)
          {
            ViewPager.ItemInfo localItemInfo = infoForChild(localView1);
            if (localItemInfo != null)
            {
              int i8 = m + (int)(i6 * localItemInfo.offset);
              if (localLayoutParams1.needsMeasure)
              {
                localLayoutParams1.needsMeasure = false;
                localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(i6 * localLayoutParams1.widthFactor), 1073741824), View.MeasureSpec.makeMeasureSpec(k - n - i2, 1073741824));
              }
              localView1.layout(i8, n, i8 + localView1.getMeasuredWidth(), n + localView1.getMeasuredHeight());
            }
          }
        }
      }
      this.mTopPageBounds = n;
      this.mBottomPageBounds = (k - i2);
      this.mDecorChildCount = i4;
      if (this.mFirstLayout) {
        scrollToItem(this.mCurItem, false, 0, false);
      }
      this.mFirstLayout = false;
      return;
      label659:
      i9 = i4;
      i10 = n;
      i11 = i1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    int i = getMeasuredWidth();
    this.mGutterSize = Math.min(i / 10, this.mDefaultGutterSize);
    int j = i - getPaddingLeft() - getPaddingRight();
    int k = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int m = getChildCount();
    int n = 0;
    View localView2;
    ViewPager.LayoutParams localLayoutParams2;
    int i5;
    int i6;
    int i7;
    label167:
    int i8;
    label182:
    label192:
    int i9;
    int i10;
    if (n < m)
    {
      localView2 = getChildAt(n);
      if (localView2.getVisibility() != 8)
      {
        localLayoutParams2 = (ViewPager.LayoutParams)localView2.getLayoutParams();
        if ((localLayoutParams2 != null) && (localLayoutParams2.isDecor))
        {
          int i3 = 0x7 & localLayoutParams2.gravity;
          int i4 = 0x70 & localLayoutParams2.gravity;
          i5 = -2147483648;
          i6 = -2147483648;
          if ((i4 != 48) && (i4 != 80)) {
            break label294;
          }
          i7 = 1;
          if ((i3 != 3) && (i3 != 5)) {
            break label300;
          }
          i8 = 1;
          if (i7 == 0) {
            break label306;
          }
          i5 = 1073741824;
          if (localLayoutParams2.width == -2) {
            break label478;
          }
          i9 = 1073741824;
          if (localLayoutParams2.width == -1) {
            break label471;
          }
          i10 = localLayoutParams2.width;
        }
      }
    }
    for (;;)
    {
      if (localLayoutParams2.height != -2)
      {
        i6 = 1073741824;
        if (localLayoutParams2.height == -1) {}
      }
      for (int i11 = localLayoutParams2.height;; i11 = k)
      {
        localView2.measure(View.MeasureSpec.makeMeasureSpec(i10, i9), View.MeasureSpec.makeMeasureSpec(i11, i6));
        if (i7 != 0) {
          k -= localView2.getMeasuredHeight();
        }
        for (;;)
        {
          n++;
          break;
          label294:
          i7 = 0;
          break label167;
          label300:
          i8 = 0;
          break label182;
          label306:
          if (i8 == 0) {
            break label192;
          }
          i6 = 1073741824;
          break label192;
          if (i8 != 0) {
            j -= localView2.getMeasuredWidth();
          }
        }
        this.mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
        this.mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        int i1 = getChildCount();
        for (int i2 = 0; i2 < i1; i2++)
        {
          View localView1 = getChildAt(i2);
          if (localView1.getVisibility() != 8)
          {
            ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localView1.getLayoutParams();
            if ((localLayoutParams1 == null) || (!localLayoutParams1.isDecor)) {
              localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(j * localLayoutParams1.widthFactor), 1073741824), this.mChildHeightMeasureSpec);
            }
          }
        }
        return;
      }
      label471:
      i10 = j;
      continue;
      label478:
      i9 = i5;
      i10 = j;
    }
  }
  
  protected void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.mDecorChildCount > 0)
    {
      int m = getScrollX();
      int n = getPaddingLeft();
      int i1 = getPaddingRight();
      int i2 = getWidth();
      int i3 = getChildCount();
      int i4 = 0;
      while (i4 < i3)
      {
        View localView2 = getChildAt(i4);
        ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView2.getLayoutParams();
        int i7;
        int i8;
        if (!localLayoutParams.isDecor)
        {
          int i15 = i1;
          i7 = n;
          i8 = i15;
          i4++;
          int i10 = i8;
          n = i7;
          i1 = i10;
        }
        else
        {
          int i5;
          switch (0x7 & localLayoutParams.gravity)
          {
          case 2: 
          case 4: 
          default: 
            i5 = n;
            int i14 = i1;
            i7 = n;
            i8 = i14;
          }
          for (;;)
          {
            int i9 = i5 + m - localView2.getLeft();
            if (i9 == 0) {
              break;
            }
            localView2.offsetLeftAndRight(i9);
            break;
            int i12 = n + localView2.getWidth();
            int i13 = n;
            i8 = i1;
            i7 = i12;
            i5 = i13;
            continue;
            i5 = Math.max((i2 - localView2.getMeasuredWidth()) / 2, n);
            int i11 = i1;
            i7 = n;
            i8 = i11;
            continue;
            i5 = i2 - i1 - localView2.getMeasuredWidth();
            int i6 = i1 + localView2.getMeasuredWidth();
            i7 = n;
            i8 = i6;
          }
        }
      }
    }
    if (this.mOnPageChangeListener != null) {
      this.mOnPageChangeListener.onPageScrolled(paramInt1, paramFloat, paramInt2);
    }
    if (this.mInternalPageChangeListener != null) {
      this.mInternalPageChangeListener.onPageScrolled(paramInt1, paramFloat, paramInt2);
    }
    if (this.mPageTransformer != null)
    {
      int i = getScrollX();
      int j = getChildCount();
      int k = 0;
      if (k < j)
      {
        View localView1 = getChildAt(k);
        if (((ViewPager.LayoutParams)localView1.getLayoutParams()).isDecor) {}
        for (;;)
        {
          k++;
          break;
          float f = (localView1.getLeft() - i) / getClientWidth();
          this.mPageTransformer.transformPage(localView1, f);
        }
      }
    }
    this.mCalledSuper = true;
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i = -1;
    int j = getChildCount();
    int k;
    if ((paramInt & 0x2) != 0)
    {
      i = 1;
      k = 0;
    }
    while (k != j)
    {
      View localView = getChildAt(k);
      if (localView.getVisibility() == 0)
      {
        ViewPager.ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo != null) && (localItemInfo.position == this.mCurItem) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          k = j - 1;
          j = i;
          continue;
        }
      }
      k += i;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ViewPager.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    ViewPager.SavedState localSavedState = (ViewPager.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (this.mAdapter != null)
    {
      this.mAdapter.restoreState(localSavedState.adapterState, localSavedState.loader);
      setCurrentItemInternal(localSavedState.position, false, true);
      return;
    }
    this.mRestoredCurItem = localSavedState.position;
    this.mRestoredAdapterState = localSavedState.adapterState;
    this.mRestoredClassLoader = localSavedState.loader;
  }
  
  public Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    localSavedState.position = this.mCurItem;
    if (this.mAdapter != null) {
      localSavedState.adapterState = this.mAdapter.saveState();
    }
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      recomputeScrollPosition(paramInt1, paramInt3, this.mPageMargin, this.mPageMargin);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.mFakeDragging) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    if ((this.mAdapter == null) || (this.mAdapter.getCount() == 0)) {
      return false;
    }
    if (this.mVelocityTracker == null) {
      this.mVelocityTracker = VelocityTracker.obtain();
    }
    this.mVelocityTracker.addMovement(paramMotionEvent);
    int i = 0xFF & paramMotionEvent.getAction();
    boolean bool1 = false;
    switch (i)
    {
    }
    for (;;)
    {
      if (bool1) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      return true;
      this.mScroller.abortAnimation();
      this.mPopulatePending = false;
      populate();
      float f6 = paramMotionEvent.getX();
      this.mInitialMotionX = f6;
      this.mLastMotionX = f6;
      float f7 = paramMotionEvent.getY();
      this.mInitialMotionY = f7;
      this.mLastMotionY = f7;
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      bool1 = false;
      continue;
      float f3;
      if (!this.mIsBeingDragged)
      {
        int i1 = MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId);
        float f1 = MotionEventCompat.getX(paramMotionEvent, i1);
        float f2 = Math.abs(f1 - this.mLastMotionX);
        f3 = MotionEventCompat.getY(paramMotionEvent, i1);
        float f4 = Math.abs(f3 - this.mLastMotionY);
        if ((f2 > this.mTouchSlop) && (f2 > f4))
        {
          this.mIsBeingDragged = true;
          requestParentDisallowInterceptTouchEvent(true);
          if (f1 - this.mInitialMotionX <= 0.0F) {
            break label382;
          }
        }
      }
      label382:
      for (float f5 = this.mInitialMotionX + this.mTouchSlop;; f5 = this.mInitialMotionX - this.mTouchSlop)
      {
        this.mLastMotionX = f5;
        this.mLastMotionY = f3;
        setScrollState(1);
        setScrollingCacheEnabled(true);
        ViewParent localViewParent = getParent();
        if (localViewParent != null) {
          localViewParent.requestDisallowInterceptTouchEvent(true);
        }
        boolean bool4 = this.mIsBeingDragged;
        bool1 = false;
        if (!bool4) {
          break;
        }
        bool1 = false | performDrag(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId)));
        break;
      }
      boolean bool3 = this.mIsBeingDragged;
      bool1 = false;
      if (bool3)
      {
        VelocityTracker localVelocityTracker = this.mVelocityTracker;
        localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
        int k = (int)VelocityTrackerCompat.getXVelocity(localVelocityTracker, this.mActivePointerId);
        this.mPopulatePending = true;
        int m = getClientWidth();
        int n = getScrollX();
        ViewPager.ItemInfo localItemInfo = infoForCurrentScrollPosition();
        setCurrentItemInternal(determineTargetPage(localItemInfo.position, (n / m - localItemInfo.offset) / localItemInfo.widthFactor, k, (int)(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId)) - this.mInitialMotionX)), true, true, k);
        this.mActivePointerId = -1;
        endDrag();
        bool1 = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
        continue;
        boolean bool2 = this.mIsBeingDragged;
        bool1 = false;
        if (bool2)
        {
          scrollToItem(this.mCurItem, true, 0, false);
          this.mActivePointerId = -1;
          endDrag();
          bool1 = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
          continue;
          int j = MotionEventCompat.getActionIndex(paramMotionEvent);
          this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, j);
          this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, j);
          bool1 = false;
          continue;
          onSecondaryPointerUp(paramMotionEvent);
          this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId));
          bool1 = false;
        }
      }
    }
  }
  
  boolean pageLeft()
  {
    if (this.mCurItem > 0)
    {
      setCurrentItem(-1 + this.mCurItem, true);
      return true;
    }
    return false;
  }
  
  boolean pageRight()
  {
    if ((this.mAdapter != null) && (this.mCurItem < -1 + this.mAdapter.getCount()))
    {
      setCurrentItem(1 + this.mCurItem, true);
      return true;
    }
    return false;
  }
  
  void populate()
  {
    populate(this.mCurItem);
  }
  
  void populate(int paramInt)
  {
    int i16;
    ViewPager.ItemInfo localItemInfo1;
    int i;
    if (this.mCurItem != paramInt) {
      if (this.mCurItem < paramInt)
      {
        i16 = 66;
        ViewPager.ItemInfo localItemInfo13 = infoForPosition(this.mCurItem);
        this.mCurItem = paramInt;
        localItemInfo1 = localItemInfo13;
        i = i16;
      }
    }
    for (;;)
    {
      if (this.mAdapter == null) {
        sortChildDrawingOrder();
      }
      do
      {
        return;
        i16 = 17;
        break;
        if (this.mPopulatePending)
        {
          sortChildDrawingOrder();
          return;
        }
      } while (getWindowToken() == null);
      this.mAdapter.startUpdate(this);
      int j = this.mOffscreenPageLimit;
      int k = Math.max(0, this.mCurItem - j);
      int m = this.mAdapter.getCount();
      int n = Math.min(m - 1, j + this.mCurItem);
      if (m != this.mExpectedAdapterCount)
      {
        try
        {
          String str2 = getResources().getResourceName(getId());
          str1 = str2;
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          for (;;)
          {
            String str1 = Integer.toHexString(getId());
          }
        }
        throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.mExpectedAdapterCount + ", found: " + m + " Pager id: " + str1 + " Pager class: " + getClass() + " Problematic adapter: " + this.mAdapter.getClass());
      }
      int i1 = 0;
      ViewPager.ItemInfo localItemInfo2;
      if (i1 < this.mItems.size())
      {
        localItemInfo2 = (ViewPager.ItemInfo)this.mItems.get(i1);
        if (localItemInfo2.position >= this.mCurItem) {
          if (localItemInfo2.position != this.mCurItem) {
            break label1294;
          }
        }
      }
      for (;;)
      {
        if ((localItemInfo2 == null) && (m > 0)) {}
        for (ViewPager.ItemInfo localItemInfo3 = addNewItem(this.mCurItem, i1);; localItemInfo3 = localItemInfo2)
        {
          ViewPager.ItemInfo localItemInfo7;
          label358:
          int i7;
          float f1;
          label372:
          float f2;
          int i9;
          int i10;
          int i11;
          float f3;
          int i12;
          ViewPager.ItemInfo localItemInfo8;
          if (localItemInfo3 != null)
          {
            int i6 = i1 - 1;
            if (i6 < 0) {
              break label676;
            }
            localItemInfo7 = (ViewPager.ItemInfo)this.mItems.get(i6);
            i7 = getClientWidth();
            if (i7 > 0) {
              break label682;
            }
            f1 = 0.0F;
            int i8 = -1 + this.mCurItem;
            f2 = 0.0F;
            i9 = i8;
            i10 = i1;
            i11 = i6;
            if (i9 >= 0)
            {
              if ((f2 < f1) || (i9 >= k)) {
                break label784;
              }
              if (localItemInfo7 != null) {
                break label704;
              }
            }
            f3 = localItemInfo3.widthFactor;
            i12 = i10 + 1;
            if (f3 < 2.0F)
            {
              if (i12 >= this.mItems.size()) {
                break label889;
              }
              localItemInfo8 = (ViewPager.ItemInfo)this.mItems.get(i12);
              label466:
              if (i7 > 0) {
                break label895;
              }
            }
          }
          Object localObject2;
          int i14;
          int i15;
          label494:
          Object localObject1;
          label554:
          label704:
          label889:
          label895:
          for (float f4 = 0.0F;; f4 = 2.0F + getPaddingRight() / i7)
          {
            int i13 = 1 + this.mCurItem;
            localObject2 = localItemInfo8;
            i14 = i12;
            i15 = i13;
            if (i15 < m)
            {
              if ((f3 < f4) || (i15 <= n)) {
                break label1016;
              }
              if (localObject2 != null) {
                break label911;
              }
            }
            calculatePageOffsets(localItemInfo3, i10, localItemInfo1);
            PagerAdapter localPagerAdapter = this.mAdapter;
            int i2 = this.mCurItem;
            if (localItemInfo3 == null) {
              break label1153;
            }
            localObject1 = localItemInfo3.object;
            localPagerAdapter.setPrimaryItem(this, i2, localObject1);
            this.mAdapter.finishUpdate(this);
            int i3 = getChildCount();
            for (int i4 = 0; i4 < i3; i4++)
            {
              View localView3 = getChildAt(i4);
              ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView3.getLayoutParams();
              localLayoutParams.childIndex = i4;
              if ((!localLayoutParams.isDecor) && (localLayoutParams.widthFactor == 0.0F))
              {
                ViewPager.ItemInfo localItemInfo6 = infoForChild(localView3);
                if (localItemInfo6 != null)
                {
                  localLayoutParams.widthFactor = localItemInfo6.widthFactor;
                  localLayoutParams.position = localItemInfo6.position;
                }
              }
            }
            i1++;
            break;
            localItemInfo7 = null;
            break label358;
            f1 = 2.0F - localItemInfo3.widthFactor + getPaddingLeft() / i7;
            break label372;
            if ((i9 == localItemInfo7.position) && (!localItemInfo7.scrolling))
            {
              this.mItems.remove(i11);
              this.mAdapter.destroyItem(this, i9, localItemInfo7.object);
              i11--;
              i10--;
              if (i11 < 0) {
                break label778;
              }
              localItemInfo7 = (ViewPager.ItemInfo)this.mItems.get(i11);
            }
            for (;;)
            {
              i9--;
              break;
              localItemInfo7 = null;
              continue;
              if ((localItemInfo7 != null) && (i9 == localItemInfo7.position))
              {
                f2 += localItemInfo7.widthFactor;
                i11--;
                if (i11 >= 0) {
                  localItemInfo7 = (ViewPager.ItemInfo)this.mItems.get(i11);
                } else {
                  localItemInfo7 = null;
                }
              }
              else
              {
                f2 += addNewItem(i9, i11 + 1).widthFactor;
                i10++;
                if (i11 >= 0) {
                  localItemInfo7 = (ViewPager.ItemInfo)this.mItems.get(i11);
                } else {
                  localItemInfo7 = null;
                }
              }
            }
            localItemInfo8 = null;
            break label466;
          }
          label676:
          label682:
          ViewPager.ItemInfo localItemInfo12;
          label778:
          label784:
          label980:
          Object localObject3;
          label911:
          float f6;
          if ((i15 == ((ViewPager.ItemInfo)localObject2).position) && (!((ViewPager.ItemInfo)localObject2).scrolling))
          {
            this.mItems.remove(i14);
            this.mAdapter.destroyItem(this, i15, ((ViewPager.ItemInfo)localObject2).object);
            if (i14 < this.mItems.size())
            {
              localItemInfo12 = (ViewPager.ItemInfo)this.mItems.get(i14);
              float f10 = f3;
              localObject3 = localItemInfo12;
              f6 = f10;
            }
          }
          for (;;)
          {
            i15++;
            float f7 = f6;
            localObject2 = localObject3;
            f3 = f7;
            break label494;
            localItemInfo12 = null;
            break label980;
            label1016:
            if ((localObject2 != null) && (i15 == ((ViewPager.ItemInfo)localObject2).position))
            {
              float f8 = f3 + ((ViewPager.ItemInfo)localObject2).widthFactor;
              i14++;
              if (i14 < this.mItems.size()) {}
              for (ViewPager.ItemInfo localItemInfo11 = (ViewPager.ItemInfo)this.mItems.get(i14);; localItemInfo11 = null)
              {
                localObject3 = localItemInfo11;
                f6 = f8;
                break;
              }
            }
            ViewPager.ItemInfo localItemInfo9 = addNewItem(i15, i14);
            i14++;
            float f5 = f3 + localItemInfo9.widthFactor;
            if (i14 < this.mItems.size()) {}
            for (ViewPager.ItemInfo localItemInfo10 = (ViewPager.ItemInfo)this.mItems.get(i14);; localItemInfo10 = null)
            {
              localObject3 = localItemInfo10;
              f6 = f5;
              break;
            }
            label1153:
            localObject1 = null;
            break label554;
            sortChildDrawingOrder();
            if (!hasFocus()) {
              break;
            }
            View localView1 = findFocus();
            if (localView1 != null) {}
            for (ViewPager.ItemInfo localItemInfo4 = infoForAnyChild(localView1);; localItemInfo4 = null)
            {
              if ((localItemInfo4 != null) && (localItemInfo4.position == this.mCurItem)) {
                break label1270;
              }
              for (int i5 = 0;; i5++)
              {
                if (i5 >= getChildCount()) {
                  break label1264;
                }
                View localView2 = getChildAt(i5);
                ViewPager.ItemInfo localItemInfo5 = infoForChild(localView2);
                if ((localItemInfo5 != null) && (localItemInfo5.position == this.mCurItem) && (localView2.requestFocus(i))) {
                  break;
                }
              }
              label1264:
              break;
            }
            label1270:
            break;
            float f9 = f3;
            localObject3 = localObject2;
            f6 = f9;
          }
        }
        label1294:
        localItemInfo2 = null;
      }
      i = 2;
      localItemInfo1 = null;
    }
  }
  
  public void removeView(View paramView)
  {
    if (this.mInLayout)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }
  
  public void setAdapter(PagerAdapter paramPagerAdapter)
  {
    if (this.mAdapter != null)
    {
      this.mAdapter.unregisterDataSetObserver(this.mObserver);
      this.mAdapter.startUpdate(this);
      for (int i = 0; i < this.mItems.size(); i++)
      {
        ViewPager.ItemInfo localItemInfo = (ViewPager.ItemInfo)this.mItems.get(i);
        this.mAdapter.destroyItem(this, localItemInfo.position, localItemInfo.object);
      }
      this.mAdapter.finishUpdate(this);
      this.mItems.clear();
      removeNonDecorViews();
      this.mCurItem = 0;
      scrollTo(0, 0);
    }
    PagerAdapter localPagerAdapter = this.mAdapter;
    this.mAdapter = paramPagerAdapter;
    this.mExpectedAdapterCount = 0;
    boolean bool;
    if (this.mAdapter != null)
    {
      if (this.mObserver == null) {
        this.mObserver = new ViewPager.PagerObserver(this, null);
      }
      this.mAdapter.registerDataSetObserver(this.mObserver);
      this.mPopulatePending = false;
      bool = this.mFirstLayout;
      this.mFirstLayout = true;
      this.mExpectedAdapterCount = this.mAdapter.getCount();
      if (this.mRestoredCurItem < 0) {
        break label259;
      }
      this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
      setCurrentItemInternal(this.mRestoredCurItem, false, true);
      this.mRestoredCurItem = -1;
      this.mRestoredAdapterState = null;
      this.mRestoredClassLoader = null;
    }
    for (;;)
    {
      if ((this.mAdapterChangeListener != null) && (localPagerAdapter != paramPagerAdapter)) {
        this.mAdapterChangeListener.onAdapterChanged(localPagerAdapter, paramPagerAdapter);
      }
      return;
      label259:
      if (!bool) {
        populate();
      } else {
        requestLayout();
      }
    }
  }
  
  void setChildrenDrawingOrderEnabledCompat(boolean paramBoolean)
  {
    if ((Build.VERSION.SDK_INT < 7) || (this.mSetChildrenDrawingOrderEnabled == null)) {}
    try
    {
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      this.mSetChildrenDrawingOrderEnabled = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", arrayOfClass);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          Method localMethod = this.mSetChildrenDrawingOrderEnabled;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Boolean.valueOf(paramBoolean);
          localMethod.invoke(this, arrayOfObject);
          return;
        }
        catch (Exception localException)
        {
          Log.e("ViewPager", "Error changing children drawing order", localException);
        }
        localNoSuchMethodException = localNoSuchMethodException;
        Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", localNoSuchMethodException);
      }
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    this.mPopulatePending = false;
    if (!this.mFirstLayout) {}
    for (boolean bool = true;; bool = false)
    {
      setCurrentItemInternal(paramInt, bool, false);
      return;
    }
  }
  
  public void setCurrentItem(int paramInt, boolean paramBoolean)
  {
    this.mPopulatePending = false;
    setCurrentItemInternal(paramInt, paramBoolean, false);
  }
  
  void setCurrentItemInternal(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    setCurrentItemInternal(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void setCurrentItemInternal(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((this.mAdapter == null) || (this.mAdapter.getCount() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!paramBoolean2) && (this.mCurItem == paramInt1) && (this.mItems.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if (paramInt1 < 0) {
      paramInt1 = 0;
    }
    for (;;)
    {
      int i = this.mOffscreenPageLimit;
      if ((paramInt1 <= i + this.mCurItem) && (paramInt1 >= this.mCurItem - i)) {
        break;
      }
      for (int j = 0; j < this.mItems.size(); j++) {
        ((ViewPager.ItemInfo)this.mItems.get(j)).scrolling = true;
      }
      if (paramInt1 >= this.mAdapter.getCount()) {
        paramInt1 = -1 + this.mAdapter.getCount();
      }
    }
    int k = this.mCurItem;
    boolean bool = false;
    if (k != paramInt1) {
      bool = true;
    }
    if (this.mFirstLayout)
    {
      this.mCurItem = paramInt1;
      if ((bool) && (this.mOnPageChangeListener != null)) {
        this.mOnPageChangeListener.onPageSelected(paramInt1);
      }
      if ((bool) && (this.mInternalPageChangeListener != null)) {
        this.mInternalPageChangeListener.onPageSelected(paramInt1);
      }
      requestLayout();
      return;
    }
    populate(paramInt1);
    scrollToItem(paramInt1, paramBoolean1, paramInt2, bool);
  }
  
  ViewPager.OnPageChangeListener setInternalPageChangeListener(ViewPager.OnPageChangeListener paramOnPageChangeListener)
  {
    ViewPager.OnPageChangeListener localOnPageChangeListener = this.mInternalPageChangeListener;
    this.mInternalPageChangeListener = paramOnPageChangeListener;
    return localOnPageChangeListener;
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    if (paramInt < 1)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to " + 1);
      paramInt = 1;
    }
    if (paramInt != this.mOffscreenPageLimit)
    {
      this.mOffscreenPageLimit = paramInt;
      populate();
    }
  }
  
  void setOnAdapterChangeListener(ViewPager.OnAdapterChangeListener paramOnAdapterChangeListener)
  {
    this.mAdapterChangeListener = paramOnAdapterChangeListener;
  }
  
  public void setOnPageChangeListener(ViewPager.OnPageChangeListener paramOnPageChangeListener)
  {
    this.mOnPageChangeListener = paramOnPageChangeListener;
  }
  
  public void setPageMargin(int paramInt)
  {
    int i = this.mPageMargin;
    this.mPageMargin = paramInt;
    int j = getWidth();
    recomputeScrollPosition(j, j, paramInt, i);
    requestLayout();
  }
  
  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.mMarginDrawable = paramDrawable;
    if (paramDrawable != null) {
      refreshDrawableState();
    }
    if (paramDrawable == null) {}
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
    }
  }
  
  public void setPageTransformer(boolean paramBoolean, ViewPager.PageTransformer paramPageTransformer)
  {
    int i = 1;
    label27:
    int i1;
    if (Build.VERSION.SDK_INT >= 11)
    {
      if (paramPageTransformer == null) {
        break label74;
      }
      int j = i;
      if (this.mPageTransformer == null) {
        break label80;
      }
      int m = i;
      if (j == m) {
        break label86;
      }
      i1 = i;
      label37:
      this.mPageTransformer = paramPageTransformer;
      setChildrenDrawingOrderEnabledCompat(j);
      if (j == 0) {
        break label92;
      }
      if (paramBoolean) {
        i = 2;
      }
    }
    label74:
    label80:
    label86:
    label92:
    for (this.mDrawingOrder = i;; this.mDrawingOrder = 0)
    {
      if (i1 != 0) {
        populate();
      }
      return;
      int k = 0;
      break;
      int n = 0;
      break label27;
      i1 = 0;
      break label37;
    }
  }
  
  void smoothScrollTo(int paramInt1, int paramInt2)
  {
    smoothScrollTo(paramInt1, paramInt2, 0);
  }
  
  void smoothScrollTo(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0)
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i = getScrollX();
    int j = getScrollY();
    int k = paramInt1 - i;
    int m = paramInt2 - j;
    if ((k == 0) && (m == 0))
    {
      completeScroll(false);
      populate();
      setScrollState(0);
      return;
    }
    setScrollingCacheEnabled(true);
    setScrollState(2);
    int n = getClientWidth();
    int i1 = n / 2;
    float f1 = Math.min(1.0F, 1.0F * Math.abs(k) / n);
    float f2 = i1 + i1 * distanceInfluenceForSnapDuration(f1);
    int i2 = Math.abs(paramInt3);
    if (i2 > 0) {}
    float f3;
    for (int i3 = 4 * Math.round(1000.0F * Math.abs(f2 / i2));; i3 = (int)(100.0F * (1.0F + Math.abs(k) / (f3 + this.mPageMargin))))
    {
      int i4 = Math.min(i3, 600);
      this.mScroller.startScroll(i, j, k, m, i4);
      ViewCompat.postInvalidateOnAnimation(this);
      return;
      f3 = n * this.mAdapter.getPageWidth(this.mCurItem);
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.mMarginDrawable);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     android.support.v4.view.ViewPager
 * JD-Core Version:    0.7.0.1
 */