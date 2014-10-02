package com.viber.voip.messages.ui.popup.view;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.Log;
import java.util.List;

class d
  implements ViewPager.OnPageChangeListener
{
  d(PopupViewPagerRoot paramPopupViewPagerRoot) {}
  
  public void onPageScrollStateChanged(int paramInt)
  {
    int i = (int)(this.a.getScrollX() % PopupViewPagerRoot.b(this.a));
    PopupViewPagerRoot.b(this.a, this.a.getCurrentItem());
    if ((PopupViewPagerRoot.d(this.a) == -1 + this.a.getAdapter().getCount()) || (PopupViewPagerRoot.d(this.a) == 0)) {}
    for (int j = 1;; j = 0)
    {
      if ((j != 0) && (!PopupViewPagerRoot.c(this.a))) {
        this.a.postDelayed(new e(this, paramInt), 500L);
      }
      if ((i == 0) && ((PopupViewPagerRoot.c(this.a)) || (j != 0))) {
        PopupViewPagerRoot.c(this.a, PopupViewPagerRoot.d(this.a));
      }
      Log.d(PopupViewPagerRoot.class.getSimpleName(), PopupViewPagerRoot.d(this.a) + " " + i + " " + (-1 + this.a.getAdapter().getCount()));
      this.a.a(true);
      return;
    }
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    if (PopupViewPagerRoot.a(this.a).size() > 0)
    {
      if ((PopupViewPagerRoot.b(this.a) == -1.0F) && (paramFloat != 0.0F))
      {
        ViewPager localViewPager = (ViewPager)PopupViewPagerRoot.a(this.a).get(0);
        PopupViewPagerRoot.a(this.a, paramInt2 / paramFloat);
        PopupViewPagerRoot.a(this.a, this.a.getWidth() - localViewPager.getWidth() + this.a.getPageMargin() - localViewPager.getPageMargin());
      }
      if (PopupViewPagerRoot.c(this.a))
      {
        PopupViewPagerRoot.a(this.a, paramInt1, paramFloat);
        PopupViewPagerRoot.a(this.a, paramInt1, paramFloat, paramInt2);
      }
    }
  }
  
  public void onPageSelected(int paramInt) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.view.d
 * JD-Core Version:    0.7.0.1
 */