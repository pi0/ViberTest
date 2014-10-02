package it.sephiroth.android.library.widget;

import android.database.DataSetObserver;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ExpandableListAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.HeterogeneousExpandableList;
import java.util.ArrayList;
import java.util.Collections;

class ExpandableHListConnector
  extends BaseAdapter
  implements Filterable
{
  private ExpandableListAdapter a;
  private ArrayList<ExpandableHListConnector.GroupMetadata> b = new ArrayList();
  private int c;
  private int d = 2147483647;
  private final DataSetObserver e = new ae(this);
  
  public ExpandableHListConnector(ExpandableListAdapter paramExpandableListAdapter)
  {
    a(paramExpandableListAdapter);
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 0;
    ArrayList localArrayList = this.b;
    int j = localArrayList.size();
    this.c = 0;
    int i3;
    int i4;
    if (paramBoolean2)
    {
      i3 = j - 1;
      i4 = 0;
      if (i3 >= 0)
      {
        ExpandableHListConnector.GroupMetadata localGroupMetadata2 = (ExpandableHListConnector.GroupMetadata)localArrayList.get(i3);
        int i5 = a(localGroupMetadata2.d, localGroupMetadata2.c);
        if (i5 == localGroupMetadata2.c) {
          break label259;
        }
        if (i5 == -1)
        {
          localArrayList.remove(i3);
          j--;
        }
        localGroupMetadata2.c = i5;
        if (i4 != 0) {
          break label259;
        }
      }
    }
    label259:
    for (int i6 = 1;; i6 = i4)
    {
      i3--;
      i4 = i6;
      break;
      if (i4 != 0) {
        Collections.sort(localArrayList);
      }
      int k = 0;
      int m = 0;
      if (i < j)
      {
        ExpandableHListConnector.GroupMetadata localGroupMetadata1 = (ExpandableHListConnector.GroupMetadata)localArrayList.get(i);
        if ((localGroupMetadata1.b == -1) || (paramBoolean1)) {}
        for (int n = this.a.getChildrenCount(localGroupMetadata1.c);; n = localGroupMetadata1.b - localGroupMetadata1.a)
        {
          this.c = (n + this.c);
          int i1 = m + (localGroupMetadata1.c - k);
          k = localGroupMetadata1.c;
          localGroupMetadata1.a = i1;
          int i2 = n + i1;
          localGroupMetadata1.b = i2;
          i++;
          m = i2;
          break;
        }
      }
      return;
    }
  }
  
  int a(long paramLong, int paramInt)
  {
    int i = this.a.getGroupCount();
    int n;
    if (i == 0)
    {
      n = -1;
      return n;
    }
    if (paramLong == -9223372036854775808L) {
      return -1;
    }
    int j = Math.max(0, paramInt);
    int k = Math.min(i - 1, j);
    long l = 100L + SystemClock.uptimeMillis();
    ExpandableListAdapter localExpandableListAdapter = a();
    label72:
    int i3;
    int i1;
    int i2;
    if (localExpandableListAdapter == null)
    {
      return -1;
      if ((i3 != 0) || ((i1 != 0) && (i2 == 0)))
      {
        k++;
        i1 = 0;
        n = k;
      }
    }
    for (;;)
    {
      int m;
      if (SystemClock.uptimeMillis() <= l)
      {
        if (localExpandableListAdapter.getGroupId(n) == paramLong) {
          break;
        }
        if (k != i - 1) {
          break label152;
        }
        i2 = 1;
        if (m != 0) {
          break label158;
        }
      }
      label152:
      label158:
      for (i3 = 1;; i3 = 0)
      {
        if ((i2 == 0) || (i3 == 0)) {
          break label162;
        }
        return -1;
        i2 = 0;
        break;
      }
      label162:
      break label72;
      if ((i2 != 0) || ((i1 == 0) && (i3 == 0)))
      {
        m--;
        i1 = 1;
        n = m;
        continue;
        m = k;
        n = k;
        i1 = 0;
      }
    }
  }
  
  ExpandableListAdapter a()
  {
    return this.a;
  }
  
  af a(int paramInt)
  {
    ArrayList localArrayList = this.b;
    int i = localArrayList.size();
    int j = i - 1;
    if (i == 0) {
      return af.a(paramInt, 2, paramInt, -1, null, 0);
    }
    for (;;)
    {
      int n;
      int k;
      int m;
      if (n <= k)
      {
        m = n + (k - n) / 2;
        ExpandableHListConnector.GroupMetadata localGroupMetadata3 = (ExpandableHListConnector.GroupMetadata)localArrayList.get(m);
        if (paramInt > localGroupMetadata3.b)
        {
          n = m + 1;
        }
        else if (paramInt < localGroupMetadata3.a)
        {
          k = m - 1;
        }
        else
        {
          if (paramInt == localGroupMetadata3.a) {
            return af.a(paramInt, 2, localGroupMetadata3.c, -1, localGroupMetadata3, m);
          }
          if (paramInt <= localGroupMetadata3.b)
          {
            int i3 = paramInt - (1 + localGroupMetadata3.a);
            return af.a(paramInt, 1, localGroupMetadata3.c, i3, localGroupMetadata3, m);
          }
        }
      }
      else
      {
        int i2;
        int i1;
        if (n > m)
        {
          ExpandableHListConnector.GroupMetadata localGroupMetadata2 = (ExpandableHListConnector.GroupMetadata)localArrayList.get(n - 1);
          i2 = paramInt - localGroupMetadata2.b + localGroupMetadata2.c;
          i1 = n;
        }
        for (;;)
        {
          return af.a(paramInt, 2, i2, -1, null, i1);
          if (k >= m) {
            break;
          }
          i1 = k + 1;
          ExpandableHListConnector.GroupMetadata localGroupMetadata1 = (ExpandableHListConnector.GroupMetadata)localArrayList.get(i1);
          i2 = localGroupMetadata1.c - (localGroupMetadata1.a - paramInt);
        }
        throw new RuntimeException("Unknown state");
        k = j;
        m = 0;
        n = 0;
      }
    }
  }
  
  af a(ag paramag)
  {
    ArrayList localArrayList = this.b;
    int i = localArrayList.size();
    int j = i - 1;
    af localaf;
    if (i == 0)
    {
      localaf = af.a(paramag.a, paramag.d, paramag.a, paramag.b, null, 0);
      return localaf;
    }
    for (;;)
    {
      if (n <= k)
      {
        m = n + (k - n) / 2;
        ExpandableHListConnector.GroupMetadata localGroupMetadata3 = (ExpandableHListConnector.GroupMetadata)localArrayList.get(m);
        if (paramag.a > localGroupMetadata3.c)
        {
          n = m + 1;
          continue;
        }
        if (paramag.a < localGroupMetadata3.c)
        {
          k = m - 1;
          continue;
        }
        if (paramag.a != localGroupMetadata3.c) {
          continue;
        }
        if (paramag.d == 2) {
          return af.a(localGroupMetadata3.a, paramag.d, paramag.a, paramag.b, localGroupMetadata3, m);
        }
        int i3 = paramag.d;
        localaf = null;
        if (i3 != 1) {
          break;
        }
        return af.a(1 + (localGroupMetadata3.a + paramag.b), paramag.d, paramag.a, paramag.b, localGroupMetadata3, m);
      }
      int i1 = paramag.d;
      localaf = null;
      if (i1 != 2) {
        break;
      }
      if (n > m)
      {
        ExpandableHListConnector.GroupMetadata localGroupMetadata2 = (ExpandableHListConnector.GroupMetadata)localArrayList.get(n - 1);
        return af.a(localGroupMetadata2.b + (paramag.a - localGroupMetadata2.c), paramag.d, paramag.a, paramag.b, null, n);
      }
      localaf = null;
      if (k >= m) {
        break;
      }
      int i2 = k + 1;
      ExpandableHListConnector.GroupMetadata localGroupMetadata1 = (ExpandableHListConnector.GroupMetadata)localArrayList.get(i2);
      return af.a(localGroupMetadata1.a - (localGroupMetadata1.c - paramag.a), paramag.d, paramag.a, paramag.b, null, i2);
      int k = j;
      int m = 0;
      int n = 0;
    }
  }
  
  public void a(ExpandableListAdapter paramExpandableListAdapter)
  {
    if (this.a != null) {
      this.a.unregisterDataSetObserver(this.e);
    }
    this.a = paramExpandableListAdapter;
    paramExpandableListAdapter.registerDataSetObserver(this.e);
  }
  
  void a(ArrayList<ExpandableHListConnector.GroupMetadata> paramArrayList)
  {
    if ((paramArrayList == null) || (this.a == null)) {
      return;
    }
    int i = this.a.getGroupCount();
    for (int j = -1 + paramArrayList.size();; j--)
    {
      if (j < 0) {
        break label54;
      }
      if (((ExpandableHListConnector.GroupMetadata)paramArrayList.get(j)).c >= i) {
        break;
      }
    }
    label54:
    this.b = paramArrayList;
    a(true, false);
  }
  
  boolean a(af paramaf)
  {
    if (paramaf.b == null) {
      return false;
    }
    this.b.remove(paramaf.b);
    a(false, false);
    notifyDataSetChanged();
    this.a.onGroupCollapsed(paramaf.b.c);
    return true;
  }
  
  public boolean areAllItemsEnabled()
  {
    return this.a.areAllItemsEnabled();
  }
  
  ArrayList<ExpandableHListConnector.GroupMetadata> b()
  {
    return this.b;
  }
  
  boolean b(int paramInt)
  {
    ag localag = ag.a(2, paramInt, -1, -1);
    af localaf = a(localag);
    localag.b();
    if (localaf == null) {
      return false;
    }
    boolean bool = a(localaf);
    localaf.a();
    return bool;
  }
  
  boolean b(af paramaf)
  {
    if (paramaf.a.a < 0) {
      throw new RuntimeException("Need group");
    }
    if (this.d == 0) {
      return false;
    }
    if (paramaf.b != null) {
      return false;
    }
    if (this.b.size() >= this.d)
    {
      ExpandableHListConnector.GroupMetadata localGroupMetadata2 = (ExpandableHListConnector.GroupMetadata)this.b.get(0);
      int i = this.b.indexOf(localGroupMetadata2);
      b(localGroupMetadata2.c);
      if (paramaf.c > i) {
        paramaf.c = (-1 + paramaf.c);
      }
    }
    ExpandableHListConnector.GroupMetadata localGroupMetadata1 = ExpandableHListConnector.GroupMetadata.a(-1, -1, paramaf.a.a, this.a.getGroupId(paramaf.a.a));
    this.b.add(paramaf.c, localGroupMetadata1);
    a(false, false);
    notifyDataSetChanged();
    this.a.onGroupExpanded(localGroupMetadata1.c);
    return true;
  }
  
  public int getCount()
  {
    return this.a.getGroupCount() + this.c;
  }
  
  public Filter getFilter()
  {
    ExpandableListAdapter localExpandableListAdapter = a();
    if ((localExpandableListAdapter instanceof Filterable)) {
      return ((Filterable)localExpandableListAdapter).getFilter();
    }
    return null;
  }
  
  public Object getItem(int paramInt)
  {
    af localaf = a(paramInt);
    if (localaf.a.d == 2) {}
    for (Object localObject = this.a.getGroup(localaf.a.a);; localObject = this.a.getChild(localaf.a.a, localaf.a.b))
    {
      localaf.a();
      return localObject;
      if (localaf.a.d != 1) {
        break;
      }
    }
    throw new RuntimeException("Flat list position is of unknown type");
  }
  
  public long getItemId(int paramInt)
  {
    af localaf = a(paramInt);
    long l1 = this.a.getGroupId(localaf.a.a);
    if (localaf.a.d == 2) {}
    long l2;
    for (long l3 = this.a.getCombinedGroupId(l1);; l3 = this.a.getCombinedChildId(l1, l2))
    {
      localaf.a();
      return l3;
      if (localaf.a.d != 1) {
        break;
      }
      l2 = this.a.getChildId(localaf.a.a, localaf.a.b);
    }
    throw new RuntimeException("Flat list position is of unknown type");
  }
  
  public int getItemViewType(int paramInt)
  {
    af localaf = a(paramInt);
    ag localag = localaf.a;
    HeterogeneousExpandableList localHeterogeneousExpandableList;
    int i;
    if ((this.a instanceof HeterogeneousExpandableList))
    {
      localHeterogeneousExpandableList = (HeterogeneousExpandableList)this.a;
      if (localag.d == 2) {
        i = localHeterogeneousExpandableList.getGroupType(localag.a);
      }
    }
    for (;;)
    {
      localaf.a();
      return i;
      i = localHeterogeneousExpandableList.getChildType(localag.a, localag.b) + localHeterogeneousExpandableList.getGroupTypeCount();
      continue;
      if (localag.d == 2) {
        i = 0;
      } else {
        i = 1;
      }
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 1;
    af localaf = a(paramInt);
    View localView;
    if (localaf.a.d == 2)
    {
      localView = this.a.getGroupView(localaf.a.a, localaf.b(), paramView, paramViewGroup);
      localaf.a();
      return localView;
    }
    if (localaf.a.d == i)
    {
      if (localaf.b.b == paramInt) {}
      for (;;)
      {
        localView = this.a.getChildView(localaf.a.a, localaf.a.b, i, paramView, paramViewGroup);
        break;
        int j = 0;
      }
    }
    throw new RuntimeException("Flat list position is of unknown type");
  }
  
  public int getViewTypeCount()
  {
    if ((this.a instanceof HeterogeneousExpandableList))
    {
      HeterogeneousExpandableList localHeterogeneousExpandableList = (HeterogeneousExpandableList)this.a;
      return localHeterogeneousExpandableList.getGroupTypeCount() + localHeterogeneousExpandableList.getChildTypeCount();
    }
    return 2;
  }
  
  public boolean hasStableIds()
  {
    return this.a.hasStableIds();
  }
  
  public boolean isEmpty()
  {
    ExpandableListAdapter localExpandableListAdapter = a();
    if (localExpandableListAdapter != null) {
      return localExpandableListAdapter.isEmpty();
    }
    return true;
  }
  
  public boolean isEnabled(int paramInt)
  {
    int i = 1;
    af localaf = a(paramInt);
    ag localag = localaf.a;
    boolean bool;
    if (localag.d == i) {
      bool = this.a.isChildSelectable(localag.a, localag.b);
    }
    localaf.a();
    return bool;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.ExpandableHListConnector
 * JD-Core Version:    0.7.0.1
 */