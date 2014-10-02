package com.a.a.a;

import android.database.DataSetObserver;

class b
  extends DataSetObserver
{
  private b(a parama) {}
  
  public void onChanged()
  {
    this.a.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    this.a.notifyDataSetInvalidated();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.a.a.a.b
 * JD-Core Version:    0.7.0.1
 */