package it.sephiroth.android.library.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.util.SparseArrayCompat;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ArrayAdapter;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.RemoteViews.RemoteView;
import com.viber.voip.bb;
import com.viber.voip.util.gl;
import java.util.ArrayList;

@RemoteViews.RemoteView
public class HListView
  extends AbsHListView
{
  private ArrayList<aq> a = new ArrayList();
  private boolean aA;
  private boolean aB;
  private boolean aC;
  private boolean aD;
  private boolean aE;
  private boolean aF;
  private final Rect aG;
  private Paint aH;
  private final ap aI;
  private ar aJ;
  private boolean aK;
  Drawable au;
  int av;
  int aw;
  Drawable ax;
  Drawable ay;
  private ArrayList<aq> az = new ArrayList();
  
  public HListView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public HListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772351);
  }
  
  public HListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.aE = j;
    this.aF = false;
    this.aG = new Rect();
    this.aI = new ap(null);
    TypedArray localTypedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, bb.HListView, paramInt, 0);
    CharSequence[] arrayOfCharSequence;
    Drawable localDrawable3;
    Drawable localDrawable2;
    Drawable localDrawable1;
    int k;
    boolean bool2;
    boolean bool1;
    if (localTypedArray != null)
    {
      arrayOfCharSequence = localTypedArray.getTextArray(0);
      localDrawable3 = localTypedArray.getDrawable(j);
      localDrawable2 = localTypedArray.getDrawable(5);
      localDrawable1 = localTypedArray.getDrawable(6);
      k = localTypedArray.getDimensionPixelSize(2, 0);
      bool2 = localTypedArray.getBoolean(3, j);
      bool1 = localTypedArray.getBoolean(4, j);
      i = localTypedArray.getInteger(7, i);
      localTypedArray.recycle();
    }
    for (;;)
    {
      if (arrayOfCharSequence != null) {
        setAdapter(new ArrayAdapter(paramContext, 17367043, arrayOfCharSequence));
      }
      if (localDrawable3 != null) {
        setDivider(localDrawable3);
      }
      if (localDrawable2 != null) {
        setOverscrollHeader(localDrawable2);
      }
      if (localDrawable1 != null) {
        setOverscrollFooter(localDrawable1);
      }
      if (k != 0) {
        setDividerWidth(k);
      }
      this.aC = bool2;
      this.aD = bool1;
      this.aw = i;
      return;
      bool2 = bool1;
      k = 0;
      localDrawable1 = null;
      localDrawable2 = null;
      localDrawable3 = null;
      arrayOfCharSequence = null;
    }
  }
  
  private boolean A()
  {
    int i = getScrollX() + this.v.left;
    boolean bool;
    if (this.W <= 0)
    {
      int j = getChildAt(0).getLeft();
      bool = false;
      if (j <= i) {}
    }
    else
    {
      bool = true;
    }
    return bool;
  }
  
  private boolean B()
  {
    int i = getChildCount();
    int j = getChildAt(i - 1).getRight();
    int k = -1 + (i + this.W);
    int m = getScrollX() + getWidth() - this.v.right;
    return (k < -1 + this.ao) || (j < m);
  }
  
  private int a(int paramInt1, View paramView, int paramInt2)
  {
    paramView.getDrawingRect(this.aG);
    offsetDescendantRectToMyCoords(paramView, this.aG);
    int k;
    if (paramInt1 == 33)
    {
      int m = this.aG.left;
      int n = this.v.left;
      k = 0;
      if (m < n)
      {
        k = this.v.left - this.aG.left;
        if (paramInt2 > 0) {
          k += getArrowScrollPreviewLength();
        }
      }
    }
    do
    {
      int i;
      int j;
      do
      {
        return k;
        i = getWidth() - this.v.right;
        j = this.aG.bottom;
        k = 0;
      } while (j <= i);
      k = this.aG.right - i;
    } while (paramInt2 >= -1 + this.ao);
    return k + getArrowScrollPreviewLength();
  }
  
  private View a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = getHorizontalFadingEdgeLength();
    int j = this.am;
    int k = c(paramInt2, i, j);
    int m = b(paramInt3, i, j);
    View localView = a(j, paramInt1, true, this.v.top, true);
    if (localView.getRight() > m) {
      localView.offsetLeftAndRight(-Math.min(localView.getLeft() - k, localView.getRight() - m));
    }
    for (;;)
    {
      a(localView, j);
      if (this.L) {
        break;
      }
      k(getChildCount());
      return localView;
      if (localView.getLeft() < k) {
        localView.offsetLeftAndRight(Math.min(k - localView.getLeft(), m - localView.getRight()));
      }
    }
    l(getChildCount());
    return localView;
  }
  
  private View a(int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2)
  {
    if (!this.aj)
    {
      View localView2 = this.q.c(paramInt1);
      if (localView2 != null)
      {
        a(localView2, paramInt1, paramInt2, paramBoolean1, paramInt3, paramBoolean2, true);
        return localView2;
      }
    }
    View localView1 = a(paramInt1, this.Q);
    a(localView1, paramInt1, paramInt2, paramBoolean1, paramInt3, paramBoolean2, this.Q[0]);
    return localView1;
  }
  
  private View a(View paramView1, View paramView2, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = getHorizontalFadingEdgeLength();
    int j = this.am;
    int k = c(paramInt2, i, j);
    int m = b(paramInt2, i, j);
    if (paramInt1 > 0)
    {
      View localView3 = a(j - 1, paramView1.getLeft(), true, this.v.top, false);
      int i4 = this.av;
      View localView4 = a(j, i4 + localView3.getRight(), true, this.v.top, true);
      if (localView4.getRight() > m)
      {
        int i5 = localView4.getLeft() - k;
        int i6 = localView4.getRight() - m;
        int i7 = (paramInt3 - paramInt2) / 2;
        int i8 = Math.min(Math.min(i5, i6), i7);
        localView3.offsetLeftAndRight(-i8);
        localView4.offsetLeftAndRight(-i8);
      }
      if (!this.L)
      {
        h(-2 + this.am, localView4.getLeft() - i4);
        z();
        g(1 + this.am, i4 + localView4.getRight());
        return localView4;
      }
      g(1 + this.am, i4 + localView4.getRight());
      z();
      h(-2 + this.am, localView4.getLeft() - i4);
      return localView4;
    }
    if (paramInt1 < 0)
    {
      if (paramView2 != null) {}
      for (View localView2 = a(j, paramView2.getLeft(), true, this.v.top, true);; localView2 = a(j, paramView1.getLeft(), false, this.v.top, true))
      {
        if (localView2.getLeft() < k)
        {
          int i1 = k - localView2.getLeft();
          int i2 = m - localView2.getRight();
          int i3 = (paramInt3 - paramInt2) / 2;
          localView2.offsetLeftAndRight(Math.min(Math.min(i1, i2), i3));
        }
        a(localView2, j);
        return localView2;
      }
    }
    int n = paramView1.getLeft();
    View localView1 = a(j, n, true, this.v.top, true);
    if ((n < paramInt2) && (localView1.getRight() < paramInt2 + 20)) {
      localView1.offsetLeftAndRight(paramInt2 - localView1.getLeft());
    }
    a(localView1, j);
    return localView1;
  }
  
  private void a(View paramView, int paramInt)
  {
    int i = this.av;
    if (!this.L)
    {
      h(paramInt - 1, paramView.getLeft() - i);
      z();
      g(paramInt + 1, i + paramView.getRight());
      return;
    }
    g(paramInt + 1, i + paramView.getRight());
    z();
    h(paramInt - 1, paramView.getLeft() - i);
  }
  
  private void a(View paramView, int paramInt1, int paramInt2)
  {
    i locali = (i)paramView.getLayoutParams();
    if (locali == null)
    {
      locali = (i)generateDefaultLayoutParams();
      paramView.setLayoutParams(locali);
    }
    locali.a = this.k.getItemViewType(paramInt1);
    locali.c = true;
    int i = ViewGroup.getChildMeasureSpec(paramInt2, this.v.top + this.v.bottom, locali.height);
    int j = locali.width;
    if (j > 0) {}
    for (int k = View.MeasureSpec.makeMeasureSpec(j, 1073741824);; k = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      paramView.measure(k, i);
      return;
    }
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    boolean bool1 = true;
    if (paramInt2 == -1) {
      throw new IllegalArgumentException("newSelectedPosition needs to be valid");
    }
    int i = this.am - this.W;
    int j = paramInt2 - this.W;
    View localView2;
    int k;
    boolean bool2;
    int m;
    boolean bool3;
    if (paramInt1 == 33)
    {
      localView2 = getChildAt(j);
      k = j;
      j = i;
      bool2 = bool1;
      m = getChildCount();
      if (localView2 != null)
      {
        if ((paramBoolean) || (!bool2)) {
          break label160;
        }
        bool3 = bool1;
        label89:
        localView2.setSelected(bool3);
        b(localView2, k, m);
      }
      if (paramView != null) {
        if ((paramBoolean) || (bool2)) {
          break label166;
        }
      }
    }
    for (;;)
    {
      paramView.setSelected(bool1);
      b(paramView, j, m);
      return;
      View localView1 = getChildAt(j);
      localView2 = paramView;
      paramView = localView1;
      k = i;
      bool2 = false;
      break;
      label160:
      bool3 = false;
      break label89;
      label166:
      bool1 = false;
    }
  }
  
  @TargetApi(11)
  private void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, boolean paramBoolean3)
  {
    boolean bool1;
    int i;
    label27:
    boolean bool2;
    label55:
    int k;
    label67:
    int m;
    label87:
    i locali1;
    if ((paramBoolean2) && (h()))
    {
      bool1 = true;
      if (bool1 == paramView.isSelected()) {
        break label406;
      }
      i = 1;
      int j = this.G;
      if ((j <= 0) || (j >= 3) || (this.B != paramInt1)) {
        break label412;
      }
      bool2 = true;
      if (bool2 == paramView.isPressed()) {
        break label418;
      }
      k = 1;
      if ((paramBoolean3) && (i == 0) && (!paramView.isLayoutRequested())) {
        break label424;
      }
      m = 1;
      locali1 = (i)paramView.getLayoutParams();
      if (locali1 != null) {
        break label569;
      }
    }
    label164:
    label299:
    label307:
    label569:
    for (i locali2 = (i)generateDefaultLayoutParams();; locali2 = locali1)
    {
      locali2.a = this.k.getItemViewType(paramInt1);
      int i7;
      label243:
      int i6;
      int i1;
      if (((paramBoolean3) && (!locali2.c)) || ((locali2.b) && (locali2.a == -2))) {
        if (paramBoolean1)
        {
          i7 = -1;
          attachViewToParent(paramView, i7, locali2);
          if (i != 0) {
            paramView.setSelected(bool1);
          }
          if (k != 0) {
            paramView.setPressed(bool2);
          }
          if ((this.c != 0) && (this.g != null))
          {
            if (!(paramView instanceof Checkable)) {
              break label486;
            }
            ((Checkable)paramView).setChecked(((Boolean)this.g.get(paramInt1, Boolean.valueOf(false))).booleanValue());
          }
          if (m == 0) {
            break label529;
          }
          int i4 = ViewGroup.getChildMeasureSpec(this.w, this.v.top + this.v.bottom, locali2.height);
          int i5 = locali2.width;
          if (i5 <= 0) {
            break label519;
          }
          i6 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
          paramView.measure(i6, i4);
          i1 = paramView.getMeasuredWidth();
          int i2 = paramView.getMeasuredHeight();
          if (!paramBoolean1) {
            break label537;
          }
          label324:
          if (m == 0) {
            break label545;
          }
          int i3 = i2 + paramInt3;
          paramView.layout(paramInt2, paramInt3, i1 + paramInt2, i3);
        }
      }
      for (;;)
      {
        if ((this.z) && (!paramView.isDrawingCacheEnabled())) {
          paramView.setDrawingCacheEnabled(true);
        }
        if ((Build.VERSION.SDK_INT >= 11) && (paramBoolean3) && (((i)paramView.getLayoutParams()).d != paramInt1)) {
          paramView.jumpDrawablesToCurrentState();
        }
        return;
        bool1 = false;
        break;
        i = 0;
        break label27;
        bool2 = false;
        break label55;
        k = 0;
        break label67;
        m = 0;
        break label87;
        i7 = 0;
        break label164;
        locali2.c = false;
        if (locali2.a == -2) {
          locali2.b = true;
        }
        if (paramBoolean1) {}
        for (int n = -1;; n = 0)
        {
          addViewInLayout(paramView, n, locali2, true);
          break;
        }
        label486:
        if (Build.VERSION.SDK_INT < 11) {
          break label243;
        }
        paramView.setActivated(((Boolean)this.g.get(paramInt1, Boolean.valueOf(false))).booleanValue());
        break label243;
        i6 = View.MeasureSpec.makeMeasureSpec(0, 0);
        break label299;
        cleanupLayoutState(paramView);
        break label307;
        paramInt2 -= i1;
        break label324;
        paramView.offsetLeftAndRight(paramInt2 - paramView.getLeft());
        paramView.offsetTopAndBottom(paramInt3 - paramView.getTop());
      }
    }
  }
  
  private void a(ArrayList<aq> paramArrayList)
  {
    if (paramArrayList != null)
    {
      int i = paramArrayList.size();
      for (int j = 0; j < i; j++)
      {
        i locali = (i)((aq)paramArrayList.get(j)).a.getLayoutParams();
        if (locali != null) {
          locali.b = false;
        }
      }
    }
  }
  
  @TargetApi(11)
  private boolean a(int paramInt1, int paramInt2, KeyEvent paramKeyEvent)
  {
    if ((this.k == null) || (!this.T)) {}
    do
    {
      return false;
      if (this.aj) {
        e();
      }
    } while (Build.VERSION.SDK_INT < 11);
    int i = paramKeyEvent.getAction();
    if (i != 1) {}
    boolean bool;
    switch (paramInt1)
    {
    default: 
      bool = false;
    }
    for (;;)
    {
      if (!bool) {
        break label680;
      }
      return true;
      if (paramKeyEvent.hasNoModifiers())
      {
        bool = n();
        if (!bool) {
          for (int k = paramInt2;; k = paramInt2)
          {
            paramInt2 = k - 1;
            if ((k <= 0) || (!j(33))) {
              break;
            }
            bool = true;
          }
        }
      }
      else
      {
        if (!paramKeyEvent.hasModifiers(2)) {
          break;
        }
        if ((n()) || (i(33)))
        {
          bool = true;
        }
        else
        {
          bool = false;
          continue;
          if (paramKeyEvent.hasNoModifiers())
          {
            bool = n();
            if (!bool) {
              for (int j = paramInt2;; j = paramInt2)
              {
                paramInt2 = j - 1;
                if ((j <= 0) || (!j(130))) {
                  break;
                }
                bool = true;
              }
            }
          }
          else
          {
            if (!paramKeyEvent.hasModifiers(2)) {
              break;
            }
            if ((n()) || (i(130)))
            {
              bool = true;
            }
            else
            {
              bool = false;
              continue;
              if (!paramKeyEvent.hasNoModifiers()) {
                break;
              }
              bool = m(17);
              continue;
              if (!paramKeyEvent.hasNoModifiers()) {
                break;
              }
              bool = m(66);
              continue;
              if (!paramKeyEvent.hasNoModifiers()) {
                break;
              }
              bool = n();
              if ((!bool) && (paramKeyEvent.getRepeatCount() == 0) && (getChildCount() > 0))
              {
                i();
                bool = true;
                continue;
                if (paramKeyEvent.hasNoModifiers()) {
                  if ((n()) || (!h(130))) {}
                }
                for (;;)
                {
                  bool = true;
                  break;
                  if ((!paramKeyEvent.hasModifiers(1)) || (n()) || (!h(33))) {}
                }
                if (paramKeyEvent.hasNoModifiers())
                {
                  if ((n()) || (h(33))) {
                    bool = true;
                  } else {
                    bool = false;
                  }
                }
                else
                {
                  if (!paramKeyEvent.hasModifiers(2)) {
                    break;
                  }
                  if ((n()) || (i(33)))
                  {
                    bool = true;
                  }
                  else
                  {
                    bool = false;
                    continue;
                    if (paramKeyEvent.hasNoModifiers())
                    {
                      if ((n()) || (h(130))) {
                        bool = true;
                      } else {
                        bool = false;
                      }
                    }
                    else
                    {
                      if (!paramKeyEvent.hasModifiers(2)) {
                        break;
                      }
                      if ((n()) || (i(130)))
                      {
                        bool = true;
                      }
                      else
                      {
                        bool = false;
                        continue;
                        if (!paramKeyEvent.hasNoModifiers()) {
                          break;
                        }
                        if ((n()) || (i(33)))
                        {
                          bool = true;
                        }
                        else
                        {
                          bool = false;
                          continue;
                          if (!paramKeyEvent.hasNoModifiers()) {
                            break;
                          }
                          if ((n()) || (i(130))) {
                            bool = true;
                          } else {
                            bool = false;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    switch (i)
    {
    default: 
      return false;
    case 0: 
      return super.onKeyDown(paramInt1, paramKeyEvent);
    case 1: 
      label680:
      return super.onKeyUp(paramInt1, paramKeyEvent);
    }
    return super.onKeyMultiple(paramInt1, paramInt2, paramKeyEvent);
  }
  
  private boolean a(View paramView)
  {
    ArrayList localArrayList1 = this.a;
    int i = localArrayList1.size();
    for (int j = 0; j < i; j++) {
      if (paramView == ((aq)localArrayList1.get(j)).a) {
        return true;
      }
    }
    ArrayList localArrayList2 = this.az;
    int k = localArrayList2.size();
    for (int m = 0; m < k; m++) {
      if (paramView == ((aq)localArrayList2.get(m)).a) {
        return true;
      }
    }
    return false;
  }
  
  private boolean a(View paramView1, View paramView2)
  {
    if (paramView1 == paramView2) {
      return true;
    }
    ViewParent localViewParent = paramView1.getParent();
    if (((localViewParent instanceof ViewGroup)) && (a((View)localViewParent, paramView2))) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private int b(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 != -1 + this.ao) {
      paramInt1 -= paramInt2;
    }
    return paramInt1;
  }
  
  private View b(View paramView, int paramInt)
  {
    int i = paramInt - 1;
    View localView = a(i, this.Q);
    a(localView, i, paramView.getLeft() - this.av, false, this.v.top, false, this.Q[0]);
    return localView;
  }
  
  private void b(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams == null) {
      localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
    }
    int i = ViewGroup.getChildMeasureSpec(this.w, this.v.top + this.v.bottom, localLayoutParams.height);
    int j = localLayoutParams.width;
    if (j > 0) {}
    for (int k = View.MeasureSpec.makeMeasureSpec(j, 1073741824);; k = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      paramView.measure(k, i);
      return;
    }
  }
  
  private void b(View paramView, int paramInt1, int paramInt2)
  {
    int i = paramView.getWidth();
    b(paramView);
    if (paramView.getMeasuredWidth() != i)
    {
      c(paramView);
      int j = paramView.getMeasuredWidth() - i;
      for (int k = paramInt1 + 1; k < paramInt2; k++) {
        getChildAt(k).offsetLeftAndRight(j);
      }
    }
  }
  
  private int c(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 > 0) {
      paramInt1 += paramInt2;
    }
    return paramInt1;
  }
  
  private View c(View paramView, int paramInt)
  {
    int i = paramInt + 1;
    View localView = a(i, this.Q);
    a(localView, i, paramView.getRight() + this.av, true, this.v.top, false, this.Q[0]);
    return localView;
  }
  
  private void c(View paramView)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    int k = this.v.top;
    int m = j + k;
    int n = paramView.getLeft();
    paramView.layout(n, k, i + n, m);
  }
  
  private int d(View paramView)
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++) {
      if (a(paramView, getChildAt(j))) {
        return j + this.W;
      }
    }
    throw new IllegalArgumentException("newFocus is not a child of any of the children of the list!");
  }
  
  private View g(int paramInt)
  {
    this.W = Math.min(this.W, this.am);
    this.W = Math.min(this.W, -1 + this.ao);
    if (this.W < 0) {
      this.W = 0;
    }
    return g(this.W, paramInt);
  }
  
  private View g(int paramInt1, int paramInt2)
  {
    Object localObject1 = null;
    int i = getRight() - getLeft();
    int j = paramInt2;
    int k = paramInt1;
    boolean bool;
    label47:
    Object localObject2;
    if ((j < i) && (k < this.ao)) {
      if (k == this.am)
      {
        bool = true;
        localObject2 = a(k, j, true, this.v.top, bool);
        j = ((View)localObject2).getRight() + this.av;
        if (!bool) {
          break label120;
        }
      }
    }
    for (;;)
    {
      k++;
      localObject1 = localObject2;
      break;
      bool = false;
      break label47;
      e(this.W, -1 + (this.W + getChildCount()));
      return localObject1;
      label120:
      localObject2 = localObject1;
    }
  }
  
  private int getArrowScrollPreviewLength()
  {
    return Math.max(2, getHorizontalFadingEdgeLength());
  }
  
  private int h(View paramView)
  {
    paramView.getDrawingRect(this.aG);
    offsetDescendantRectToMyCoords(paramView, this.aG);
    int i = getRight() - getLeft() - this.v.right;
    int k;
    if (this.aG.right < this.v.left) {
      k = this.v.left - this.aG.right;
    }
    int j;
    do
    {
      return k;
      j = this.aG.left;
      k = 0;
    } while (j <= i);
    return this.aG.left - i;
  }
  
  private View h(int paramInt1, int paramInt2)
  {
    Object localObject1 = null;
    int i = paramInt2;
    int j = paramInt1;
    boolean bool;
    label30:
    Object localObject2;
    if ((i > 0) && (j >= 0)) {
      if (j == this.am)
      {
        bool = true;
        localObject2 = a(j, i, false, this.v.top, bool);
        i = ((View)localObject2).getLeft() - this.av;
        if (!bool) {
          break label111;
        }
      }
    }
    for (;;)
    {
      j--;
      localObject1 = localObject2;
      break;
      bool = false;
      break label30;
      this.W = (j + 1);
      e(this.W, -1 + (this.W + getChildCount()));
      return localObject1;
      label111:
      localObject2 = localObject1;
    }
  }
  
  private View i(int paramInt1, int paramInt2)
  {
    int i = paramInt2 - paramInt1;
    int j = m();
    View localView = a(j, paramInt1, true, this.v.top, true);
    this.W = j;
    int k = localView.getMeasuredWidth();
    if (k <= i) {
      localView.offsetLeftAndRight((i - k) / 2);
    }
    a(localView, j);
    if (!this.L)
    {
      k(getChildCount());
      return localView;
    }
    l(getChildCount());
    return localView;
  }
  
  private View j(int paramInt1, int paramInt2)
  {
    boolean bool;
    View localView1;
    int i;
    View localView3;
    View localView2;
    if (paramInt1 == this.am)
    {
      bool = true;
      localView1 = a(paramInt1, paramInt2, true, this.v.top, bool);
      this.W = paramInt1;
      i = this.av;
      if (this.L) {
        break label112;
      }
      localView3 = h(paramInt1 - 1, localView1.getLeft() - i);
      z();
      localView2 = g(paramInt1 + 1, i + localView1.getRight());
      int k = getChildCount();
      if (k > 0) {
        k(k);
      }
    }
    for (;;)
    {
      if (!bool) {
        break label170;
      }
      return localView1;
      bool = false;
      break;
      label112:
      localView2 = g(paramInt1 + 1, i + localView1.getRight());
      z();
      localView3 = h(paramInt1 - 1, localView1.getLeft() - i);
      int j = getChildCount();
      if (j > 0) {
        l(j);
      }
    }
    label170:
    if (localView3 != null) {
      return localView3;
    }
    return localView2;
  }
  
  private int k(int paramInt1, int paramInt2)
  {
    int i = getWidth() - this.v.right;
    int j = this.v.left;
    int k = getChildCount();
    View localView2;
    if (paramInt1 == 130)
    {
      int i3 = k - 1;
      if (paramInt2 != -1) {
        i3 = paramInt2 - this.W;
      }
      int i4 = i3 + this.W;
      localView2 = getChildAt(i3);
      if (i4 >= -1 + this.ao) {
        break label308;
      }
    }
    label308:
    for (int i5 = i - getArrowScrollPreviewLength();; i5 = i)
    {
      if (localView2.getRight() <= i5) {}
      while ((paramInt2 != -1) && (i5 - localView2.getLeft() >= getMaxScrollAmount())) {
        return 0;
      }
      int i6 = localView2.getRight() - i5;
      if (k + this.W == this.ao) {
        i6 = Math.min(i6, getChildAt(k - 1).getRight() - i);
      }
      return Math.min(i6, getMaxScrollAmount());
      if (paramInt2 != -1) {}
      for (int m = paramInt2 - this.W;; m = 0)
      {
        int n = m + this.W;
        View localView1 = getChildAt(m);
        if (n > 0) {}
        for (int i1 = j + getArrowScrollPreviewLength(); (localView1.getLeft() < i1) && ((paramInt2 == -1) || (localView1.getRight() - i1 < getMaxScrollAmount())); i1 = j)
        {
          int i2 = i1 - localView1.getLeft();
          if (this.W == 0) {
            i2 = Math.min(i2, j - getChildAt(0).getLeft());
          }
          return Math.min(i2, getMaxScrollAmount());
        }
        break;
      }
    }
  }
  
  private void k(int paramInt)
  {
    if ((-1 + (paramInt + this.W) == -1 + this.ao) && (paramInt > 0))
    {
      int i = getChildAt(paramInt - 1).getRight();
      int j = getRight() - getLeft() - this.v.right - i;
      View localView = getChildAt(0);
      int k = localView.getLeft();
      if ((j > 0) && ((this.W > 0) || (k < this.v.left)))
      {
        if (this.W == 0) {
          j = Math.min(j, this.v.top - k);
        }
        c(j);
        if (this.W > 0)
        {
          h(-1 + this.W, localView.getLeft() - this.av);
          z();
        }
      }
    }
  }
  
  private void l(int paramInt)
  {
    int i1;
    if ((this.W == 0) && (paramInt > 0))
    {
      int i = getChildAt(0).getLeft();
      int j = this.v.left;
      int k = getRight() - getLeft() - this.v.right;
      int m = i - j;
      View localView = getChildAt(paramInt - 1);
      int n = localView.getRight();
      i1 = -1 + (paramInt + this.W);
      if (m > 0)
      {
        if ((i1 >= -1 + this.ao) && (n <= k)) {
          break label166;
        }
        if (i1 == -1 + this.ao) {
          m = Math.min(m, n - k);
        }
        c(-m);
        if (i1 < -1 + this.ao)
        {
          g(i1 + 1, localView.getRight() + this.av);
          z();
        }
      }
    }
    label166:
    while (i1 != -1 + this.ao) {
      return;
    }
    z();
  }
  
  private boolean m(int paramInt)
  {
    if ((paramInt != 17) && (paramInt != 66)) {
      throw new IllegalArgumentException("direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}");
    }
    int i = getChildCount();
    if ((this.aF) && (i > 0) && (this.am != -1))
    {
      View localView1 = getSelectedView();
      if ((localView1 != null) && (localView1.hasFocus()) && ((localView1 instanceof ViewGroup)))
      {
        View localView2 = localView1.findFocus();
        View localView3 = FocusFinder.getInstance().findNextFocus((ViewGroup)localView1, localView2, paramInt);
        if (localView3 != null)
        {
          localView2.getFocusedRect(this.aG);
          offsetDescendantRectToMyCoords(localView2, this.aG);
          offsetRectIntoDescendantCoords(localView3, this.aG);
          if (localView3.requestFocus(paramInt, this.aG)) {
            return true;
          }
        }
        View localView4 = FocusFinder.getInstance().findNextFocus((ViewGroup)getRootView(), localView2, paramInt);
        if (localView4 != null) {
          return a(localView4, this);
        }
      }
    }
    return false;
  }
  
  private boolean n(int paramInt)
  {
    if (getChildCount() <= 0) {
      return false;
    }
    View localView1 = getSelectedView();
    int i = this.am;
    int j = o(paramInt);
    int k = k(paramInt, j);
    ap localap;
    int m;
    label76:
    boolean bool;
    label90:
    View localView2;
    if (this.aF)
    {
      localap = p(paramInt);
      if (localap != null)
      {
        j = localap.a();
        k = localap.b();
      }
      if (localap == null) {
        break label320;
      }
      m = 1;
      if (j == -1) {
        break label347;
      }
      if (localap == null) {
        break label326;
      }
      bool = true;
      a(localView1, paramInt, j, bool);
      setSelectedPositionInt(j);
      setNextSelectedPositionInt(j);
      localView2 = getSelectedView();
      if ((this.aF) && (localap == null))
      {
        View localView5 = getFocusedChild();
        if (localView5 != null) {
          localView5.clearFocus();
        }
      }
      v();
      m = 1;
    }
    for (int n = j;; n = i)
    {
      int i1;
      if (k > 0)
      {
        if (paramInt == 33)
        {
          i1 = k;
          label172:
          q(i1);
          m = 1;
        }
      }
      else
      {
        if ((this.aF) && (localap == null) && (localView2 != null) && (localView2.hasFocus()))
        {
          View localView4 = localView2.findFocus();
          if ((!a(localView4, this)) || (h(localView4) > 0)) {
            localView4.clearFocus();
          }
        }
        if ((j != -1) || (localView2 == null) || (a(localView2, this))) {
          break label340;
        }
        l();
        this.N = -1;
      }
      label320:
      label326:
      label340:
      for (View localView3 = null;; localView3 = localView2)
      {
        if (m == 0) {
          break label345;
        }
        if (localView3 != null)
        {
          a(n, localView3);
          this.K = localView3.getLeft();
        }
        if (!awakenScrollBars()) {
          invalidate();
        }
        b();
        return true;
        localap = null;
        break;
        m = 0;
        break label76;
        bool = false;
        break label90;
        i1 = -k;
        break label172;
      }
      label345:
      break;
      label347:
      localView2 = localView1;
    }
  }
  
  private int o(int paramInt)
  {
    int i = this.W;
    if (paramInt == 130)
    {
      if (this.am != -1) {}
      for (j = 1 + this.am; j >= this.k.getCount(); j = i)
      {
        j = -1;
        return j;
      }
      if (j < i) {
        j = i;
      }
      int m = getLastVisiblePosition();
      ListAdapter localListAdapter2 = getAdapter();
      for (;;)
      {
        if (j > m) {
          break label210;
        }
        if ((localListAdapter2.isEnabled(j)) && (getChildAt(j - i).getVisibility() == 0)) {
          break;
        }
        j++;
      }
    }
    int j = -1 + (i + getChildCount());
    if (this.am != -1) {}
    for (int k = -1 + this.am; (k < 0) || (k >= this.k.getCount()); k = -1 + (i + getChildCount())) {
      return -1;
    }
    if (k > j) {}
    for (;;)
    {
      ListAdapter localListAdapter1 = getAdapter();
      for (;;)
      {
        if (j < i) {
          break label210;
        }
        if ((localListAdapter1.isEnabled(j)) && (getChildAt(j - i).getVisibility() == 0)) {
          break;
        }
        j--;
      }
      label210:
      return -1;
      j = k;
    }
  }
  
  private ap p(int paramInt)
  {
    int i = 1;
    View localView1 = getSelectedView();
    View localView2;
    int n;
    if ((localView1 != null) && (localView1.hasFocus()))
    {
      View localView3 = localView1.findFocus();
      localView2 = FocusFinder.getInstance().findNextFocus(this, localView3, paramInt);
      if (localView2 == null) {
        break label384;
      }
      n = d(localView2);
      if ((this.am != -1) && (n != this.am))
      {
        int i3 = o(paramInt);
        if ((i3 != -1) && (((paramInt == 130) && (i3 < n)) || ((paramInt == 33) && (i3 > n)))) {
          return null;
        }
      }
    }
    else
    {
      if (paramInt == 130)
      {
        label122:
        int i4;
        if (this.W > 0)
        {
          i4 = this.v.left;
          if (i == 0) {
            break label202;
          }
        }
        label202:
        for (int i5 = getArrowScrollPreviewLength();; i5 = 0)
        {
          int i6 = i5 + i4;
          if ((localView1 != null) && (localView1.getLeft() > i6)) {
            i6 = localView1.getLeft();
          }
          this.aG.set(i6, 0, i6, 0);
          localView2 = FocusFinder.getInstance().findNextFocusFromRect(this, this.aG, paramInt);
          break;
          i = 0;
          break label122;
        }
      }
      label226:
      int j;
      if (-1 + (this.W + getChildCount()) < this.ao)
      {
        j = getWidth() - this.v.right;
        if (i == 0) {
          break label297;
        }
      }
      label297:
      for (int k = getArrowScrollPreviewLength();; k = 0)
      {
        int m = j - k;
        if ((localView1 != null) && (localView1.getRight() < m)) {
          m = localView1.getRight();
        }
        this.aG.set(m, 0, m, 0);
        break;
        i = 0;
        break label226;
      }
    }
    int i1 = a(paramInt, localView2, n);
    int i2 = getMaxScrollAmount();
    if (i1 < i2)
    {
      localView2.requestFocus(paramInt);
      this.aI.a(n, i1);
      return this.aI;
    }
    if (h(localView2) < i2)
    {
      localView2.requestFocus(paramInt);
      this.aI.a(n, i2);
      return this.aI;
    }
    label384:
    return null;
  }
  
  private void q(int paramInt)
  {
    c(paramInt);
    int i = getWidth() - this.v.right;
    int j = this.v.left;
    p localp = this.q;
    if (paramInt < 0)
    {
      int i1 = getChildCount();
      View localView4 = getChildAt(i1 - 1);
      while (localView4.getRight() < i)
      {
        int i2 = -1 + (i1 + this.W);
        if (i2 >= -1 + this.ao) {
          break;
        }
        localView4 = c(localView4, i2);
        i1++;
      }
      if (localView4.getBottom() < i) {
        c(i - localView4.getRight());
      }
      Object localObject2 = getChildAt(0);
      if (((View)localObject2).getRight() < j)
      {
        if (localp.b(((i)((View)localObject2).getLayoutParams()).a))
        {
          detachViewFromParent((View)localObject2);
          localp.a((View)localObject2, this.W);
        }
        for (;;)
        {
          View localView5 = getChildAt(0);
          this.W = (1 + this.W);
          localObject2 = localView5;
          break;
          removeViewInLayout((View)localObject2);
        }
      }
    }
    else
    {
      View localView1 = getChildAt(0);
      while ((localView1.getLeft() > j) && (this.W > 0))
      {
        localView1 = b(localView1, this.W);
        this.W = (-1 + this.W);
      }
      if (localView1.getLeft() > j) {
        c(j - localView1.getLeft());
      }
      int k = -1 + getChildCount();
      View localView2 = getChildAt(k);
      int m = k;
      Object localObject1 = localView2;
      if (((View)localObject1).getLeft() > i)
      {
        if (localp.b(((i)((View)localObject1).getLayoutParams()).a))
        {
          detachViewFromParent((View)localObject1);
          localp.a((View)localObject1, m + this.W);
        }
        for (;;)
        {
          int n = m - 1;
          View localView3 = getChildAt(n);
          m = n;
          localObject1 = localView3;
          break;
          removeViewInLayout((View)localObject1);
        }
      }
    }
  }
  
  private void z()
  {
    int i = getChildCount();
    int j;
    int k;
    if (i > 0)
    {
      if (this.L) {
        break label64;
      }
      j = getChildAt(0).getLeft() - this.v.left;
      if (this.W != 0) {
        j -= this.av;
      }
      k = 0;
      if (j >= 0) {
        break label114;
      }
    }
    for (;;)
    {
      if (k != 0) {
        c(-k);
      }
      return;
      label64:
      j = getChildAt(i - 1).getRight() - (getWidth() - this.v.right);
      if (i + this.W < this.ao) {
        j += this.av;
      }
      k = 0;
      if (j <= 0) {
        label114:
        k = j;
      }
    }
  }
  
  final int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int i = 0;
    ListAdapter localListAdapter = this.k;
    if (localListAdapter == null)
    {
      paramInt4 = this.v.left + this.v.right;
      return paramInt4;
    }
    int j = this.v.left + this.v.right;
    int k;
    label71:
    p localp;
    boolean bool;
    label104:
    View localView;
    if ((this.av > 0) && (this.au != null))
    {
      k = this.av;
      if (paramInt3 == -1) {
        paramInt3 = -1 + localListAdapter.getCount();
      }
      localp = this.q;
      bool = y();
      boolean[] arrayOfBoolean = this.Q;
      if (paramInt2 > paramInt3) {
        break label239;
      }
      localView = a(paramInt2, arrayOfBoolean);
      a(localView, paramInt2, paramInt1);
      if (paramInt2 <= 0) {
        break label242;
      }
    }
    label239:
    label242:
    for (int m = j + k;; m = j)
    {
      if ((bool) && (localp.b(((i)localView.getLayoutParams()).a))) {
        localp.a(localView, -1);
      }
      j = m + localView.getMeasuredWidth();
      if (j >= paramInt4)
      {
        if ((paramInt5 < 0) || (paramInt2 <= paramInt5) || (i <= 0) || (j == paramInt4)) {
          break;
        }
        return i;
        k = 0;
        break label71;
      }
      if ((paramInt5 >= 0) && (paramInt2 >= paramInt5)) {
        i = j;
      }
      paramInt2++;
      break label104;
      return j;
    }
  }
  
  void a(Canvas paramCanvas, Rect paramRect, int paramInt)
  {
    Drawable localDrawable = this.au;
    localDrawable.setBounds(paramRect);
    localDrawable.draw(paramCanvas);
  }
  
  void a(Canvas paramCanvas, Drawable paramDrawable, Rect paramRect)
  {
    int i = paramDrawable.getMinimumWidth();
    paramCanvas.save();
    paramCanvas.clipRect(paramRect);
    if (paramRect.right - paramRect.left < i) {
      paramRect.left = (paramRect.right - i);
    }
    paramDrawable.setBounds(paramRect);
    paramDrawable.draw(paramCanvas);
    paramCanvas.restore();
  }
  
  public void a(View paramView, Object paramObject, boolean paramBoolean)
  {
    if ((this.k != null) && (!(this.k instanceof as))) {
      throw new IllegalStateException("Cannot add header view to list -- setAdapter has already been called.");
    }
    aq localaq = new aq();
    localaq.a = paramView;
    localaq.b = paramObject;
    localaq.c = paramBoolean;
    this.a.add(localaq);
    if ((this.k != null) && (this.j != null)) {
      this.j.onChanged();
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    int i = getChildCount();
    if (paramBoolean)
    {
      int j = 0;
      if (i > 0) {
        j = getChildAt(i - 1).getRight() + this.av;
      }
      g(i + this.W, j);
      k(getChildCount());
      return;
    }
    if (i > 0) {}
    for (int k = getChildAt(0).getLeft() - this.av;; k = getWidth() - 0)
    {
      h(-1 + this.W, k);
      l(getChildCount());
      return;
    }
  }
  
  final int[] a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    ListAdapter localListAdapter = this.k;
    if (localListAdapter == null)
    {
      int[] arrayOfInt2 = new int[2];
      arrayOfInt2[0] = (this.v.left + this.v.right);
      arrayOfInt2[1] = (this.v.top + this.v.bottom);
      return arrayOfInt2;
    }
    int i = this.v.left + this.v.right;
    int j = this.v.top + this.v.bottom;
    if ((this.av > 0) && (this.au != null)) {}
    int m;
    int n;
    for (int k = this.av;; k = 0)
    {
      if (paramInt3 == -1) {
        paramInt3 = -1 + localListAdapter.getCount();
      }
      p localp = this.q;
      boolean bool = y();
      boolean[] arrayOfBoolean = this.Q;
      m = 0;
      int i3;
      for (n = 0; paramInt2 <= paramInt3; n = i3)
      {
        View localView = a(paramInt2, arrayOfBoolean);
        a(localView, paramInt2, paramInt1);
        if ((bool) && (localp.b(((i)localView.getLayoutParams()).a))) {
          localp.a(localView, -1);
        }
        m = Math.max(m, k + localView.getMeasuredWidth());
        i3 = Math.max(n, localView.getMeasuredHeight());
        paramInt2++;
      }
    }
    int i1 = m + i;
    int i2 = n + j;
    int[] arrayOfInt1 = new int[2];
    arrayOfInt1[0] = Math.min(i1, paramInt4);
    arrayOfInt1[1] = Math.min(i2, paramInt5);
    return arrayOfInt1;
  }
  
  protected int b(int paramInt, boolean paramBoolean)
  {
    ListAdapter localListAdapter = this.k;
    if ((localListAdapter == null) || (isInTouchMode())) {
      paramInt = -1;
    }
    int i;
    do
    {
      do
      {
        return paramInt;
        i = localListAdapter.getCount();
        if (this.aE) {
          break;
        }
        if (paramBoolean) {
          for (paramInt = Math.max(0, paramInt); (paramInt < i) && (!localListAdapter.isEnabled(paramInt)); paramInt++) {}
        }
        for (paramInt = Math.min(paramInt, i - 1); (paramInt >= 0) && (!localListAdapter.isEnabled(paramInt)); paramInt--) {}
      } while ((paramInt >= 0) && (paramInt < i));
      return -1;
    } while ((paramInt >= 0) && (paramInt < i));
    return -1;
  }
  
  void b(Canvas paramCanvas, Drawable paramDrawable, Rect paramRect)
  {
    int i = paramDrawable.getMinimumWidth();
    paramCanvas.save();
    paramCanvas.clipRect(paramRect);
    if (paramRect.right - paramRect.left < i) {
      paramRect.right = (i + paramRect.left);
    }
    paramDrawable.setBounds(paramRect);
    paramDrawable.draw(paramCanvas);
    paramCanvas.restore();
  }
  
  public void b(View paramView, Object paramObject, boolean paramBoolean)
  {
    aq localaq = new aq();
    localaq.a = paramView;
    localaq.b = paramObject;
    localaq.c = paramBoolean;
    this.az.add(localaq);
    if ((this.k != null) && (this.j != null)) {
      this.j.onChanged();
    }
  }
  
  protected boolean canAnimate()
  {
    return (super.canAnimate()) && (this.ao > 0);
  }
  
  protected int d(int paramInt)
  {
    int i = getChildCount();
    if (i > 0)
    {
      if (!this.L) {
        for (int k = 0; k < i; k++) {
          if (paramInt <= getChildAt(k).getRight()) {
            return k + this.W;
          }
        }
      }
      for (int j = i - 1; j >= 0; j--) {
        if (paramInt >= getChildAt(j).getLeft()) {
          return j + this.W;
        }
      }
    }
    return -1;
  }
  
  protected void d()
  {
    a(this.a);
    a(this.az);
    super.d();
    this.i = 0;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (this.z) {
      this.A = true;
    }
    int i = this.av;
    Drawable localDrawable1 = this.ax;
    Drawable localDrawable2 = this.ay;
    int j;
    int k;
    label43:
    int m;
    label57:
    Rect localRect;
    int n;
    int i1;
    int i2;
    int i3;
    boolean bool1;
    boolean bool2;
    int i4;
    boolean bool3;
    ListAdapter localListAdapter;
    int i5;
    label188:
    Paint localPaint;
    int i6;
    label302:
    int i12;
    int i13;
    if (localDrawable1 != null)
    {
      j = 1;
      if (localDrawable2 == null) {
        break label465;
      }
      k = 1;
      if ((i <= 0) || (this.au == null)) {
        break label471;
      }
      m = 1;
      if ((m == 0) && (j == 0) && (k == 0)) {
        break label600;
      }
      localRect = this.aG;
      localRect.top = getPaddingTop();
      localRect.bottom = (getBottom() - getTop() - getPaddingBottom());
      n = getChildCount();
      i1 = this.a.size();
      i2 = this.ao;
      i3 = -1 + (i2 - this.az.size());
      bool1 = this.aC;
      bool2 = this.aD;
      i4 = this.W;
      bool3 = this.aE;
      localListAdapter = this.k;
      if ((!isOpaque()) || (super.isOpaque())) {
        break label477;
      }
      i5 = 1;
      if ((i5 != 0) && (this.aH == null) && (this.aA))
      {
        this.aH = new Paint();
        this.aH.setColor(getCacheColorHint());
      }
      localPaint = this.aH;
      i6 = getRight() - getLeft() - 0 + getScrollX();
      if (this.L) {
        break label606;
      }
      int i11 = getScrollX();
      if ((n > 0) && (i11 < 0))
      {
        if (j == 0) {
          break label483;
        }
        localRect.right = 0;
        localRect.left = i11;
        a(paramCanvas, localDrawable1, localRect);
      }
      i12 = 0;
      i13 = 0;
      label308:
      if (i13 >= n) {
        break label544;
      }
      if (((bool1) || (i4 + i13 >= i1)) && ((bool2) || (i4 + i13 < i3)))
      {
        i12 = getChildAt(i13).getRight();
        if ((m != 0) && (i12 < i6) && ((k == 0) || (i13 != n - 1)))
        {
          if ((!bool3) && ((!localListAdapter.isEnabled(i4 + i13)) || ((i13 != n - 1) && (!localListAdapter.isEnabled(1 + (i4 + i13)))))) {
            break label512;
          }
          localRect.left = i12;
          localRect.right = (i12 + i);
          a(paramCanvas, localRect, i13);
        }
      }
    }
    for (;;)
    {
      i13++;
      break label308;
      j = 0;
      break;
      label465:
      k = 0;
      break label43;
      label471:
      m = 0;
      break label57;
      label477:
      i5 = 0;
      break label188;
      label483:
      if (m == 0) {
        break label302;
      }
      localRect.right = 0;
      localRect.left = (-i);
      a(paramCanvas, localRect, -1);
      break label302;
      label512:
      if (i5 != 0)
      {
        localRect.left = i12;
        localRect.right = (i12 + i);
        paramCanvas.drawRect(localRect, localPaint);
      }
    }
    label544:
    int i14 = getRight() + getScrollX();
    if ((k != 0) && (i4 + n == i2) && (i14 > i12))
    {
      localRect.left = i12;
      localRect.right = i14;
      b(paramCanvas, localDrawable2, localRect);
    }
    for (;;)
    {
      label600:
      super.dispatchDraw(paramCanvas);
      return;
      label606:
      int i7 = getScrollX();
      if ((n > 0) && (j != 0))
      {
        localRect.left = i7;
        localRect.right = getChildAt(0).getLeft();
        a(paramCanvas, localDrawable1, localRect);
      }
      int i8;
      int i10;
      if (j != 0)
      {
        i8 = 1;
        if (i8 >= n) {
          break label828;
        }
        if (((bool1) || (i4 + i8 >= i1)) && ((bool2) || (i4 + i8 < i3)))
        {
          i10 = getChildAt(i8).getLeft();
          if (i10 > 0)
          {
            if ((!bool3) && ((!localListAdapter.isEnabled(i4 + i8)) || ((i8 != n - 1) && (!localListAdapter.isEnabled(1 + (i4 + i8)))))) {
              break label796;
            }
            localRect.left = (i10 - i);
            localRect.right = i10;
            a(paramCanvas, localRect, i8 - 1);
          }
        }
      }
      for (;;)
      {
        i8++;
        break;
        i8 = 0;
        break;
        label796:
        if (i5 != 0)
        {
          localRect.left = (i10 - i);
          localRect.right = i10;
          paramCanvas.drawRect(localRect, localPaint);
        }
      }
      label828:
      if ((n > 0) && (i7 > 0)) {
        if (k != 0)
        {
          int i9 = getRight();
          localRect.left = i9;
          localRect.right = (i9 + i7);
          b(paramCanvas, localDrawable2, localRect);
        }
        else if (m != 0)
        {
          localRect.left = i6;
          localRect.right = (i6 + i);
          a(paramCanvas, localRect, -1);
        }
      }
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool = super.dispatchKeyEvent(paramKeyEvent);
    if ((!bool) && (getFocusedChild() != null) && (paramKeyEvent.getAction() == 0)) {
      bool = onKeyDown(paramKeyEvent.getKeyCode(), paramKeyEvent);
    }
    return bool;
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    boolean bool = super.drawChild(paramCanvas, paramView, paramLong);
    if (this.A) {
      this.A = false;
    }
    return bool;
  }
  
  protected void e()
  {
    boolean bool1 = this.at;
    if (!bool1) {
      this.at = true;
    }
    int i;
    int j;
    int k;
    View localView1;
    int m;
    View localView2;
    View localView3;
    label204:
    boolean bool2;
    try
    {
      super.e();
      invalidate();
      if (this.k == null)
      {
        d();
        b();
        return;
      }
      i = this.v.left;
      j = getRight() - getLeft() - this.v.right;
      k = getChildCount();
      View localView13;
      switch (this.i)
      {
      default: 
        int i6 = this.am - this.W;
        localView1 = null;
        if (i6 >= 0)
        {
          localView1 = null;
          if (i6 < k) {
            localView1 = getChildAt(i6);
          }
        }
        localView13 = getChildAt(0);
        int i7 = this.ak;
        m = 0;
        if (i7 >= 0) {
          m = this.ak - this.am;
        }
        localView2 = getChildAt(i6 + m);
      case 2: 
        for (localView3 = localView13;; localView3 = null)
        {
          bool2 = this.aj;
          if (bool2) {
            q();
          }
          if (this.ao != 0) {
            break;
          }
          d();
          b();
          return;
          int i5 = this.ak - this.W;
          if ((i5 < 0) || (i5 >= k)) {
            break label1170;
          }
          localView2 = getChildAt(i5);
          localView1 = null;
          m = 0;
        }
        if (this.ao != this.k.getCount()) {
          throw new IllegalStateException("The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView(" + getId() + ", " + getClass() + ") with Adapter(" + this.k.getClass() + ")]");
        }
        break;
      }
    }
    finally
    {
      if (!bool1) {
        this.at = false;
      }
    }
    setSelectedPositionInt(this.ak);
    int n = this.W;
    p localp = this.q;
    if (bool2) {
      for (int i4 = 0; i4 < k; i4++) {
        localp.a(getChildAt(i4), n + i4);
      }
    }
    localp.a(k, n);
    View localView4 = getFocusedChild();
    View localView11;
    label501:
    View localView6;
    View localView5;
    label514:
    Object localObject2;
    if (localView4 != null)
    {
      View localView12;
      if (bool2)
      {
        boolean bool3 = a(localView4);
        localView11 = null;
        localView12 = null;
        if (!bool3) {}
      }
      else
      {
        localView12 = findFocus();
        if (localView12 == null) {
          break label1200;
        }
        localView12.onStartTemporaryDetach();
        break label1200;
      }
      requestFocus();
      localView6 = localView12;
      localView5 = localView11;
      detachAllViewsFromParent();
      localp.d();
      switch (this.i)
      {
      default: 
        if (k == 0) {
          if (!this.L)
          {
            setSelectedPositionInt(b(0, true));
            localObject2 = g(i);
            label593:
            localp.e();
            if (localObject2 == null) {
              break label1080;
            }
            if ((!this.aF) || (!hasFocus()) || (((View)localObject2).hasFocus())) {
              break label1070;
            }
            if ((localObject2 == localView5) && (localView6 != null) && (localView6.requestFocus())) {
              break label1207;
            }
            if (!((View)localObject2).requestFocus()) {
              break label1213;
            }
          }
        }
        break;
      }
    }
    for (;;)
    {
      if (i1 == 0)
      {
        View localView7 = getFocusedChild();
        if (localView7 != null) {
          localView7.clearFocus();
        }
        a(-1, (View)localObject2);
        label684:
        this.K = ((View)localObject2).getLeft();
      }
      label1159:
      for (;;)
      {
        if ((localView6 != null) && (localView6.getWindowToken() != null)) {
          localView6.onFinishTemporaryDetach();
        }
        this.i = 0;
        this.aj = false;
        if (this.P != null)
        {
          post(this.P);
          this.P = null;
        }
        this.ad = false;
        setNextSelectedPositionInt(this.am);
        f();
        if (this.ao > 0) {
          v();
        }
        b();
        if (bool1) {
          break;
        }
        this.at = false;
        return;
        if (localView2 != null)
        {
          localObject2 = a(localView2.getLeft(), i, j);
          break label593;
        }
        localObject2 = i(i, j);
        break label593;
        localObject2 = j(this.aa, this.Z);
        break label593;
        View localView10 = h(-1 + this.ao, j);
        z();
        localObject2 = localView10;
        break label593;
        this.W = 0;
        View localView9 = g(i);
        z();
        localObject2 = localView9;
        break label593;
        localObject2 = j(m(), this.Z);
        break label593;
        localObject2 = a(localView1, localView2, m, i, j);
        break label593;
        setSelectedPositionInt(b(-1 + this.ao, false));
        localObject2 = h(-1 + this.ao, j);
        break label593;
        if ((this.am >= 0) && (this.am < this.ao))
        {
          int i3 = this.am;
          if (localView1 == null) {}
          for (;;)
          {
            localObject2 = j(i3, i);
            break;
            i = localView1.getLeft();
          }
        }
        if (this.W < this.ao)
        {
          int i2 = this.W;
          if (localView3 == null) {}
          for (;;)
          {
            localObject2 = j(i2, i);
            break;
            i = localView3.getLeft();
          }
        }
        localObject2 = j(0, i);
        break label593;
        ((View)localObject2).setSelected(false);
        this.p.setEmpty();
        break label684;
        label1070:
        a(-1, (View)localObject2);
        break label684;
        label1080:
        if ((this.G > 0) && (this.G < 3))
        {
          View localView8 = getChildAt(this.B - this.W);
          if (localView8 != null) {
            a(this.B, localView8);
          }
        }
        for (;;)
        {
          if ((!hasFocus()) || (localView6 == null)) {
            break label1159;
          }
          localView6.requestFocus();
          break;
          this.K = 0;
          this.p.setEmpty();
        }
      }
      localView5 = null;
      localView6 = null;
      break label514;
      label1170:
      localView1 = null;
      localView2 = null;
      m = 0;
      localView3 = null;
      break label204;
      localView1 = null;
      localView2 = null;
      m = 0;
      localView3 = null;
      break label204;
      label1200:
      localView11 = localView4;
      break label501;
      label1207:
      int i1 = 1;
      continue;
      label1213:
      i1 = 0;
    }
  }
  
  public void f(int paramInt1, int paramInt2)
  {
    if (this.k == null) {}
    for (;;)
    {
      return;
      if (!isInTouchMode())
      {
        paramInt1 = b(paramInt1, true);
        if (paramInt1 >= 0) {
          setNextSelectedPositionInt(paramInt1);
        }
      }
      while (paramInt1 >= 0)
      {
        this.i = 4;
        this.Z = (paramInt2 + this.v.left);
        if (this.ad)
        {
          this.aa = paramInt1;
          this.ab = this.k.getItemId(paramInt1);
        }
        if (this.J != null) {
          this.J.a();
        }
        requestLayout();
        return;
        this.N = paramInt1;
      }
    }
  }
  
  public void f(View paramView)
  {
    a(paramView, null, true);
  }
  
  public void g(View paramView)
  {
    b(paramView, null, true);
  }
  
  public ListAdapter getAdapter()
  {
    return this.k;
  }
  
  @Deprecated
  public long[] getCheckItemIds()
  {
    if ((this.k != null) && (this.k.hasStableIds())) {
      return getCheckedItemIds();
    }
    int i;
    long[] arrayOfLong1;
    int j;
    int k;
    int m;
    if ((this.c != 0) && (this.g != null) && (this.k != null))
    {
      SparseArrayCompat localSparseArrayCompat = this.g;
      i = localSparseArrayCompat.size();
      arrayOfLong1 = new long[i];
      ListAdapter localListAdapter = this.k;
      j = 0;
      k = 0;
      if (j < i)
      {
        if (!((Boolean)localSparseArrayCompat.valueAt(j)).booleanValue()) {
          break label156;
        }
        m = k + 1;
        arrayOfLong1[k] = localListAdapter.getItemId(localSparseArrayCompat.keyAt(j));
      }
    }
    for (;;)
    {
      j++;
      k = m;
      break;
      if (k == i) {
        return arrayOfLong1;
      }
      long[] arrayOfLong2 = new long[k];
      System.arraycopy(arrayOfLong1, 0, arrayOfLong2, 0, k);
      return arrayOfLong2;
      return new long[0];
      label156:
      m = k;
    }
  }
  
  public Drawable getDivider()
  {
    return this.au;
  }
  
  public int getDividerWidth()
  {
    return this.av;
  }
  
  public int getFooterViewsCount()
  {
    return this.az.size();
  }
  
  public int getHeaderViewsCount()
  {
    return this.a.size();
  }
  
  public boolean getItemsCanFocus()
  {
    return this.aF;
  }
  
  public int getMaxScrollAmount()
  {
    return (int)(0.33F * (getRight() - getLeft()));
  }
  
  public Drawable getOverscrollFooter()
  {
    return this.ay;
  }
  
  public Drawable getOverscrollHeader()
  {
    return this.ax;
  }
  
  boolean h(int paramInt)
  {
    int i;
    boolean bool;
    if (paramInt == 33)
    {
      i = Math.max(0, -1 + (this.am - getChildCount()));
      bool = false;
    }
    for (;;)
    {
      if (i >= 0)
      {
        int j = b(i, bool);
        if (j >= 0)
        {
          this.i = 4;
          this.Z = (getPaddingLeft() + getHorizontalFadingEdgeLength());
          if ((bool) && (j > this.ao - getChildCount())) {
            this.i = 3;
          }
          if ((!bool) && (j < getChildCount())) {
            this.i = 1;
          }
          setSelectionInt(j);
          b();
          if (!awakenScrollBars()) {
            invalidate();
          }
          return true;
          if (paramInt != 130) {
            break label158;
          }
          i = Math.min(-1 + this.ao, -1 + (this.am + getChildCount()));
          bool = true;
          continue;
        }
      }
      return false;
      label158:
      i = -1;
      bool = false;
    }
  }
  
  boolean i(int paramInt)
  {
    int i = 1;
    if (paramInt == 33)
    {
      if (this.am == 0) {
        break label121;
      }
      int k = b(0, i);
      if (k >= 0)
      {
        this.i = i;
        setSelectionInt(k);
        b();
      }
    }
    for (;;)
    {
      if ((i != 0) && (!awakenScrollBars()))
      {
        awakenScrollBars();
        invalidate();
      }
      return i;
      if ((paramInt == 130) && (this.am < -1 + this.ao))
      {
        int j = b(-1 + this.ao, i);
        if (j >= 0)
        {
          this.i = 3;
          setSelectionInt(j);
          b();
        }
      }
      else
      {
        label121:
        i = 0;
      }
    }
  }
  
  public boolean isOpaque()
  {
    boolean bool;
    if (((this.A) && (this.aA) && (this.aB)) || (super.isOpaque()))
    {
      bool = true;
      if (!bool) {
        return bool;
      }
      if (this.v == null) {
        break label74;
      }
    }
    label74:
    for (int i = this.v.left;; i = getPaddingLeft())
    {
      View localView1 = getChildAt(0);
      if ((localView1 != null) && (localView1.getLeft() <= i)) {
        break label82;
      }
      return false;
      bool = false;
      break;
    }
    label82:
    int j = getWidth();
    if (this.v != null) {}
    for (int k = this.v.right;; k = getPaddingRight())
    {
      int m = j - k;
      View localView2 = getChildAt(-1 + getChildCount());
      if ((localView2 != null) && (localView2.getRight() >= m)) {
        break;
      }
      return false;
    }
    return bool;
  }
  
  boolean j(int paramInt)
  {
    try
    {
      this.af = true;
      boolean bool = n(paramInt);
      if (bool) {
        playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
      }
      return bool;
    }
    finally
    {
      this.af = false;
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    int i = getChildCount();
    if (i > 0)
    {
      for (int j = 0; j < i; j++) {
        f(getChildAt(j));
      }
      removeAllViews();
    }
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    ListAdapter localListAdapter = this.k;
    int i = -1;
    int j = 0;
    Rect localRect;
    int k;
    int i1;
    int i3;
    int i4;
    if (localListAdapter != null)
    {
      j = 0;
      if (paramBoolean)
      {
        j = 0;
        if (paramRect != null)
        {
          paramRect.offset(getScrollX(), getScrollY());
          if (localListAdapter.getCount() < getChildCount() + this.W)
          {
            this.i = 0;
            e();
          }
          localRect = this.aG;
          k = 2147483647;
          int m = getChildCount();
          int n = this.W;
          i1 = 0;
          if (i1 < m) {
            if (!localListAdapter.isEnabled(n + i1))
            {
              i3 = j;
              i4 = i;
            }
          }
        }
      }
    }
    for (;;)
    {
      i1++;
      i = i4;
      j = i3;
      break;
      View localView = getChildAt(i1);
      localView.getDrawingRect(localRect);
      offsetDescendantRectToMyCoords(localView, localRect);
      int i2 = a(paramRect, localRect, paramInt);
      if (i2 < k)
      {
        int i5 = localView.getLeft();
        i4 = i1;
        k = i2;
        i3 = i5;
        continue;
        if (i >= 0)
        {
          f(i + this.W, j);
          return;
        }
        requestLayout();
      }
      else
      {
        i3 = j;
        i4 = i;
      }
    }
  }
  
  public void onGlobalLayout() {}
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(HListView.class.getName());
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(HListView.class.getName());
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((getParent() != null) && (this.aK) && (!gl.b())) {
      getParent().requestDisallowInterceptTouchEvent(true);
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, 1, paramKeyEvent);
  }
  
  public boolean onKeyMultiple(int paramInt1, int paramInt2, KeyEvent paramKeyEvent)
  {
    return a(paramInt1, paramInt2, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, 1, paramKeyEvent);
  }
  
  @TargetApi(11)
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    View.MeasureSpec.getSize(paramInt2);
    int k;
    int i2;
    int m;
    if (this.k == null)
    {
      k = 0;
      this.ao = k;
      if (this.ao <= 0) {
        break label249;
      }
      if (i != 0) {}
      View localView = a(0, this.Q);
      a(localView, 0, paramInt2);
      i2 = localView.getMeasuredWidth();
      int i3 = localView.getMeasuredHeight();
      if (Build.VERSION.SDK_INT >= 11) {
        combineMeasuredStates(0, localView.getMeasuredState());
      }
      if ((y()) && (this.q.b(((i)localView.getLayoutParams()).a))) {
        this.q.a(localView, -1);
      }
      m = i3;
    }
    for (int n = i2;; n = 0)
    {
      int i1 = m + (this.v.top + this.v.bottom) + getHorizontalScrollbarHeight();
      if (i == 0) {
        j = n + (this.v.left + this.v.right) + 2 * getHorizontalFadingEdgeLength();
      }
      if (i == -2147483648) {
        j = a(paramInt2, 0, -1, j, -1);
      }
      setMeasuredDimension(j, i1);
      this.w = paramInt2;
      return;
      k = this.k.getCount();
      break;
      label249:
      m = 0;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (getChildCount() > 0)
    {
      View localView = getFocusedChild();
      if (localView != null)
      {
        int i = this.W + indexOfChild(localView);
        int j = Math.max(0, localView.getRight() - (paramInt1 - getPaddingLeft()));
        int k = localView.getLeft() - j;
        if (this.aJ == null) {
          this.aJ = new ar(this, null);
        }
        post(this.aJ.a(i, k));
      }
    }
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    int i = paramRect.left;
    paramRect.offset(paramView.getLeft(), paramView.getTop());
    paramRect.offset(-paramView.getScrollX(), -paramView.getScrollY());
    int j = getWidth();
    int k = getScrollX();
    int m = k + j;
    int n = getHorizontalFadingEdgeLength();
    if ((A()) && ((this.am > 0) || (i > n))) {
      k += n;
    }
    int i1 = getChildAt(-1 + getChildCount()).getRight();
    if ((B()) && ((this.am < -1 + this.ao) || (paramRect.right < i1 - n))) {
      m -= n;
    }
    int i4;
    int i2;
    if ((paramRect.right > m) && (paramRect.left > k)) {
      if (paramRect.width() > j)
      {
        i4 = 0 + (paramRect.left - k);
        i2 = Math.min(i4, i1 - m);
      }
    }
    for (;;)
    {
      if (i2 != 0) {}
      for (boolean bool = true;; bool = false)
      {
        if (bool)
        {
          q(-i2);
          a(-1, paramView);
          this.K = paramView.getTop();
          invalidate();
        }
        return bool;
        i4 = 0 + (paramRect.right - m);
        break;
        if ((paramRect.left >= k) || (paramRect.right >= m)) {
          break label323;
        }
        if (paramRect.width() > j) {}
        for (int i3 = 0 - (m - paramRect.right);; i3 = 0 - (k - paramRect.left))
        {
          i2 = Math.max(i3, getChildAt(0).getLeft() - k);
          break;
        }
      }
      label323:
      i2 = 0;
    }
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if ((this.k != null) && (this.j != null)) {
      this.k.unregisterDataSetObserver(this.j);
    }
    d();
    this.q.b();
    int i;
    if ((this.a.size() > 0) || (this.az.size() > 0))
    {
      this.k = new as(this.a, this.az, paramListAdapter);
      this.ar = -1;
      this.as = -9223372036854775808L;
      super.setAdapter(paramListAdapter);
      if (this.k == null) {
        break label244;
      }
      this.aE = this.k.areAllItemsEnabled();
      this.ap = this.ao;
      this.ao = this.k.getCount();
      t();
      this.j = new c(this);
      this.k.registerDataSetObserver(this.j);
      this.q.a(this.k.getViewTypeCount());
      if (!this.L) {
        break label234;
      }
      i = b(-1 + this.ao, false);
      label200:
      setSelectedPositionInt(i);
      setNextSelectedPositionInt(i);
      if (this.ao == 0) {
        v();
      }
    }
    for (;;)
    {
      requestLayout();
      return;
      this.k = paramListAdapter;
      break;
      label234:
      i = b(0, true);
      break label200;
      label244:
      this.aE = true;
      t();
      v();
    }
  }
  
  public void setCacheColorHint(int paramInt)
  {
    if (paramInt >>> 24 == 255) {}
    for (boolean bool = true;; bool = false)
    {
      this.aA = bool;
      if (bool)
      {
        if (this.aH == null) {
          this.aH = new Paint();
        }
        this.aH.setColor(paramInt);
      }
      super.setCacheColorHint(paramInt);
      return;
    }
  }
  
  public void setDivider(Drawable paramDrawable)
  {
    if (paramDrawable != null) {}
    for (this.av = paramDrawable.getIntrinsicWidth();; this.av = 0)
    {
      this.au = paramDrawable;
      boolean bool;
      if (paramDrawable != null)
      {
        int i = paramDrawable.getOpacity();
        bool = false;
        if (i != -1) {}
      }
      else
      {
        bool = true;
      }
      this.aB = bool;
      requestLayout();
      invalidate();
      return;
    }
  }
  
  public void setDividerWidth(int paramInt)
  {
    this.av = paramInt;
    requestLayout();
    invalidate();
  }
  
  public void setFooterDividersEnabled(boolean paramBoolean)
  {
    this.aD = paramBoolean;
    invalidate();
  }
  
  public void setHeaderDividersEnabled(boolean paramBoolean)
  {
    this.aC = paramBoolean;
    invalidate();
  }
  
  public void setItemsCanFocus(boolean paramBoolean)
  {
    this.aF = paramBoolean;
    if (!paramBoolean) {
      setDescendantFocusability(393216);
    }
  }
  
  public void setNeedInterceptEvents(boolean paramBoolean)
  {
    this.aK = paramBoolean;
  }
  
  public void setOverscrollFooter(Drawable paramDrawable)
  {
    this.ay = paramDrawable;
    invalidate();
  }
  
  public void setOverscrollHeader(Drawable paramDrawable)
  {
    this.ax = paramDrawable;
    if (getScrollX() < 0) {
      invalidate();
    }
  }
  
  public void setSelection(int paramInt)
  {
    f(paramInt, 0);
  }
  
  public void setSelectionInt(int paramInt)
  {
    int i = 1;
    setNextSelectedPositionInt(paramInt);
    int j = this.am;
    if (j >= 0) {
      if (paramInt != j - 1) {}
    }
    for (;;)
    {
      if (this.J != null) {
        this.J.a();
      }
      e();
      if (i != 0) {
        awakenScrollBars();
      }
      return;
      if (paramInt != j + 1) {
        i = 0;
      }
    }
  }
  
  @ViewDebug.ExportedProperty(category="list")
  protected boolean y()
  {
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.HListView
 * JD-Core Version:    0.7.0.1
 */