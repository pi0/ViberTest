package pager;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager
  extends ViewGroup
{
  private static final int[] a = { 16842931 };
  private static final Comparator<e> b = new b();
  private static final Interpolator c = new c();
  private boolean A;
  private int B;
  private int C;
  private int D;
  private float E;
  private float F;
  private float G;
  private int H;
  private VelocityTracker I;
  private int J;
  private int K;
  private int L;
  private int M;
  private boolean N;
  private EdgeEffectCompat O;
  private EdgeEffectCompat P;
  private boolean Q;
  private boolean R;
  private boolean S;
  private int T;
  private h U;
  private h V;
  private g W;
  private int Z;
  private final ArrayList<e> d;
  private final e e;
  private final Rect f;
  private a g;
  private int h;
  private int i;
  private Parcelable j;
  private ClassLoader k;
  private Scroller l;
  private i m;
  private int n;
  private Drawable o;
  private int p;
  private int q;
  private float r;
  private float s;
  private int t;
  private int u;
  private boolean v;
  private boolean w;
  private boolean x;
  private int y;
  private boolean z;
  
  private int a(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > this.L) && (Math.abs(paramInt2) > this.J)) {
      if (paramInt2 <= 0) {}
    }
    for (;;)
    {
      if (this.d.size() > 0)
      {
        e locale1 = (e)this.d.get(0);
        e locale2 = (e)this.d.get(-1 + this.d.size());
        paramInt1 = Math.max(locale1.b, Math.min(paramInt1, locale2.b));
      }
      return paramInt1;
      paramInt1++;
      continue;
      paramInt1 = (int)(0.5F + (paramFloat + paramInt1));
    }
  }
  
  private Rect a(Rect paramRect, View paramView)
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
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.l.forceFinished(true);
    e locale = b(this.h);
    if (locale != null) {}
    for (float f1 = Math.min(locale.e, this.s);; f1 = 0.0F)
    {
      int i1 = (int)(f1 * paramInt1);
      if (i1 != getScrollX())
      {
        g();
        scrollTo(i1, getScrollY());
      }
      return;
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i1) == this.H) {
      if (i1 != 0) {
        break label56;
      }
    }
    label56:
    for (int i2 = 1;; i2 = 0)
    {
      this.F = MotionEventCompat.getX(paramMotionEvent, i2);
      this.H = MotionEventCompat.getPointerId(paramMotionEvent, i2);
      if (this.I != null) {
        this.I.clear();
      }
      return;
    }
  }
  
  private void a(e parame1, int paramInt, e parame2)
  {
    int i1 = this.g.a();
    int i2 = getWidth();
    float f1;
    int i12;
    float f9;
    int i15;
    int i16;
    if (i2 > 0)
    {
      f1 = this.n / i2;
      if (parame2 == null) {
        break label371;
      }
      i12 = parame2.b;
      if (i12 < parame1.b)
      {
        f9 = f1 + (parame2.e + parame2.d);
        i15 = i12 + 1;
        i16 = 0;
      }
    }
    else
    {
      for (;;)
      {
        if ((i15 > parame1.b) || (i16 >= this.d.size())) {
          break label371;
        }
        e locale4 = (e)this.d.get(i16);
        for (;;)
        {
          if ((i15 > locale4.b) && (i16 < -1 + this.d.size()))
          {
            i16++;
            locale4 = (e)this.d.get(i16);
            continue;
            f1 = 0.0F;
            break;
          }
        }
        while (i15 < locale4.b)
        {
          f9 += f1 + this.g.a(i15);
          i15++;
        }
        locale4.e = f9;
        f9 += f1 + locale4.d;
        i15++;
      }
    }
    if (i12 > parame1.b)
    {
      int i13 = -1 + this.d.size();
      float f8 = parame2.e;
      for (int i14 = i12 - 1; (i14 >= parame1.b) && (i13 >= 0); i14--)
      {
        for (e locale3 = (e)this.d.get(i13); (i14 < locale3.b) && (i13 > 0); locale3 = (e)this.d.get(i13)) {
          i13--;
        }
        while (i14 > locale3.b)
        {
          f8 -= f1 + this.g.a(i14);
          i14--;
        }
        f8 -= f1 + locale3.d;
        locale3.e = f8;
      }
    }
    label371:
    int i3 = this.d.size();
    float f2 = parame1.e;
    int i4 = -1 + parame1.b;
    float f3;
    float f4;
    if (parame1.b == 0)
    {
      f3 = parame1.e;
      this.r = f3;
      if (parame1.b != i1 - 1) {
        break label522;
      }
      f4 = parame1.e + parame1.d - 1.0F;
      label437:
      this.s = f4;
    }
    label522:
    int i10;
    for (int i5 = paramInt - 1;; i5 = i10)
    {
      if (i5 < 0) {
        break label579;
      }
      e locale2 = (e)this.d.get(i5);
      float f7 = f2;
      for (;;)
      {
        if (i4 > locale2.b)
        {
          a locala2 = this.g;
          int i11 = i4 - 1;
          f7 -= f1 + locala2.a(i4);
          i4 = i11;
          continue;
          f3 = -3.402824E+038F;
          break;
          f4 = 3.4028235E+38F;
          break label437;
        }
      }
      f2 = f7 - (f1 + locale2.d);
      locale2.e = f2;
      if (locale2.b == 0) {
        this.r = f2;
      }
      i10 = i5 - 1;
      i4--;
    }
    label579:
    float f5 = f1 + (parame1.e + parame1.d);
    int i6 = 1 + parame1.b;
    int i8;
    for (int i7 = paramInt + 1; i7 < i3; i7 = i8)
    {
      e locale1 = (e)this.d.get(i7);
      float f6 = f5;
      while (i6 < locale1.b)
      {
        a locala1 = this.g;
        int i9 = i6 + 1;
        f6 += f1 + locala1.a(i6);
        i6 = i9;
      }
      if (locale1.b == i1 - 1) {
        this.s = (f6 + locale1.d - 1.0F);
      }
      locale1.e = f6;
      f5 = f6 + (f1 + locale1.d);
      i8 = i7 + 1;
      i6++;
    }
    this.R = false;
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    return ((paramFloat1 < this.C) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - this.C) && (paramFloat2 < 0.0F));
  }
  
  private boolean b(float paramFloat)
  {
    int i1 = 1;
    float f1 = this.F - paramFloat;
    this.F = paramFloat;
    float f2 = f1 + getScrollX();
    int i2 = getWidth();
    float f3 = i2 * this.r;
    float f4 = i2 * this.s;
    e locale1 = (e)this.d.get(0);
    e locale2 = (e)this.d.get(-1 + this.d.size());
    if (locale1.b != 0) {
      f3 = locale1.e * i2;
    }
    for (int i3 = 0;; i3 = i1)
    {
      float f5;
      if (locale2.b != -1 + this.g.a())
      {
        f5 = locale2.e * i2;
        i1 = 0;
      }
      for (;;)
      {
        boolean bool;
        if (f2 < f3)
        {
          bool = false;
          if (i3 != 0)
          {
            float f6 = f3 - f2;
            bool = this.O.onPull(Math.abs(f6) / i2);
          }
        }
        for (;;)
        {
          this.F += f3 - (int)f3;
          scrollTo((int)f3, getScrollY());
          d((int)f3);
          return bool;
          if (f2 > f5)
          {
            bool = false;
            if (i1 != 0)
            {
              float f7 = f2 - f5;
              bool = this.P.onPull(Math.abs(f7) / i2);
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
  
  private boolean d(int paramInt)
  {
    boolean bool1;
    if (this.d.size() == 0)
    {
      this.S = false;
      a(0, 0.0F, 0);
      boolean bool2 = this.S;
      bool1 = false;
      if (!bool2) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
    }
    else
    {
      e locale = h();
      int i1 = getWidth();
      int i2 = i1 + this.n;
      float f1 = this.n / i1;
      int i3 = locale.b;
      float f2 = (paramInt / i1 - locale.e) / (f1 + locale.d);
      int i4 = (int)(f2 * i2);
      this.S = false;
      a(i3, f2, i4);
      if (!this.S) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
      bool1 = true;
    }
    return bool1;
  }
  
  private void f()
  {
    for (int i1 = 0; i1 < getChildCount(); i1++) {
      if (!((f)getChildAt(i1).getLayoutParams()).a)
      {
        removeViewAt(i1);
        i1--;
      }
    }
  }
  
  private void g()
  {
    if (this.Z == 2) {}
    int i3;
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        setScrollingCacheEnabled(false);
        this.l.abortAnimation();
        int i4 = getScrollX();
        int i5 = getScrollY();
        int i6 = this.l.getCurrX();
        int i7 = this.l.getCurrY();
        if ((i4 != i6) || (i5 != i7)) {
          scrollTo(i6, i7);
        }
        setScrollState(0);
      }
      this.x = false;
      int i2 = 0;
      i3 = i1;
      while (i2 < this.d.size())
      {
        e locale = (e)this.d.get(i2);
        if (locale.c)
        {
          locale.c = false;
          i3 = 1;
        }
        i2++;
      }
    }
    if (i3 != 0) {
      b();
    }
  }
  
  private e h()
  {
    int i1 = getWidth();
    float f1;
    float f2;
    label31:
    float f3;
    float f4;
    int i2;
    int i3;
    int i4;
    Object localObject;
    label49:
    e locale1;
    e locale3;
    int i5;
    if (i1 > 0)
    {
      f1 = getScrollX() / i1;
      if (i1 <= 0) {
        break label210;
      }
      f2 = this.n / i1;
      f3 = 0.0F;
      f4 = 0.0F;
      i2 = -1;
      i3 = 0;
      i4 = 1;
      localObject = null;
      if (i3 < this.d.size())
      {
        locale1 = (e)this.d.get(i3);
        if ((i4 != 0) || (locale1.b == i2 + 1)) {
          break label261;
        }
        locale3 = this.e;
        locale3.e = (f2 + (f3 + f4));
        locale3.b = (i2 + 1);
        locale3.d = this.g.a(locale3.b);
        i5 = i3 - 1;
      }
    }
    for (e locale2 = locale3;; locale2 = locale1)
    {
      float f5 = locale2.e;
      float f6 = f2 + (f5 + locale2.d);
      if ((i4 != 0) || (f1 >= f5))
      {
        if ((f1 < f6) || (i5 == -1 + this.d.size())) {
          localObject = locale2;
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
      int i6 = locale2.b;
      float f7 = locale2.d;
      int i7 = i5 + 1;
      f4 = f5;
      i2 = i6;
      f3 = f7;
      localObject = locale2;
      i3 = i7;
      i4 = 0;
      break label49;
      label261:
      i5 = i3;
    }
  }
  
  private void i()
  {
    this.z = false;
    this.A = false;
    if (this.I != null)
    {
      this.I.recycle();
      this.I = null;
    }
  }
  
  private void setScrollState(int paramInt)
  {
    if (this.Z == paramInt) {}
    do
    {
      return;
      this.Z = paramInt;
    } while (this.U == null);
    this.U.b(paramInt);
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.w != paramBoolean) {
      this.w = paramBoolean;
    }
  }
  
  float a(float paramFloat)
  {
    return (float)Math.sin((float)(0.47123891676382D * (paramFloat - 0.5F)));
  }
  
  e a(int paramInt1, int paramInt2)
  {
    e locale = new e();
    locale.b = paramInt1;
    locale.a = this.g.a(this, paramInt1);
    locale.d = this.g.a(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 >= this.d.size()))
    {
      this.d.add(locale);
      return locale;
    }
    this.d.add(paramInt2, locale);
    return locale;
  }
  
  e a(View paramView)
  {
    for (int i1 = 0; i1 < this.d.size(); i1++)
    {
      e locale = (e)this.d.get(i1);
      if (this.g.a(paramView, locale.a)) {
        return locale;
      }
    }
    return null;
  }
  
  void a()
  {
    int i1;
    int i3;
    int i4;
    int i5;
    int i6;
    label53:
    e locale;
    int i9;
    int i10;
    int i11;
    int i12;
    int i13;
    if ((this.d.size() < 1 + 2 * this.y) && (this.d.size() < this.g.a()))
    {
      i1 = 1;
      int i2 = this.h;
      i3 = 0;
      i4 = i2;
      i5 = i1;
      i6 = 0;
      if (i6 >= this.d.size()) {
        break label299;
      }
      locale = (e)this.d.get(i6);
      i9 = this.g.a(locale.a);
      if (i9 != -1) {
        break label143;
      }
      i10 = i6;
      i11 = i3;
      i12 = i4;
      i13 = i5;
    }
    for (;;)
    {
      int i14 = i10 + 1;
      i5 = i13;
      i4 = i12;
      i3 = i11;
      i6 = i14;
      break label53;
      i1 = 0;
      break;
      label143:
      int i15;
      if (i9 == -2)
      {
        this.d.remove(i6);
        i15 = i6 - 1;
        if (i3 == 0)
        {
          this.g.a(this);
          i3 = 1;
        }
        this.g.a(this, locale.b, locale.a);
        if (this.h == locale.b)
        {
          int i16 = Math.max(0, Math.min(this.h, -1 + this.g.a()));
          i10 = i15;
          i11 = i3;
          i12 = i16;
          i13 = 1;
        }
      }
      else
      {
        if (locale.b != i9)
        {
          if (locale.b == this.h) {
            i4 = i9;
          }
          locale.b = i9;
          i10 = i6;
          i11 = i3;
          i12 = i4;
          i13 = 1;
          continue;
          label299:
          if (i3 != 0) {
            this.g.b(this);
          }
          Collections.sort(this.d, b);
          if (i5 != 0)
          {
            int i7 = getChildCount();
            for (int i8 = 0; i8 < i7; i8++)
            {
              f localf = (f)getChildAt(i8).getLayoutParams();
              if (!localf.a) {
                localf.c = 0.0F;
              }
            }
            a(i4, false, true);
            requestLayout();
          }
          return;
        }
        i10 = i6;
        i11 = i3;
        i12 = i4;
        i13 = i5;
        continue;
      }
      i10 = i15;
      i11 = i3;
      i12 = i4;
      i13 = 1;
    }
  }
  
  void a(int paramInt)
  {
    e locale12;
    if (this.h != paramInt)
    {
      locale12 = b(this.h);
      this.h = paramInt;
    }
    for (e locale1 = locale12;; locale1 = null)
    {
      if (this.g == null) {
        label33:
        return;
      }
      int i2;
      int i3;
      int i4;
      int i5;
      e locale2;
      if ((!this.x) && (getWindowToken() != null))
      {
        this.g.a(this);
        int i1 = this.y;
        i2 = Math.max(0, this.h - i1);
        i3 = this.g.a();
        i4 = Math.min(i3 - 1, i1 + this.h);
        i5 = 0;
        if (i5 >= this.d.size()) {
          break label1065;
        }
        locale2 = (e)this.d.get(i5);
        if (locale2.b >= this.h) {
          if (locale2.b != this.h) {
            break label1065;
          }
        }
      }
      for (;;)
      {
        if ((locale2 == null) && (i3 > 0)) {}
        for (e locale3 = a(this.h, i5);; locale3 = locale2)
        {
          e locale7;
          label202:
          float f2;
          int i12;
          int i13;
          int i14;
          float f3;
          int i15;
          if (locale3 != null)
          {
            int i10 = i5 - 1;
            if (i10 < 0) {
              break label489;
            }
            locale7 = (e)this.d.get(i10);
            float f1 = 2.0F - locale3.d;
            int i11 = -1 + this.h;
            f2 = 0.0F;
            i12 = i11;
            i13 = i5;
            i14 = i10;
            if (i12 >= 0)
            {
              if ((f2 < f1) || (i12 >= i2)) {
                break label575;
              }
              if (locale7 != null) {
                break label495;
              }
            }
            f3 = locale3.d;
            i15 = i13 + 1;
            if (f3 < 2.0F) {
              if (i15 >= this.d.size()) {
                break label680;
              }
            }
          }
          float f4;
          int i17;
          int i18;
          label325:
          Object localObject1;
          label384:
          label680:
          for (Object localObject2 = (e)this.d.get(i15);; localObject2 = null)
          {
            int i16 = 1 + this.h;
            f4 = f3;
            i17 = i15;
            i18 = i16;
            if (i18 < i3)
            {
              if ((f4 < 2.0F) || (i18 <= i4)) {
                break label791;
              }
              if (localObject2 != null) {
                break label686;
              }
            }
            a(locale3, i13, locale1);
            a locala = this.g;
            int i6 = this.h;
            if (locale3 == null) {
              break label928;
            }
            localObject1 = locale3.a;
            locala.b(this, i6, localObject1);
            this.g.b(this);
            int i7 = getChildCount();
            for (int i8 = 0; i8 < i7; i8++)
            {
              View localView3 = getChildAt(i8);
              f localf = (f)localView3.getLayoutParams();
              if ((!localf.a) && (localf.c == 0.0F))
              {
                e locale6 = a(localView3);
                if (locale6 != null) {
                  localf.c = locale6.d;
                }
              }
            }
            i5++;
            break;
            label489:
            locale7 = null;
            break label202;
            label495:
            if ((i12 == locale7.b) && (!locale7.c))
            {
              this.d.remove(i14);
              this.g.a(this, i12, locale7.a);
              i14--;
              i13--;
              if (i14 < 0) {
                break label569;
              }
              locale7 = (e)this.d.get(i14);
            }
            for (;;)
            {
              i12--;
              break;
              label569:
              locale7 = null;
              continue;
              label575:
              if ((locale7 != null) && (i12 == locale7.b))
              {
                f2 += locale7.d;
                i14--;
                if (i14 >= 0) {
                  locale7 = (e)this.d.get(i14);
                } else {
                  locale7 = null;
                }
              }
              else
              {
                f2 += a(i12, i14 + 1).d;
                i13++;
                if (i14 >= 0) {
                  locale7 = (e)this.d.get(i14);
                } else {
                  locale7 = null;
                }
              }
            }
          }
          label686:
          e locale11;
          label755:
          Object localObject3;
          float f6;
          if ((i18 == ((e)localObject2).b) && (!((e)localObject2).c))
          {
            this.d.remove(i17);
            this.g.a(this, i18, ((e)localObject2).a);
            if (i17 < this.d.size())
            {
              locale11 = (e)this.d.get(i17);
              float f10 = f4;
              localObject3 = locale11;
              f6 = f10;
            }
          }
          for (;;)
          {
            i18++;
            float f7 = f6;
            localObject2 = localObject3;
            f4 = f7;
            break label325;
            locale11 = null;
            break label755;
            label791:
            if ((localObject2 != null) && (i18 == ((e)localObject2).b))
            {
              float f8 = f4 + ((e)localObject2).d;
              i17++;
              if (i17 < this.d.size()) {}
              for (e locale10 = (e)this.d.get(i17);; locale10 = null)
              {
                localObject3 = locale10;
                f6 = f8;
                break;
              }
            }
            e locale8 = a(i18, i17);
            i17++;
            float f5 = f4 + locale8.d;
            if (i17 < this.d.size()) {}
            for (e locale9 = (e)this.d.get(i17);; locale9 = null)
            {
              localObject3 = locale9;
              f6 = f5;
              break;
            }
            label928:
            localObject1 = null;
            break label384;
            if (!hasFocus()) {
              break;
            }
            View localView1 = findFocus();
            if (localView1 != null) {}
            for (e locale4 = b(localView1);; locale4 = null)
            {
              if ((locale4 != null) && (locale4.b == this.h)) {
                break label1041;
              }
              for (int i9 = 0;; i9++)
              {
                if (i9 >= getChildCount()) {
                  break label1035;
                }
                View localView2 = getChildAt(i9);
                e locale5 = a(localView2);
                if ((locale5 != null) && (locale5.b == this.h) && (localView2.requestFocus(2))) {
                  break;
                }
              }
              label1035:
              break label33;
            }
            label1041:
            break label33;
            break label33;
            float f9 = f4;
            localObject3 = localObject2;
            f6 = f9;
          }
        }
        label1065:
        locale2 = null;
      }
    }
  }
  
  protected void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.T > 0)
    {
      int i1 = getScrollX();
      int i2 = getPaddingLeft();
      int i3 = getPaddingRight();
      int i4 = getWidth();
      int i5 = getChildCount();
      int i6 = 0;
      while (i6 < i5)
      {
        View localView = getChildAt(i6);
        f localf = (f)localView.getLayoutParams();
        int i9;
        int i10;
        if (!localf.a)
        {
          int i17 = i3;
          i9 = i2;
          i10 = i17;
          i6++;
          int i12 = i10;
          i2 = i9;
          i3 = i12;
        }
        else
        {
          int i7;
          switch (0x7 & localf.b)
          {
          case 2: 
          case 4: 
          default: 
            i7 = i2;
            int i16 = i3;
            i9 = i2;
            i10 = i16;
          }
          for (;;)
          {
            int i11 = i7 + i1 - localView.getLeft();
            if (i11 == 0) {
              break;
            }
            localView.offsetLeftAndRight(i11);
            break;
            int i14 = i2 + localView.getWidth();
            int i15 = i2;
            i10 = i3;
            i9 = i14;
            i7 = i15;
            continue;
            i7 = Math.max((i4 - localView.getMeasuredWidth()) / 2, i2);
            int i13 = i3;
            i9 = i2;
            i10 = i13;
            continue;
            i7 = i4 - i3 - localView.getMeasuredWidth();
            int i8 = i3 + localView.getMeasuredWidth();
            i9 = i2;
            i10 = i8;
          }
        }
      }
    }
    if (this.U != null) {
      this.U.a(paramInt1, paramFloat, paramInt2);
    }
    if (this.V != null) {
      this.V.a(paramInt1, paramFloat, paramInt2);
    }
    this.S = true;
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0)
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i1 = getScrollX();
    int i2 = getScrollY();
    int i3 = paramInt1 - i1;
    int i4 = paramInt2 - i2;
    if ((i3 == 0) && (i4 == 0))
    {
      g();
      b();
      setScrollState(0);
      return;
    }
    setScrollingCacheEnabled(true);
    setScrollState(2);
    int i5 = getWidth();
    int i6 = i5 / 2;
    float f1 = Math.min(1.0F, 1.0F * Math.abs(i3) / i5);
    float f2 = i6 + i6 * a(f1);
    int i7 = Math.abs(paramInt3);
    if (i7 > 0) {}
    float f3;
    for (int i8 = 4 * Math.round(1000.0F * Math.abs(f2 / i7));; i8 = (int)(100.0F * (1.0F + Math.abs(i3) / (f3 + this.n))))
    {
      int i9 = Math.min(i8, 600);
      this.l.startScroll(i1, i2, i3, i4, i9);
      ViewCompat.postInvalidateOnAnimation(this);
      return;
      f3 = i5 * this.g.a(this.h);
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    this.x = false;
    a(paramInt, paramBoolean, false);
  }
  
  void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((this.g == null) || (this.g.a() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!paramBoolean2) && (this.h == paramInt1) && (this.d.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if (paramInt1 < 0) {
      paramInt1 = 0;
    }
    for (;;)
    {
      int i1 = this.y;
      if ((paramInt1 <= i1 + this.h) && (paramInt1 >= this.h - i1)) {
        break;
      }
      for (int i2 = 0; i2 < this.d.size(); i2++) {
        ((e)this.d.get(i2)).c = true;
      }
      if (paramInt1 >= this.g.a()) {
        paramInt1 = -1 + this.g.a();
      }
    }
    int i3;
    label157:
    e locale;
    if (this.h != paramInt1)
    {
      i3 = 1;
      a(paramInt1);
      locale = b(paramInt1);
      if (locale == null) {
        break label322;
      }
    }
    label322:
    for (int i4 = (int)(getWidth() * Math.max(this.r, Math.min(locale.e, this.s)));; i4 = 0)
    {
      if (paramBoolean1)
      {
        a(i4, 0, paramInt2);
        if ((i3 != 0) && (this.U != null)) {
          this.U.a(paramInt1);
        }
        if ((i3 == 0) || (this.V == null)) {
          break;
        }
        this.V.a(paramInt1);
        return;
        i3 = 0;
        break label157;
      }
      if ((i3 != 0) && (this.U != null)) {
        this.U.a(paramInt1);
      }
      if ((i3 != 0) && (this.V != null)) {
        this.V.a(paramInt1);
      }
      g();
      scrollTo(i4, 0);
      return;
    }
  }
  
  public boolean a(KeyEvent paramKeyEvent)
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
        return c(17);
        return c(66);
      } while (Build.VERSION.SDK_INT < 11);
      if (KeyEventCompat.hasNoModifiers(paramKeyEvent)) {
        return c(2);
      }
    } while (!KeyEventCompat.hasModifiers(paramKeyEvent, 1));
    return c(1);
  }
  
  protected boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i3;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i1 = paramView.getScrollX();
      int i2 = paramView.getScrollY();
      i3 = -1 + localViewGroup.getChildCount();
      if (i3 >= 0)
      {
        localView = localViewGroup.getChildAt(i3);
        if ((paramInt2 + i1 < localView.getLeft()) || (paramInt2 + i1 >= localView.getRight()) || (paramInt3 + i2 < localView.getTop()) || (paramInt3 + i2 >= localView.getBottom()) || (!a(localView, true, paramInt1, paramInt2 + i1 - localView.getLeft(), paramInt3 + i2 - localView.getTop()))) {}
      }
    }
    while ((paramBoolean) && (ViewCompat.canScrollHorizontally(paramView, -paramInt1)))
    {
      View localView;
      return true;
      i3--;
      break;
    }
    return false;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i1 = paramArrayList.size();
    int i2 = getDescendantFocusability();
    if (i2 != 393216) {
      for (int i3 = 0; i3 < getChildCount(); i3++)
      {
        View localView = getChildAt(i3);
        if (localView.getVisibility() == 0)
        {
          e locale = a(localView);
          if ((locale != null) && (locale.b == this.h)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
      }
    }
    if (((i2 == 262144) && (i1 != paramArrayList.size())) || (!isFocusable())) {}
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null)) {
      return;
    }
    paramArrayList.add(this);
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    for (int i1 = 0; i1 < getChildCount(); i1++)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        e locale = a(localView);
        if ((locale != null) && (locale.b == this.h)) {
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
      f localf = (f)localLayoutParams;
      localf.a |= paramView instanceof d;
      if (this.v)
      {
        if ((localf != null) && (localf.a)) {
          throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        localf.d = true;
        addViewInLayout(paramView, paramInt, localLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, localLayoutParams);
      return;
    }
  }
  
  e b(int paramInt)
  {
    for (int i1 = 0; i1 < this.d.size(); i1++)
    {
      e locale = (e)this.d.get(i1);
      if (locale.b == paramInt) {
        return locale;
      }
    }
    return null;
  }
  
  e b(View paramView)
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
    return a(paramView);
  }
  
  void b()
  {
    a(this.h);
  }
  
  boolean c()
  {
    if (this.h > 0)
    {
      a(-1 + this.h, true);
      return true;
    }
    return false;
  }
  
  public boolean c(int paramInt)
  {
    View localView1 = findFocus();
    if (localView1 == this) {
      localView1 = null;
    }
    View localView2 = FocusFinder.getInstance().findNextFocus(this, localView1, paramInt);
    boolean bool;
    if ((localView2 != null) && (localView2 != localView1)) {
      if (paramInt == 17)
      {
        int i3 = a(this.f, localView2).left;
        int i4 = a(this.f, localView1).left;
        if ((localView1 != null) && (i3 >= i4)) {
          bool = c();
        }
      }
    }
    for (;;)
    {
      if (bool) {
        playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
      }
      return bool;
      bool = localView2.requestFocus();
      continue;
      if (paramInt == 66)
      {
        int i1 = a(this.f, localView2).left;
        int i2 = a(this.f, localView1).left;
        if ((localView1 != null) && (i1 <= i2))
        {
          bool = d();
          continue;
        }
        bool = localView2.requestFocus();
        continue;
        if ((paramInt == 17) || (paramInt == 1))
        {
          bool = c();
          continue;
        }
        if ((paramInt == 66) || (paramInt == 2))
        {
          bool = d();
          continue;
        }
      }
      bool = false;
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof f)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if ((!this.l.isFinished()) && (this.l.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.l.getCurrX();
      int i4 = this.l.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        if (!d(i3))
        {
          this.l.abortAnimation();
          scrollTo(0, i4);
        }
      }
      ViewCompat.postInvalidateOnAnimation(this);
      return;
    }
    g();
  }
  
  boolean d()
  {
    if ((this.g != null) && (this.h < -1 + this.g.a()))
    {
      a(1 + this.h, true);
      return true;
    }
    return false;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (a(paramKeyEvent));
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    int i1 = getChildCount();
    for (int i2 = 0;; i2++)
    {
      boolean bool = false;
      if (i2 < i1)
      {
        View localView = getChildAt(i2);
        if (localView.getVisibility() == 0)
        {
          e locale = a(localView);
          if ((locale != null) && (locale.b == this.h) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
            bool = true;
          }
        }
      }
      else
      {
        return bool;
      }
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i1 = ViewCompat.getOverScrollMode(this);
    boolean bool2;
    if ((i1 == 0) || ((i1 == 1) && (this.g != null) && (this.g.a() > 1)))
    {
      boolean bool1 = this.O.isFinished();
      bool2 = false;
      if (!bool1)
      {
        int i5 = paramCanvas.save();
        int i6 = getHeight() - getPaddingTop() - getPaddingBottom();
        int i7 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i6 + getPaddingTop(), this.r * i7);
        this.O.setSize(i6, i7);
        bool2 = false | this.O.draw(paramCanvas);
        paramCanvas.restoreToCount(i5);
      }
      if (!this.P.isFinished())
      {
        int i2 = paramCanvas.save();
        int i3 = getWidth();
        int i4 = getHeight() - getPaddingTop() - getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(1.0F + this.s) * i3);
        this.P.setSize(i4, i3);
        bool2 |= this.P.draw(paramCanvas);
        paramCanvas.restoreToCount(i2);
      }
    }
    for (;;)
    {
      if (bool2) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      return;
      this.O.finish();
      this.P.finish();
      bool2 = false;
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.o;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new f();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new f(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  public a getAdapter()
  {
    return this.g;
  }
  
  public int getCurrentItem()
  {
    return this.h;
  }
  
  public int getOffscreenPageLimit()
  {
    return this.y;
  }
  
  public int getPageMargin()
  {
    return this.n;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.Q = true;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i1;
    int i2;
    float f1;
    e locale;
    float f2;
    int i3;
    int i4;
    int i5;
    int i6;
    if ((this.n > 0) && (this.o != null) && (this.d.size() > 0) && (this.g != null))
    {
      i1 = getScrollX();
      i2 = getWidth();
      f1 = this.n / i2;
      locale = (e)this.d.get(0);
      f2 = locale.e;
      i3 = this.d.size();
      i4 = locale.b;
      i5 = ((e)this.d.get(i3 - 1)).b;
      i6 = 0;
    }
    for (int i7 = i4;; i7++)
    {
      float f4;
      if (i7 < i5)
      {
        while ((i7 > locale.b) && (i6 < i3))
        {
          ArrayList localArrayList = this.d;
          i6++;
          locale = (e)localArrayList.get(i6);
        }
        if (i7 != locale.b) {
          break label271;
        }
        f4 = (locale.e + locale.d) * i2;
      }
      label271:
      float f3;
      for (f2 = f1 + (locale.e + locale.d);; f2 += f3 + f1)
      {
        if (f4 + this.n > i1)
        {
          this.o.setBounds((int)f4, this.p, (int)(0.5F + (f4 + this.n)), this.q);
          this.o.draw(paramCanvas);
        }
        if (f4 <= i1 + i2) {
          break;
        }
        return;
        f3 = this.g.a(i7);
        f4 = (f2 + f3) * i2;
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0xFF & paramMotionEvent.getAction();
    if ((i1 == 3) || (i1 == 1))
    {
      this.z = false;
      this.A = false;
      this.H = -1;
      if (this.I != null)
      {
        this.I.recycle();
        this.I = null;
      }
    }
    do
    {
      return false;
      if (i1 == 0) {
        break;
      }
      if (this.z) {
        return true;
      }
    } while (this.A);
    switch (i1)
    {
    }
    for (;;)
    {
      if (this.I == null) {
        this.I = VelocityTracker.obtain();
      }
      this.I.addMovement(paramMotionEvent);
      return this.z;
      int i2 = this.H;
      if (i2 != -1)
      {
        int i3 = MotionEventCompat.findPointerIndex(paramMotionEvent, i2);
        float f2 = MotionEventCompat.getX(paramMotionEvent, i3);
        float f3 = f2 - this.F;
        float f4 = Math.abs(f3);
        float f5 = MotionEventCompat.getY(paramMotionEvent, i3);
        float f6 = Math.abs(f5 - this.G);
        if ((f3 != 0.0F) && (!a(this.F, f3)) && (a(this, false, (int)f3, (int)f2, (int)f5)))
        {
          this.F = f2;
          this.E = f2;
          this.G = f5;
          this.A = true;
          return false;
        }
        float f7;
        if ((f4 > this.D) && (f4 > f6))
        {
          this.z = true;
          setScrollState(1);
          if (f3 > 0.0F)
          {
            f7 = this.E + this.D;
            label314:
            this.F = f7;
            setScrollingCacheEnabled(true);
          }
        }
        while ((this.z) && (b(f2)))
        {
          ViewCompat.postInvalidateOnAnimation(this);
          break;
          f7 = this.E - this.D;
          break label314;
          if (f6 > this.D) {
            this.A = true;
          }
        }
        float f1 = paramMotionEvent.getX();
        this.E = f1;
        this.F = f1;
        this.G = paramMotionEvent.getY();
        this.H = MotionEventCompat.getPointerId(paramMotionEvent, 0);
        this.A = false;
        this.l.computeScrollOffset();
        if ((this.Z == 2) && (Math.abs(this.l.getFinalX() - this.l.getCurrX()) > this.M))
        {
          this.l.abortAnimation();
          this.x = false;
          b();
          this.z = true;
          setScrollState(1);
        }
        else
        {
          g();
          this.z = false;
          continue;
          a(paramMotionEvent);
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.v = true;
    b();
    this.v = false;
    int i1 = getChildCount();
    int i2 = paramInt3 - paramInt1;
    int i3 = paramInt4 - paramInt2;
    int i4 = getPaddingLeft();
    int i5 = getPaddingTop();
    int i6 = getPaddingRight();
    int i7 = getPaddingBottom();
    int i8 = getScrollX();
    int i9 = 0;
    int i10 = 0;
    View localView2;
    int i20;
    label172:
    int i21;
    int i23;
    int i24;
    label224:
    int i13;
    int i14;
    int i15;
    if (i10 < i1)
    {
      localView2 = getChildAt(i10);
      if (localView2.getVisibility() == 8) {
        break label653;
      }
      f localf2 = (f)localView2.getLayoutParams();
      if (!localf2.a) {
        break label653;
      }
      int i17 = 0x7 & localf2.b;
      int i18 = 0x70 & localf2.b;
      switch (i17)
      {
      case 2: 
      case 4: 
      default: 
        i20 = i4;
        switch (i18)
        {
        default: 
          i21 = i5;
          int i29 = i7;
          i23 = i5;
          i24 = i29;
          int i25 = i20 + i8;
          localView2.layout(i25, i21, i25 + localView2.getMeasuredWidth(), i21 + localView2.getMeasuredHeight());
          i13 = i9 + 1;
          i14 = i23;
          i7 = i24;
          i15 = i6;
        }
        break;
      }
    }
    for (int i16 = i4;; i16 = i4)
    {
      i10++;
      i4 = i16;
      i6 = i15;
      i5 = i14;
      i9 = i13;
      break;
      int i30 = i4 + localView2.getMeasuredWidth();
      i20 = i4;
      i4 = i30;
      break label172;
      i20 = Math.max((i2 - localView2.getMeasuredWidth()) / 2, i4);
      break label172;
      int i19 = i2 - i6 - localView2.getMeasuredWidth();
      i6 += localView2.getMeasuredWidth();
      i20 = i19;
      break label172;
      int i27 = i5 + localView2.getMeasuredHeight();
      int i28 = i5;
      i24 = i7;
      i23 = i27;
      i21 = i28;
      break label224;
      i21 = Math.max((i3 - localView2.getMeasuredHeight()) / 2, i5);
      int i26 = i7;
      i23 = i5;
      i24 = i26;
      break label224;
      i21 = i3 - i7 - localView2.getMeasuredHeight();
      int i22 = i7 + localView2.getMeasuredHeight();
      i23 = i5;
      i24 = i22;
      break label224;
      for (int i11 = 0; i11 < i1; i11++)
      {
        View localView1 = getChildAt(i11);
        if (localView1.getVisibility() != 8)
        {
          f localf1 = (f)localView1.getLayoutParams();
          if (!localf1.a)
          {
            e locale = a(localView1);
            if (locale != null)
            {
              int i12 = i4 + (int)(i2 * locale.e);
              if (localf1.d)
              {
                localf1.d = false;
                localView1.measure(View.MeasureSpec.makeMeasureSpec((int)((i2 - i4 - i6) * localf1.c), 1073741824), View.MeasureSpec.makeMeasureSpec(i3 - i5 - i7, 1073741824));
              }
              localView1.layout(i12, i5, i12 + localView1.getMeasuredWidth(), i5 + localView1.getMeasuredHeight());
            }
          }
        }
      }
      this.p = i5;
      this.q = (i3 - i7);
      this.T = i9;
      this.Q = false;
      return;
      label653:
      i13 = i9;
      i14 = i5;
      i15 = i6;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    int i1 = getMeasuredWidth();
    this.C = Math.min(i1 / 10, this.B);
    int i2 = i1 - getPaddingLeft() - getPaddingRight();
    int i3 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i4 = getChildCount();
    int i5 = 0;
    View localView2;
    f localf2;
    int i10;
    int i11;
    int i12;
    label167:
    int i13;
    label182:
    label192:
    int i14;
    int i15;
    if (i5 < i4)
    {
      localView2 = getChildAt(i5);
      if (localView2.getVisibility() != 8)
      {
        localf2 = (f)localView2.getLayoutParams();
        if ((localf2 != null) && (localf2.a))
        {
          int i8 = 0x7 & localf2.b;
          int i9 = 0x70 & localf2.b;
          i10 = -2147483648;
          i11 = -2147483648;
          if ((i9 != 48) && (i9 != 80)) {
            break label294;
          }
          i12 = 1;
          if ((i8 != 3) && (i8 != 5)) {
            break label300;
          }
          i13 = 1;
          if (i12 == 0) {
            break label306;
          }
          i10 = 1073741824;
          if (localf2.width == -2) {
            break label478;
          }
          i14 = 1073741824;
          if (localf2.width == -1) {
            break label471;
          }
          i15 = localf2.width;
        }
      }
    }
    for (;;)
    {
      if (localf2.height != -2)
      {
        i11 = 1073741824;
        if (localf2.height == -1) {}
      }
      for (int i16 = localf2.height;; i16 = i3)
      {
        localView2.measure(View.MeasureSpec.makeMeasureSpec(i15, i14), View.MeasureSpec.makeMeasureSpec(i16, i11));
        if (i12 != 0) {
          i3 -= localView2.getMeasuredHeight();
        }
        for (;;)
        {
          i5++;
          break;
          label294:
          i12 = 0;
          break label167;
          label300:
          i13 = 0;
          break label182;
          label306:
          if (i13 == 0) {
            break label192;
          }
          i11 = 1073741824;
          break label192;
          if (i13 != 0) {
            i2 -= localView2.getMeasuredWidth();
          }
        }
        this.t = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        this.u = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        this.v = true;
        b();
        this.v = false;
        int i6 = getChildCount();
        for (int i7 = 0; i7 < i6; i7++)
        {
          View localView1 = getChildAt(i7);
          if (localView1.getVisibility() != 8)
          {
            f localf1 = (f)localView1.getLayoutParams();
            if ((localf1 == null) || (!localf1.a)) {
              localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(i2 * localf1.c), 1073741824), this.u);
            }
          }
        }
        return;
      }
      label471:
      i15 = i2;
      continue;
      label478:
      i14 = i10;
      i15 = i2;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i1 = -1;
    int i2 = getChildCount();
    int i3;
    if ((paramInt & 0x2) != 0)
    {
      i1 = 1;
      i3 = 0;
    }
    while (i3 != i2)
    {
      View localView = getChildAt(i3);
      if (localView.getVisibility() == 0)
      {
        e locale = a(localView);
        if ((locale != null) && (locale.b == this.h) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          i3 = i2 - 1;
          i2 = i1;
          continue;
        }
      }
      i3 += i1;
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
    if (this.g != null)
    {
      this.g.a(localSavedState.b, localSavedState.c);
      a(localSavedState.a, false, true);
      return;
    }
    this.i = localSavedState.a;
    this.j = localSavedState.b;
    this.k = localSavedState.c;
  }
  
  public Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.h;
    if (this.g != null) {
      localSavedState.b = this.g.b();
    }
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      a(paramInt1, paramInt3, this.n, this.n);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.N) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    if ((this.g == null) || (this.g.a() == 0)) {
      return false;
    }
    if (this.I == null) {
      this.I = VelocityTracker.obtain();
    }
    this.I.addMovement(paramMotionEvent);
    int i1 = 0xFF & paramMotionEvent.getAction();
    boolean bool1 = false;
    switch (i1)
    {
    }
    for (;;)
    {
      if (bool1) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      return true;
      this.l.abortAnimation();
      this.x = false;
      b();
      this.z = true;
      setScrollState(1);
      float f5 = paramMotionEvent.getX();
      this.E = f5;
      this.F = f5;
      this.H = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      bool1 = false;
      continue;
      if (!this.z)
      {
        int i6 = MotionEventCompat.findPointerIndex(paramMotionEvent, this.H);
        float f1 = MotionEventCompat.getX(paramMotionEvent, i6);
        float f2 = Math.abs(f1 - this.F);
        float f3 = Math.abs(MotionEventCompat.getY(paramMotionEvent, i6) - this.G);
        if ((f2 > this.D) && (f2 > f3))
        {
          this.z = true;
          if (f1 - this.E <= 0.0F) {
            break label340;
          }
        }
      }
      label340:
      for (float f4 = this.E + this.D;; f4 = this.E - this.D)
      {
        this.F = f4;
        setScrollState(1);
        setScrollingCacheEnabled(true);
        boolean bool4 = this.z;
        bool1 = false;
        if (!bool4) {
          break;
        }
        bool1 = false | b(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.H)));
        break;
      }
      boolean bool3 = this.z;
      bool1 = false;
      if (bool3)
      {
        VelocityTracker localVelocityTracker = this.I;
        localVelocityTracker.computeCurrentVelocity(1000, this.K);
        int i3 = (int)VelocityTrackerCompat.getXVelocity(localVelocityTracker, this.H);
        this.x = true;
        int i4 = getWidth();
        int i5 = getScrollX();
        e locale = h();
        a(a(locale.b, (i5 / i4 - locale.e) / locale.d, i3, (int)(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.H)) - this.E)), true, true, i3);
        this.H = -1;
        i();
        bool1 = this.O.onRelease() | this.P.onRelease();
        continue;
        boolean bool2 = this.z;
        bool1 = false;
        if (bool2)
        {
          a(this.h, true, true);
          this.H = -1;
          i();
          bool1 = this.O.onRelease() | this.P.onRelease();
          continue;
          int i2 = MotionEventCompat.getActionIndex(paramMotionEvent);
          this.F = MotionEventCompat.getX(paramMotionEvent, i2);
          this.H = MotionEventCompat.getPointerId(paramMotionEvent, i2);
          bool1 = false;
          continue;
          a(paramMotionEvent);
          this.F = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.H));
          bool1 = false;
        }
      }
    }
  }
  
  public void setAdapter(a parama)
  {
    if (this.g != null)
    {
      this.g.b(this.m);
      this.g.a(this);
      for (int i1 = 0; i1 < this.d.size(); i1++)
      {
        e locale = (e)this.d.get(i1);
        this.g.a(this, locale.b, locale.a);
      }
      this.g.b(this);
      this.d.clear();
      f();
      this.h = 0;
      scrollTo(0, 0);
    }
    a locala = this.g;
    this.g = parama;
    if (this.g != null)
    {
      if (this.m == null) {
        this.m = new i(this, null);
      }
      this.g.a(this.m);
      this.x = false;
      this.Q = true;
      if (this.i < 0) {
        break label235;
      }
      this.g.a(this.j, this.k);
      a(this.i, false, true);
      this.i = -1;
      this.j = null;
      this.k = null;
    }
    for (;;)
    {
      if ((this.W != null) && (locala != parama)) {
        this.W.a(locala, parama);
      }
      return;
      label235:
      b();
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    this.x = false;
    if (!this.Q) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    if (paramInt < 1)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to " + 1);
      paramInt = 1;
    }
    if (paramInt != this.y)
    {
      this.y = paramInt;
      b();
    }
  }
  
  void setOnAdapterChangeListener(g paramg)
  {
    this.W = paramg;
  }
  
  public void setOnPageChangeListener(h paramh)
  {
    this.U = paramh;
  }
  
  public void setPageMargin(int paramInt)
  {
    int i1 = this.n;
    this.n = paramInt;
    int i2 = getWidth();
    a(i2, i2, paramInt, i1);
    requestLayout();
  }
  
  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.o = paramDrawable;
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
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.o);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     pager.ViewPager
 * JD-Core Version:    0.7.0.1
 */