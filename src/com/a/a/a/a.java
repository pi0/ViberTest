package com.a.a.a;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.SectionIndexer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class a
  extends BaseAdapter
  implements SectionIndexer
{
  protected e a = new e(null);
  
  public ListAdapter a(int paramInt)
  {
    Iterator localIterator = a().iterator();
    for (;;)
    {
      ListAdapter localListAdapter;
      if (!localIterator.hasNext()) {
        localListAdapter = null;
      }
      int i;
      do
      {
        return localListAdapter;
        localListAdapter = (ListAdapter)localIterator.next();
        i = localListAdapter.getCount();
      } while (paramInt < i);
      paramInt -= i;
    }
  }
  
  protected List<ListAdapter> a()
  {
    return this.a.b();
  }
  
  public void a(View paramView)
  {
    a(paramView, false);
  }
  
  public void a(View paramView, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramView);
    a(localArrayList, paramBoolean);
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    this.a.a(paramListAdapter);
    paramListAdapter.registerDataSetObserver(new b(this, null));
  }
  
  public void a(ListAdapter paramListAdapter, boolean paramBoolean)
  {
    this.a.a(paramListAdapter, paramBoolean);
    notifyDataSetChanged();
  }
  
  public void a(List<View> paramList, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a(new c(paramList));
      return;
    }
    a(new com.a.a.b.a(paramList));
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public void b(View paramView, boolean paramBoolean)
  {
    this.a.a(paramView, paramBoolean);
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    Iterator localIterator = a().iterator();
    int i = 0;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return i;
      }
      i += ((ListAdapter)localIterator.next()).getCount();
    }
  }
  
  public Object getItem(int paramInt)
  {
    Iterator localIterator = a().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return null;
      }
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      int i = localListAdapter.getCount();
      if (paramInt < i) {
        return localListAdapter.getItem(paramInt);
      }
      paramInt -= i;
    }
  }
  
  public long getItemId(int paramInt)
  {
    Iterator localIterator = a().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return -1L;
      }
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      int i = localListAdapter.getCount();
      if (paramInt < i) {
        return localListAdapter.getItemId(paramInt);
      }
      paramInt -= i;
    }
  }
  
  public int getItemViewType(int paramInt)
  {
    Iterator localIterator = this.a.a().iterator();
    int i = 0;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return -1;
      }
      d locald = (d)localIterator.next();
      if (locald.b)
      {
        int j = locald.a.getCount();
        if (paramInt < j) {
          return i + locald.a.getItemViewType(paramInt);
        }
        paramInt -= j;
      }
      i += locald.a.getViewTypeCount();
    }
  }
  
  public int getPositionForSection(int paramInt)
  {
    Iterator localIterator = a().iterator();
    int i = 0;
    if (!localIterator.hasNext()) {
      return 0;
    }
    ListAdapter localListAdapter = (ListAdapter)localIterator.next();
    Object[] arrayOfObject;
    if ((localListAdapter instanceof SectionIndexer))
    {
      arrayOfObject = ((SectionIndexer)localListAdapter).getSections();
      if (arrayOfObject == null) {
        break label107;
      }
    }
    label107:
    for (int j = arrayOfObject.length;; j = 0)
    {
      if (paramInt < j) {
        return i + ((SectionIndexer)localListAdapter).getPositionForSection(paramInt);
      }
      if (arrayOfObject != null) {
        paramInt -= j;
      }
      i += localListAdapter.getCount();
      break;
    }
  }
  
  public int getSectionForPosition(int paramInt)
  {
    Iterator localIterator = a().iterator();
    int i = 0;
    if (!localIterator.hasNext()) {}
    ListAdapter localListAdapter;
    int j;
    do
    {
      return 0;
      localListAdapter = (ListAdapter)localIterator.next();
      j = localListAdapter.getCount();
      if (paramInt >= j) {
        break;
      }
    } while (!(localListAdapter instanceof SectionIndexer));
    return i + ((SectionIndexer)localListAdapter).getSectionForPosition(paramInt);
    Object[] arrayOfObject;
    if ((localListAdapter instanceof SectionIndexer))
    {
      arrayOfObject = ((SectionIndexer)localListAdapter).getSections();
      if (arrayOfObject == null) {}
    }
    for (int k = i + arrayOfObject.length;; k = i)
    {
      paramInt -= j;
      i = k;
      break;
    }
  }
  
  public Object[] getSections()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a().iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        if (localArrayList.size() != 0) {
          break;
        }
        return new String[0];
      }
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      if ((localListAdapter instanceof SectionIndexer))
      {
        Object[] arrayOfObject = ((SectionIndexer)localListAdapter).getSections();
        if (arrayOfObject != null) {
          Collections.addAll(localArrayList, arrayOfObject);
        }
      }
    }
    return localArrayList.toArray(new Object[0]);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Iterator localIterator = a().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return null;
      }
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      int i = localListAdapter.getCount();
      if (paramInt < i) {
        return localListAdapter.getView(paramInt, paramView, paramViewGroup);
      }
      paramInt -= i;
    }
  }
  
  public int getViewTypeCount()
  {
    Iterator localIterator = this.a.a().iterator();
    int i = 0;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return Math.max(i, 1);
      }
      i += ((d)localIterator.next()).a.getViewTypeCount();
    }
  }
  
  public boolean isEnabled(int paramInt)
  {
    Iterator localIterator = a().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return false;
      }
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      int i = localListAdapter.getCount();
      if (paramInt < i) {
        return localListAdapter.isEnabled(paramInt);
      }
      paramInt -= i;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.a.a.a.a
 * JD-Core Version:    0.7.0.1
 */