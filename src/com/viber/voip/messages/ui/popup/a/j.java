package com.viber.voip.messages.ui.popup.a;

import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;

public class j
  extends PagerAdapter
{
  private l a;
  
  public j(l paraml)
  {
    this.a = paraml;
  }
  
  public l a()
  {
    return this.a;
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    ((ViewPager)paramView).removeView((View)paramObject);
  }
  
  public void finishUpdate(View paramView) {}
  
  public int getCount()
  {
    return this.a.c();
  }
  
  public int getItemPosition(Object paramObject)
  {
    return -2;
  }
  
  public Object instantiateItem(View paramView, int paramInt)
  {
    View localView = this.a.a(paramView, paramInt);
    ((ViewPager)paramView).addView(localView, 0);
    return localView;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == (View)paramObject;
  }
  
  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader) {}
  
  public Parcelable saveState()
  {
    return null;
  }
  
  public void startUpdate(View paramView) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.a.j
 * JD-Core Version:    0.7.0.1
 */