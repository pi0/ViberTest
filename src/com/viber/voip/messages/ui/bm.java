package com.viber.voip.messages.ui;

import android.support.v4.util.SparseArrayCompat;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class bm
  implements bi
{
  private bi a;
  private SparseArrayCompat<bn> b = new SparseArrayCompat();
  private List<bn> c = new ArrayList();
  
  public bm(bi parambi, SparseArrayCompat<bn> paramSparseArrayCompat)
  {
    this.a = parambi;
    for (int i = 0; i < paramSparseArrayCompat.size(); i++)
    {
      bn localbn = (bn)paramSparseArrayCompat.valueAt(i);
      this.c.add(localbn);
      this.b.put(paramSparseArrayCompat.keyAt(i), localbn);
    }
  }
  
  private int c(int paramInt)
  {
    if (this.a == null) {
      return paramInt;
    }
    return paramInt - this.a.a();
  }
  
  private int d(int paramInt)
  {
    if (this.a == null) {
      return paramInt;
    }
    return paramInt + this.a.a();
  }
  
  public int a()
  {
    if (this.a != null) {
      return this.a.a() + this.c.size();
    }
    return this.c.size();
  }
  
  public int a(int paramInt)
  {
    if ((this.a != null) && (this.a.a() > paramInt)) {
      return this.a.a(paramInt);
    }
    bn localbn = (bn)this.c.get(c(paramInt));
    if (localbn != null)
    {
      int i = this.b.indexOfValue(localbn);
      if (-1 != i) {
        return this.b.keyAt(i);
      }
    }
    return -1;
  }
  
  public View a(int paramInt, View paramView)
  {
    if (paramInt == -1) {
      return null;
    }
    if ((this.a != null) && (this.a.a() > paramInt)) {
      return this.a.a(paramInt, paramView);
    }
    bn localbn = (bn)this.c.get(c(paramInt));
    if (localbn != null) {}
    for (View localView = localbn.a(paramView);; localView = null) {
      return localView;
    }
  }
  
  public int b(int paramInt)
  {
    if (this.a != null)
    {
      int i = this.a.b(paramInt);
      if (-1 != i) {
        return i;
      }
    }
    bn localbn = (bn)this.b.get(paramInt);
    if (localbn != null) {
      return d(this.c.indexOf(localbn));
    }
    return -1;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.bm
 * JD-Core Version:    0.7.0.1
 */