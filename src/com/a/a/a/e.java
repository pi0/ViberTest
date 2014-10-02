package com.a.a.a;

import android.view.View;
import android.widget.ListAdapter;
import com.a.a.b.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class e
{
  protected ArrayList<d> a = new ArrayList();
  protected ArrayList<ListAdapter> b = null;
  
  List<d> a()
  {
    return this.a;
  }
  
  void a(View paramView, boolean paramBoolean)
  {
    Iterator localIterator = this.a.iterator();
    d locald;
    do
    {
      if (!localIterator.hasNext()) {
        return;
      }
      locald = (d)localIterator.next();
    } while ((!(locald.a instanceof a)) || (!((a)locald.a).a(paramView)));
    locald.b = paramBoolean;
    this.b = null;
  }
  
  void a(ListAdapter paramListAdapter)
  {
    this.a.add(new d(paramListAdapter, true));
  }
  
  void a(ListAdapter paramListAdapter, boolean paramBoolean)
  {
    Iterator localIterator = this.a.iterator();
    d locald;
    do
    {
      if (!localIterator.hasNext()) {
        return;
      }
      locald = (d)localIterator.next();
    } while (locald.a != paramListAdapter);
    locald.b = paramBoolean;
    this.b = null;
  }
  
  List<ListAdapter> b()
  {
    Iterator localIterator;
    if (this.b == null)
    {
      this.b = new ArrayList();
      localIterator = this.a.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return this.b;
      }
      d locald = (d)localIterator.next();
      if (locald.b) {
        this.b.add(locald.a);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.a.a.a.e
 * JD-Core Version:    0.7.0.1
 */