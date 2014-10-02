package com.viber.voip.widget.dslv;

import android.database.DataSetObserver;

class h
  extends DataSetObserver
{
  h(g paramg, DragSortListView paramDragSortListView) {}
  
  public void onChanged()
  {
    this.b.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    this.b.notifyDataSetInvalidated();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.dslv.h
 * JD-Core Version:    0.7.0.1
 */