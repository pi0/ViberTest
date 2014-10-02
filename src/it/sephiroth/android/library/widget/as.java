package it.sephiroth.android.library.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.util.ArrayList;
import java.util.Iterator;

public class as
  implements Filterable, WrapperListAdapter
{
  static final ArrayList<aq> c = new ArrayList();
  ArrayList<aq> a;
  ArrayList<aq> b;
  boolean d;
  private final ListAdapter e;
  private final boolean f;
  
  public as(ArrayList<aq> paramArrayList1, ArrayList<aq> paramArrayList2, ListAdapter paramListAdapter)
  {
    this.e = paramListAdapter;
    this.f = (paramListAdapter instanceof Filterable);
    if (paramArrayList1 == null)
    {
      this.a = c;
      if (paramArrayList2 != null) {
        break label79;
      }
      this.b = c;
      label39:
      if ((!a(this.a)) || (!a(this.b))) {
        break label87;
      }
    }
    label79:
    label87:
    for (boolean bool = true;; bool = false)
    {
      this.d = bool;
      return;
      this.a = paramArrayList1;
      break;
      this.b = paramArrayList2;
      break label39;
    }
  }
  
  private boolean a(ArrayList<aq> paramArrayList)
  {
    if (paramArrayList != null)
    {
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext()) {
        if (!((aq)localIterator.next()).c) {
          return false;
        }
      }
    }
    return true;
  }
  
  public int a()
  {
    return this.a.size();
  }
  
  public boolean areAllItemsEnabled()
  {
    return (this.e == null) || ((this.d) && (this.e.areAllItemsEnabled()));
  }
  
  public int b()
  {
    return this.b.size();
  }
  
  public int getCount()
  {
    if (this.e != null) {
      return b() + a() + this.e.getCount();
    }
    return b() + a();
  }
  
  public Filter getFilter()
  {
    if (this.f) {
      return ((Filterable)this.e).getFilter();
    }
    return null;
  }
  
  public Object getItem(int paramInt)
  {
    int i = a();
    if (paramInt < i) {
      return ((aq)this.a.get(paramInt)).b;
    }
    int j = paramInt - i;
    ListAdapter localListAdapter = this.e;
    int k = 0;
    if (localListAdapter != null)
    {
      k = this.e.getCount();
      if (j < k) {
        return this.e.getItem(j);
      }
    }
    return ((aq)this.b.get(j - k)).b;
  }
  
  public long getItemId(int paramInt)
  {
    int i = a();
    if ((this.e != null) && (paramInt >= i))
    {
      int j = paramInt - i;
      if (j < this.e.getCount()) {
        return this.e.getItemId(j);
      }
    }
    return -1L;
  }
  
  public int getItemViewType(int paramInt)
  {
    int i = a();
    if ((this.e != null) && (paramInt >= i))
    {
      int j = paramInt - i;
      if (j < this.e.getCount()) {
        return this.e.getItemViewType(j);
      }
    }
    return -2;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = a();
    if (paramInt < i) {
      return ((aq)this.a.get(paramInt)).a;
    }
    int j = paramInt - i;
    ListAdapter localListAdapter = this.e;
    int k = 0;
    if (localListAdapter != null)
    {
      k = this.e.getCount();
      if (j < k) {
        return this.e.getView(j, paramView, paramViewGroup);
      }
    }
    return ((aq)this.b.get(j - k)).a;
  }
  
  public int getViewTypeCount()
  {
    if (this.e != null) {
      return this.e.getViewTypeCount();
    }
    return 1;
  }
  
  public ListAdapter getWrappedAdapter()
  {
    return this.e;
  }
  
  public boolean hasStableIds()
  {
    if (this.e != null) {
      return this.e.hasStableIds();
    }
    return false;
  }
  
  public boolean isEmpty()
  {
    return (this.e == null) || (this.e.isEmpty());
  }
  
  public boolean isEnabled(int paramInt)
  {
    int i = a();
    if (paramInt < i) {
      return ((aq)this.a.get(paramInt)).c;
    }
    int j = paramInt - i;
    ListAdapter localListAdapter = this.e;
    int k = 0;
    if (localListAdapter != null)
    {
      k = this.e.getCount();
      if (j < k) {
        return this.e.isEnabled(j);
      }
    }
    return ((aq)this.b.get(j - k)).c;
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    if (this.e != null) {
      this.e.registerDataSetObserver(paramDataSetObserver);
    }
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    if (this.e != null) {
      this.e.unregisterDataSetObserver(paramDataSetObserver);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.as
 * JD-Core Version:    0.7.0.1
 */