package com.viber.voip.widget.dslv;

import android.util.SparseIntArray;
import java.util.ArrayList;

class q
{
  private SparseIntArray b;
  private ArrayList<Integer> c;
  private int d;
  
  public q(DragSortListView paramDragSortListView, int paramInt)
  {
    this.b = new SparseIntArray(paramInt);
    this.c = new ArrayList(paramInt);
    this.d = paramInt;
  }
  
  public int a(int paramInt)
  {
    return this.b.get(paramInt, -1);
  }
  
  public void a()
  {
    this.b.clear();
    this.c.clear();
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int i = this.b.get(paramInt1, -1);
    if (i != paramInt2)
    {
      if (i != -1) {
        break label77;
      }
      if (this.b.size() == this.d) {
        this.b.delete(((Integer)this.c.remove(0)).intValue());
      }
    }
    for (;;)
    {
      this.b.put(paramInt1, paramInt2);
      this.c.add(Integer.valueOf(paramInt1));
      return;
      label77:
      this.c.remove(Integer.valueOf(paramInt1));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.dslv.q
 * JD-Core Version:    0.7.0.1
 */