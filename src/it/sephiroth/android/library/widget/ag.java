package it.sephiroth.android.library.widget;

import android.widget.ExpandableListView;
import java.util.ArrayList;

class ag
{
  private static ArrayList<ag> e = new ArrayList(5);
  public int a;
  public int b;
  int c;
  public int d;
  
  static ag a(int paramInt)
  {
    return a(2, paramInt, 0, 0);
  }
  
  static ag a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ag localag = d();
    localag.d = paramInt1;
    localag.a = paramInt2;
    localag.b = paramInt3;
    localag.c = paramInt4;
    return localag;
  }
  
  private void c()
  {
    this.a = 0;
    this.b = 0;
    this.c = 0;
    this.d = 0;
  }
  
  private static ag d()
  {
    synchronized (e)
    {
      if (e.size() > 0)
      {
        ag localag2 = (ag)e.remove(0);
        localag2.c();
        return localag2;
      }
      ag localag1 = new ag();
      return localag1;
    }
  }
  
  long a()
  {
    if (this.d == 1) {
      return ExpandableListView.getPackedPositionForChild(this.a, this.b);
    }
    return ExpandableListView.getPackedPositionForGroup(this.a);
  }
  
  public void b()
  {
    synchronized (e)
    {
      if (e.size() < 5) {
        e.add(this);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.ag
 * JD-Core Version:    0.7.0.1
 */