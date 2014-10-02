package it.sephiroth.android.library.widget;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.support.v4.util.SparseArrayCompat;
import android.view.View;
import android.widget.ListAdapter;
import java.util.ArrayList;

public class p
{
  private q b;
  private int c;
  private View[] d = new View[0];
  private ArrayList<View>[] e;
  private int f;
  private ArrayList<View> g;
  private ArrayList<View> h;
  private SparseArrayCompat<View> i;
  
  public p(AbsHListView paramAbsHListView) {}
  
  @SuppressLint({"NewApi"})
  private void f()
  {
    int j = this.d.length;
    int k = this.f;
    ArrayList[] arrayOfArrayList = this.e;
    for (int m = 0; m < k; m++)
    {
      ArrayList localArrayList = arrayOfArrayList[m];
      int i1 = localArrayList.size();
      int i2 = i1 - j;
      int i3 = i1 - 1;
      int i4 = 0;
      while (i4 < i2)
      {
        AbsHListView localAbsHListView = this.a;
        int i5 = i3 - 1;
        AbsHListView.e(localAbsHListView, (View)localArrayList.remove(i3), false);
        i4++;
        i3 = i5;
      }
    }
    SparseArrayCompat localSparseArrayCompat = this.i;
    int n = 0;
    if (localSparseArrayCompat != null) {
      while (n < this.i.size())
      {
        if (!((View)this.i.valueAt(n)).hasTransientState())
        {
          this.i.removeAt(n);
          n--;
        }
        n++;
      }
    }
  }
  
  public void a()
  {
    int j = 0;
    if (this.f == 1)
    {
      ArrayList localArrayList2 = this.g;
      int i3 = localArrayList2.size();
      for (int i4 = 0; i4 < i3; i4++) {
        ((View)localArrayList2.get(i4)).forceLayout();
      }
    }
    int k = this.f;
    for (int m = 0; m < k; m++)
    {
      ArrayList localArrayList1 = this.e[m];
      int i1 = localArrayList1.size();
      for (int i2 = 0; i2 < i1; i2++) {
        ((View)localArrayList1.get(i2)).forceLayout();
      }
    }
    if (this.i != null)
    {
      int n = this.i.size();
      while (j < n)
      {
        ((View)this.i.valueAt(j)).forceLayout();
        j++;
      }
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt < 1) {
      throw new IllegalArgumentException("Can't have a viewTypeCount < 1");
    }
    ArrayList[] arrayOfArrayList = new ArrayList[paramInt];
    for (int j = 0; j < paramInt; j++) {
      arrayOfArrayList[j] = new ArrayList();
    }
    this.f = paramInt;
    this.g = arrayOfArrayList[0];
    this.e = arrayOfArrayList;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (this.d.length < paramInt1) {
      this.d = new View[paramInt1];
    }
    this.c = paramInt2;
    View[] arrayOfView = this.d;
    for (int j = 0; j < paramInt1; j++)
    {
      View localView = this.a.getChildAt(j);
      i locali = (i)localView.getLayoutParams();
      if ((locali != null) && (locali.a != -2)) {
        arrayOfView[j] = localView;
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  public void a(View paramView, int paramInt)
  {
    i locali = (i)paramView.getLayoutParams();
    if (locali == null) {
      return;
    }
    locali.d = paramInt;
    int j = locali.a;
    if (Build.VERSION.SDK_INT >= 16) {}
    for (boolean bool = paramView.hasTransientState();; bool = false)
    {
      if ((b(j)) && (!bool)) {
        break label134;
      }
      if ((j != -2) || (bool))
      {
        if (this.h == null) {
          this.h = new ArrayList();
        }
        this.h.add(paramView);
      }
      if (!bool) {
        break;
      }
      if (this.i == null) {
        this.i = new SparseArrayCompat();
      }
      paramView.onStartTemporaryDetach();
      this.i.put(paramInt, paramView);
      return;
    }
    label134:
    paramView.onStartTemporaryDetach();
    if (this.f == 1) {
      this.g.add(paramView);
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT >= 14) {
        paramView.setAccessibilityDelegate(null);
      }
      if (this.b == null) {
        break;
      }
      this.b.a(paramView);
      return;
      this.e[j].add(paramView);
    }
  }
  
  public void b()
  {
    if (this.f == 1)
    {
      ArrayList localArrayList2 = this.g;
      int i1 = localArrayList2.size();
      for (int i2 = 0; i2 < i1; i2++) {
        AbsHListView.a(this.a, (View)localArrayList2.remove(i1 - 1 - i2), false);
      }
    }
    int j = this.f;
    for (int k = 0; k < j; k++)
    {
      ArrayList localArrayList1 = this.e[k];
      int m = localArrayList1.size();
      for (int n = 0; n < m; n++) {
        AbsHListView.b(this.a, (View)localArrayList1.remove(m - 1 - n), false);
      }
    }
    if (this.i != null) {
      this.i.clear();
    }
  }
  
  public boolean b(int paramInt)
  {
    return paramInt >= 0;
  }
  
  public View c(int paramInt)
  {
    int j = paramInt - this.c;
    View[] arrayOfView = this.d;
    if ((j >= 0) && (j < arrayOfView.length))
    {
      View localView = arrayOfView[j];
      arrayOfView[j] = null;
      return localView;
    }
    return null;
  }
  
  void c()
  {
    if (this.i != null) {
      this.i.clear();
    }
  }
  
  View d(int paramInt)
  {
    if (this.i == null) {}
    int j;
    do
    {
      return null;
      j = this.i.indexOfKey(paramInt);
    } while (j < 0);
    View localView = (View)this.i.valueAt(j);
    this.i.removeAt(j);
    return localView;
  }
  
  public void d()
  {
    if (this.h == null) {
      return;
    }
    int j = this.h.size();
    for (int k = 0; k < j; k++) {
      AbsHListView.c(this.a, (View)this.h.get(k), false);
    }
    this.h.clear();
  }
  
  View e(int paramInt)
  {
    if (this.f == 1) {
      return AbsHListView.a(this.g, paramInt);
    }
    int j = this.a.k.getItemViewType(paramInt);
    if ((j >= 0) && (j < this.e.length)) {
      return AbsHListView.a(this.e[j], paramInt);
    }
    return null;
  }
  
  @SuppressLint({"NewApi"})
  public void e()
  {
    View[] arrayOfView = this.d;
    int j;
    int k;
    label24:
    Object localObject1;
    int m;
    label36:
    View localView;
    i locali;
    int n;
    if (this.b != null)
    {
      j = 1;
      if (this.f <= 1) {
        break label175;
      }
      k = 1;
      localObject1 = this.g;
      m = -1 + arrayOfView.length;
      if (m < 0) {
        break label260;
      }
      localView = arrayOfView[m];
      if (localView != null)
      {
        locali = (i)localView.getLayoutParams();
        n = locali.a;
        arrayOfView[m] = null;
        if (Build.VERSION.SDK_INT < 16) {
          break label180;
        }
      }
    }
    label175:
    label180:
    for (boolean bool = localView.hasTransientState();; bool = false)
    {
      if ((b(n)) && (!bool)) {
        break label186;
      }
      if ((n != -2) || (bool)) {
        AbsHListView.d(this.a, localView, false);
      }
      if (bool)
      {
        if (this.i == null) {
          this.i = new SparseArrayCompat();
        }
        this.i.put(m + this.c, localView);
      }
      m--;
      break label36;
      j = 0;
      break;
      k = 0;
      break label24;
    }
    label186:
    if (k != 0) {}
    for (Object localObject2 = this.e[n];; localObject2 = localObject1)
    {
      localView.onStartTemporaryDetach();
      locali.d = (m + this.c);
      ((ArrayList)localObject2).add(localView);
      if (Build.VERSION.SDK_INT >= 14) {
        localView.setAccessibilityDelegate(null);
      }
      if (j != 0) {
        this.b.a(localView);
      }
      localObject1 = localObject2;
      break;
      label260:
      f();
      return;
    }
  }
  
  void f(int paramInt)
  {
    if (this.f == 1)
    {
      ArrayList localArrayList2 = this.g;
      int i3 = localArrayList2.size();
      for (int i4 = 0; i4 < i3; i4++) {
        ((View)localArrayList2.get(i4)).setDrawingCacheBackgroundColor(paramInt);
      }
    }
    int j = this.f;
    for (int k = 0; k < j; k++)
    {
      ArrayList localArrayList1 = this.e[k];
      int i1 = localArrayList1.size();
      for (int i2 = 0; i2 < i1; i2++) {
        ((View)localArrayList1.get(i2)).setDrawingCacheBackgroundColor(paramInt);
      }
    }
    for (View localView : this.d) {
      if (localView != null) {
        localView.setDrawingCacheBackgroundColor(paramInt);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.p
 * JD-Core Version:    0.7.0.1
 */