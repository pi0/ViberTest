package com.viber.voip.gallery.animation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorSet;
import com.nineoldandroids.animation.ObjectAnimator;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.ui.view.ViewPagerWithPagingEnable;
import com.viber.voip.util.gl;

public class d
  extends PagerAdapter
  implements ViewPager.OnPageChangeListener, y
{
  private final LayoutInflater a;
  private int b;
  private ViewPagerWithPagingEnable c;
  private c d = null;
  private View e = null;
  private View f = null;
  private View g;
  private s h;
  private a i;
  private b j;
  private ViewPager.OnPageChangeListener k;
  private View.OnClickListener l;
  private final View.OnClickListener m = new e(this);
  private Runnable n;
  private boolean o;
  
  public d(c paramc, ViewPagerWithPagingEnable paramViewPagerWithPagingEnable)
  {
    Context localContext = paramViewPagerWithPagingEnable.getContext();
    this.a = LayoutInflater.from(localContext);
    this.c = paramViewPagerWithPagingEnable;
    this.d = paramc;
    a(localContext.getApplicationContext());
  }
  
  @SuppressLint({"NewApi"})
  private View a(View paramView, int paramInt, boolean paramBoolean)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)this.a.inflate(2130903344, null);
    View localView1 = localRelativeLayout.findViewById(2131165292);
    View localView2 = localRelativeLayout.findViewById(2131165293);
    View localView3 = localRelativeLayout.findViewById(2131166152);
    if (paramBoolean)
    {
      localView1.setVisibility(0);
      localView2.setVisibility(0);
      localView3.setVisibility(0);
      paramView.setVisibility(4);
      localView1.setOnClickListener(new l(this, paramView));
      localRelativeLayout.setOnTouchListener(this.h);
    }
    for (;;)
    {
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
      localLayoutParams.addRule(13);
      localRelativeLayout.addView(paramView, localLayoutParams);
      localRelativeLayout.setTag(2131165294, Integer.valueOf(paramInt));
      paramView.setTag(2131165294, Integer.valueOf(paramInt));
      if (gl.b())
      {
        localRelativeLayout.setLayerType(2, null);
        paramView.setLayerType(2, null);
      }
      return localRelativeLayout;
      localView1.setVisibility(8);
      localView2.setVisibility(8);
      localView3.setVisibility(8);
    }
  }
  
  private void a()
  {
    View localView;
    int i1;
    if (this.f != null)
    {
      localView = e(this.f);
      i1 = ((Integer)localView.getTag(2131165294)).intValue();
      if (i1 != this.c.getCurrentItem()) {
        break label41;
      }
    }
    label41:
    do
    {
      return;
      if (this.n != null)
      {
        this.f.removeCallbacks(this.n);
        this.n = null;
      }
      int i2 = this.c.getCurrentItem();
      ViewHelper.setAlpha(this.f, 0.0F);
      this.c.setAdapter(null);
      if (!this.o) {
        d(i1);
      }
      this.d.c(i1, localView);
      this.f = null;
      this.c.setAdapter(this);
      a("removeAbandonedViewIfNeeded pageIndex=" + i1 + " currentItem=" + i2);
      if (getCount() > 0)
      {
        ViewPagerWithPagingEnable localViewPagerWithPagingEnable = this.c;
        if (i2 > i1) {
          i2--;
        }
        localViewPagerWithPagingEnable.setCurrentItem(i2);
      }
      if (i1 == 0) {
        onPageSelected(i1);
      }
    } while (this.o);
    e(i1);
  }
  
  private void a(Context paramContext)
  {
    this.d.registerDataSetObserver(new f(this));
    this.c.setOnPageChangeListener(this);
    this.h = new s(paramContext, this, w.c, 40);
    this.g = this.a.inflate(2130903141, null);
    this.g.findViewById(2131165594).setOnClickListener(this.m);
  }
  
  private void a(View paramView, x paramx, boolean paramBoolean)
  {
    this.c.setPagingEnabled(false);
    if (this.f != null)
    {
      this.f.removeCallbacks(this.n);
      this.n = null;
    }
    int i1 = ((Integer)paramView.getTag(2131165294)).intValue();
    View localView1 = e(paramView);
    a("pageIndex=" + i1);
    int i2;
    int i3;
    label94:
    ViewPagerWithPagingEnable localViewPagerWithPagingEnable;
    if (i1 != -1 + getCount())
    {
      i2 = 1;
      i3 = 0;
      if (i3 < this.c.getChildCount())
      {
        View localView3 = this.c.getChildAt(i3);
        int i6 = ((Integer)localView3.getTag(2131165294)).intValue();
        int i7 = i1 + i2;
        if ((localView3 == null) || (((i2 >= 0) || (i6 != i7)) && ((i2 <= 0) || (i6 != i7)))) {
          break label303;
        }
        this.e = localView3;
      }
      if (this.e != null) {
        break label316;
      }
      this.c.setAdapter(null);
      if (!this.o) {
        d(i1);
      }
      this.d.c(i1, localView1);
      this.c.setAdapter(this);
      if (getCount() > 0)
      {
        localViewPagerWithPagingEnable = this.c;
        if (i1 != -1 + this.b) {
          break label309;
        }
      }
    }
    label303:
    label309:
    for (int i5 = i1 - 1;; i5 = i1)
    {
      localViewPagerWithPagingEnable.setCurrentItem(i5);
      paramx.a();
      this.c.setPagingEnabled(true);
      if (i1 == 0) {
        onPageSelected(i1);
      }
      if (!this.o) {
        e(i1);
      }
      return;
      i2 = -1;
      break;
      i3++;
      break label94;
    }
    label316:
    this.e.setOnTouchListener(null);
    if (i1 == -1 + getCount()) {}
    ObjectAnimator localObjectAnimator1;
    for (int i4 = this.f.getLeft() - this.e.getLeft();; i4 = -(this.e.getRight() - this.f.getRight()))
    {
      View localView2 = this.e;
      float[] arrayOfFloat = new float[1];
      arrayOfFloat[0] = i4;
      localObjectAnimator1 = ObjectAnimator.ofFloat(localView2, "translationX", arrayOfFloat).setDuration(300L);
      if (!paramBoolean) {
        break;
      }
      ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(paramView, "alpha", new float[] { 0.0F }).setDuration(300L);
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.playTogether(new Animator[] { localObjectAnimator2, localObjectAnimator1 });
      localAnimatorSet.addListener(new j(this, i1, localView1, paramx));
      localAnimatorSet.start();
      return;
    }
    localObjectAnimator1.setStartDelay(100L);
    localObjectAnimator1.addListener(new k(this, i1, localView1, paramx));
    localObjectAnimator1.start();
  }
  
  private static void a(String paramString)
  {
    ViberApplication.log(3, "SwipablePagerAdapterWrapper", paramString);
  }
  
  private int b()
  {
    return this.d.getCount();
  }
  
  private void b(int paramInt)
  {
    if (this.i != null)
    {
      a("notifyViewRemoved(int): undone page removal at " + paramInt);
      this.i.c(this.f, null, paramInt);
    }
  }
  
  private void c()
  {
    if (this.f != null)
    {
      this.f.removeCallbacks(this.n);
      this.n = null;
    }
  }
  
  private void c(int paramInt)
  {
    if (this.i != null)
    {
      a("notifyUndoPageAbandoned(int): abandoned page at " + paramInt);
      this.i.a(this.f, paramInt);
    }
  }
  
  private void d(int paramInt)
  {
    if (this.j != null) {
      this.j.b(this.f, null, paramInt);
    }
  }
  
  private View e(View paramView)
  {
    if (!this.o) {
      return paramView;
    }
    ViewGroup localViewGroup = (ViewGroup)paramView;
    int i1 = localViewGroup.getChildCount();
    for (int i2 = 0;; i2++)
    {
      View localView = null;
      if (i2 < i1)
      {
        int i3 = localViewGroup.getChildAt(i2).getId();
        if ((i3 != 2131165292) && (i3 != 2131165293) && (i3 != 2131166152)) {
          localView = localViewGroup.getChildAt(i2);
        }
      }
      else
      {
        return localView;
      }
    }
  }
  
  private void e(int paramInt)
  {
    if (this.j != null)
    {
      a("notifyViewRemoved(int) removed page at " + paramInt);
      this.j.a(this.f, null, paramInt);
    }
  }
  
  private boolean f(int paramInt)
  {
    int i1 = b();
    return (this.b > 0) && (i1 < this.b) && (paramInt == i1);
  }
  
  public void a(int paramInt)
  {
    this.b = paramInt;
  }
  
  public void a(ViewPager.OnPageChangeListener paramOnPageChangeListener)
  {
    this.k = paramOnPageChangeListener;
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    this.l = paramOnClickListener;
  }
  
  public void a(View paramView)
  {
    int i1 = ((Integer)paramView.getTag(2131165294)).intValue();
    this.d.a(paramView, i1, true, false);
  }
  
  public void a(View paramView, x paramx)
  {
    if ((!this.o) || (paramView.getId() == 2131165291))
    {
      if (!this.o) {
        this.f = paramView;
      }
      a(paramView, paramx, false);
      return;
    }
    this.c.requestDisallowInterceptTouchEvent(true);
    this.c.setPagingEnabled(false);
    this.f = ((View)paramView.getParent());
    int i1 = ((Integer)paramView.getTag(2131165294)).intValue();
    d(i1);
    this.d.b(i1, paramView);
    e(i1);
    View localView1 = this.f.findViewById(2131165292);
    View localView2 = this.f.findViewById(2131165293);
    View localView3 = this.f.findViewById(2131166152);
    ViewHelper.setAlpha(localView1, 0.0F);
    ViewHelper.setAlpha(localView2, 0.0F);
    ViewHelper.setAlpha(localView3, 0.0F);
    localView1.setVisibility(0);
    localView2.setVisibility(0);
    localView3.setVisibility(0);
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(localView1, "alpha", new float[] { 1.0F });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(localView2, "alpha", new float[] { 1.0F });
    ObjectAnimator localObjectAnimator3 = ObjectAnimator.ofFloat(localView3, "alpha", new float[] { 1.0F });
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.setStartDelay(150L);
    localAnimatorSet.playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator2, localObjectAnimator3 });
    localAnimatorSet.setDuration(250L);
    localAnimatorSet.addListener(new g(this, localView1, localView2, localView3, paramView, paramx));
    localAnimatorSet.start();
  }
  
  public void a(View paramView, boolean paramBoolean, x paramx)
  {
    int i1 = ((Integer)paramView.getTag(2131165294)).intValue();
    this.d.a(paramView, i1, false, paramBoolean);
    if (paramBoolean) {
      a(paramView, paramx);
    }
  }
  
  public void a(a parama)
  {
    this.i = parama;
  }
  
  public void a(b paramb)
  {
    this.j = paramb;
  }
  
  public void a(boolean paramBoolean)
  {
    this.o = paramBoolean;
  }
  
  public void b(View paramView)
  {
    c();
  }
  
  public void c(View paramView) {}
  
  public void d(View paramView)
  {
    View localView1 = (View)paramView.getParent();
    localView1.setOnTouchListener(null);
    int i1 = ((Integer)paramView.getTag(2131165294)).intValue();
    this.d.a(i1, paramView);
    b(i1);
    View localView2 = localView1.findViewById(2131165292);
    View localView3 = localView1.findViewById(2131165293);
    View localView4 = localView1.findViewById(2131166152);
    localView2.setOnClickListener(null);
    localView2.setVisibility(8);
    localView3.setVisibility(8);
    localView4.setVisibility(8);
    if (!gl.b())
    {
      localView2.clearAnimation();
      localView3.clearAnimation();
      localView4.clearAnimation();
    }
    paramView.setOnTouchListener(this.h);
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    View localView = (View)paramObject;
    c localc;
    if (!f(paramInt))
    {
      localView.setOnTouchListener(null);
      localc = this.d;
      if (!this.o) {
        break label61;
      }
    }
    label61:
    for (ViewGroup localViewGroup = (ViewGroup)localView;; localViewGroup = paramViewGroup)
    {
      localc.destroyItem(localViewGroup, paramInt, e(localView));
      paramViewGroup.removeView(localView);
      return;
    }
  }
  
  public void finishUpdate(ViewGroup paramViewGroup)
  {
    this.d.finishUpdate(paramViewGroup);
  }
  
  public int getCount()
  {
    int i1 = b();
    if ((this.b > 0) && (i1 < this.b)) {
      i1++;
    }
    return i1;
  }
  
  public int getItemPosition(Object paramObject)
  {
    return -2;
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if (f(paramInt))
    {
      this.g.setTag(2131165294, Integer.valueOf(paramInt));
      paramViewGroup.addView(this.g);
      return this.g;
    }
    View localView1 = (View)this.d.instantiateItem(paramViewGroup, paramInt);
    if (localView1.getVisibility() == 0) {
      localView1.setOnTouchListener(this.h);
    }
    if (this.o)
    {
      localView1.setTag(2131165294, Integer.valueOf(paramInt));
      if (localView1.getParent() == null)
      {
        boolean bool;
        View localView3;
        if (this.f != null) {
          if (paramInt == ((Integer)this.f.getTag(2131165294)).intValue())
          {
            bool = true;
            localView3 = a(localView1, paramInt, bool);
            if (bool) {
              this.f = localView3;
            }
          }
        }
        for (;;)
        {
          paramViewGroup.addView(localView3);
          return localView3;
          bool = false;
          break;
          localView3 = a(localView1, paramInt, false);
        }
      }
      View localView2 = (View)localView1.getParent();
      paramViewGroup.addView(localView2);
      localView2.setTag(2131165294, Integer.valueOf(paramInt));
      return localView2;
    }
    localView1.setTag(2131165294, Integer.valueOf(paramInt));
    paramViewGroup.addView(localView1);
    return localView1;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return this.d.isViewFromObject(paramView, paramObject);
  }
  
  public void onPageScrollStateChanged(int paramInt)
  {
    if (paramInt == 0) {
      a();
    }
    if (this.k != null) {
      this.k.onPageScrollStateChanged(paramInt);
    }
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    c();
    if (this.k != null) {
      this.k.onPageScrolled(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public void onPageSelected(int paramInt)
  {
    a("onPageSelected page=" + paramInt);
    if (this.f != null) {
      c(((Integer)this.f.getTag(2131165294)).intValue());
    }
    if (this.k != null) {
      this.k.onPageSelected(paramInt);
    }
  }
  
  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
    this.d.restoreState(paramParcelable, paramClassLoader);
  }
  
  public Parcelable saveState()
  {
    return this.d.saveState();
  }
  
  public void startUpdate(ViewGroup paramViewGroup)
  {
    this.d.startUpdate(paramViewGroup);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.animation.d
 * JD-Core Version:    0.7.0.1
 */