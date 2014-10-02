package com.viber.voip.messages.ui.view;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.viber.voip.messages.conversation.h;

class f
  extends BaseAdapter
{
  private f(c paramc) {}
  
  private int b(int paramInt)
  {
    if ((c.a(this.a) == null) || (c.a(this.a).l())) {
      return paramInt;
    }
    return paramInt + 1;
  }
  
  public View a(int paramInt)
  {
    return null;
  }
  
  public int getCount()
  {
    if (c.a(this.a) == null) {
      return 0;
    }
    if (c.a(this.a).l()) {
      return 5;
    }
    return 3;
  }
  
  public long getItemId(int paramInt)
  {
    View localView = a(b(paramInt));
    if (localView != null) {
      return localView.hashCode();
    }
    return -1L;
  }
  
  public int getItemViewType(int paramInt)
  {
    switch (b(paramInt))
    {
    }
    do
    {
      return -1;
      return 0;
      return 1;
      return 4;
      return 2;
    } while ((c.a(this.a) == null) || (!c.a(this.a).l()));
    return 3;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return c.a(this.a, c.b(this.a), paramView, getItemViewType(paramInt), c.a(this.a));
  }
  
  public int getViewTypeCount()
  {
    return 5;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.view.f
 * JD-Core Version:    0.7.0.1
 */