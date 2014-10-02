package com.viber.voip.messages.ui;

import android.support.v4.util.SparseArrayCompat;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class bh
  implements bi
{
  private ViewGroup a;
  private SparseArrayCompat<View> b = new SparseArrayCompat();
  private List<View> c;
  
  public bh(ViewGroup paramViewGroup)
  {
    this.a = paramViewGroup;
    int i = this.a.getChildCount();
    this.c = new ArrayList(i);
    for (int j = 0; j < i; j++)
    {
      View localView = this.a.getChildAt(j);
      if (-1 != localView.getId()) {
        this.b.put(localView.getId(), localView);
      }
      this.c.add(localView);
    }
  }
  
  public int a()
  {
    return this.c.size();
  }
  
  public int a(int paramInt)
  {
    return ((View)this.c.get(paramInt)).getId();
  }
  
  public View a(int paramInt, View paramView)
  {
    return (View)this.c.get(paramInt);
  }
  
  public int b(int paramInt)
  {
    View localView = (View)this.b.get(paramInt);
    if (localView != null) {
      return this.c.indexOf(localView);
    }
    return -1;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.bh
 * JD-Core Version:    0.7.0.1
 */