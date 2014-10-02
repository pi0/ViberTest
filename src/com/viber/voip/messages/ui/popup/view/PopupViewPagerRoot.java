package com.viber.voip.messages.ui.popup.view;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.view.View;
import com.viber.voip.messages.ui.popup.a.j;
import com.viber.voip.messages.ui.popup.a.l;
import com.viber.voip.ui.ap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PopupViewPagerRoot
  extends ap
{
  final ViewPager.OnPageChangeListener a = new d(this);
  private List<ViewPager> b = new ArrayList();
  private f c;
  private int d;
  private int e;
  private int f;
  private boolean g;
  private boolean h = true;
  private int i;
  private float j = -1.0F;
  
  public PopupViewPagerRoot(Context paramContext)
  {
    super(paramContext);
    d();
    e();
  }
  
  public PopupViewPagerRoot(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
    e();
  }
  
  private void a(int paramInt)
  {
    this.h = false;
    b(paramInt);
    super.setCurrentItem(paramInt);
  }
  
  private void a(int paramInt, float paramFloat)
  {
    if (paramFloat != 0.0F)
    {
      int k;
      if (paramInt < this.d)
      {
        int m = paramInt + 1;
        k = paramInt;
        paramInt = m;
      }
      for (;;)
      {
        if ((this.e != paramInt) || (this.f != k))
        {
          this.e = paramInt;
          this.f = k;
          a(this.e, this.f);
        }
        return;
        k = paramInt + 1;
      }
    }
    this.d = paramInt;
    a(true);
  }
  
  private void a(int paramInt1, float paramFloat, int paramInt2)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      ViewPager localViewPager = (ViewPager)localIterator.next();
      j localj = (j)localViewPager.getAdapter();
      if ((localViewPager.getTag(2131165823) != null) && (localViewPager.getTag(2131165823).equals(Boolean.valueOf(true))))
      {
        int k = localj.a().a(paramInt1);
        if ((paramInt2 != 0) && (paramInt2 > this.i)) {}
        for (float f1 = k * (this.j - this.i) + paramInt2 - this.i;; f1 = k * (this.j - this.i))
        {
          localViewPager.scrollTo((int)f1, getScrollY());
          break;
        }
      }
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (this.c != null) {
      this.c.a(paramInt1, paramInt2);
    }
    Iterator localIterator = this.b.iterator();
    if (localIterator.hasNext())
    {
      ViewPager localViewPager = (ViewPager)localIterator.next();
      if (!((j)localViewPager.getAdapter()).a().a(paramInt1, paramInt2)) {}
      for (boolean bool = true;; bool = false)
      {
        localViewPager.setTag(2131165823, Boolean.valueOf(bool));
        break;
      }
    }
  }
  
  private void b(int paramInt)
  {
    Iterator localIterator = this.b.iterator();
    for (;;)
    {
      ViewPager localViewPager;
      j localj;
      if (localIterator.hasNext())
      {
        localViewPager = (ViewPager)localIterator.next();
        localj = (j)localViewPager.getAdapter();
      }
      try
      {
        localj.notifyDataSetChanged();
        localViewPager.setCurrentItem(localj.a().b(paramInt));
      }
      catch (NullPointerException localNullPointerException)
      {
        continue;
        return;
      }
      catch (IllegalStateException localIllegalStateException) {}
    }
  }
  
  private void d()
  {
    setOffscreenPageLimit(3);
    setHorizontalFadingEdgeEnabled(true);
    setFadingEdgeLength(15);
  }
  
  private void e()
  {
    setOnPageChangeListener(this.a);
  }
  
  public void a()
  {
    if (getCurrentItem() < -1 + getAdapter().getCount()) {
      super.setCurrentItem(1 + getCurrentItem());
    }
  }
  
  public void a(ViewPager paramViewPager)
  {
    if (this.b == null) {
      this.b = new ArrayList();
    }
    this.b.add(paramViewPager);
  }
  
  void a(boolean paramBoolean)
  {
    if (this.c != null) {
      this.c.a(this.d);
    }
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      j localj = (j)((ViewPager)localIterator.next()).getAdapter();
      try
      {
        localj.a().a(this.d, paramBoolean);
      }
      catch (NullPointerException localNullPointerException) {}
    }
  }
  
  public void addView(View paramView, int paramInt)
  {
    if ((!this.g) && (this.c != null) && (paramInt == 0)) {
      this.c.a(paramInt);
    }
    super.addView(paramView, paramInt);
  }
  
  public void b()
  {
    if (getCurrentItem() > 0) {
      super.setCurrentItem(-1 + getCurrentItem());
    }
  }
  
  public void c()
  {
    a(-1 + getAdapter().getCount());
  }
  
  public int getSetedPosition()
  {
    return this.d;
  }
  
  public void setChildViewPager(List<ViewPager> paramList)
  {
    this.b = paramList;
  }
  
  public void setCurrentItem(int paramInt)
  {
    throw new RuntimeException("not implement correct swipe to position");
  }
  
  public void setCurrentItem(int paramInt, boolean paramBoolean)
  {
    throw new RuntimeException("not implement correct swipe to position");
  }
  
  public void setOnPagerChangingListener(f paramf)
  {
    this.c = paramf;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.view.PopupViewPagerRoot
 * JD-Core Version:    0.7.0.1
 */