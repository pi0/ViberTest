package com.viber.voip.widget.dslv;

import android.database.DataSetObserver;

class f
  extends DataSetObserver
{
  f(DragSortListView paramDragSortListView) {}
  
  private void a()
  {
    if (DragSortListView.b(this.a) == 4) {
      this.a.a();
    }
  }
  
  public void onChanged()
  {
    a();
  }
  
  public void onInvalidated()
  {
    a();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.dslv.f
 * JD-Core Version:    0.7.0.1
 */