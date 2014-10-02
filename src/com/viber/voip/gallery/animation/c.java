package com.viber.voip.gallery.animation;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.View;

public abstract class c
  extends PagerAdapter
{
  protected Context a;
  
  public c(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }
  
  public void a(int paramInt, View paramView) {}
  
  public abstract void a(View paramView, int paramInt, boolean paramBoolean1, boolean paramBoolean2);
  
  public void b(int paramInt, View paramView) {}
  
  public void c(int paramInt, View paramView) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.animation.c
 * JD-Core Version:    0.7.0.1
 */