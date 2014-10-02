package it.sephiroth.android.library.widget;

import java.util.ArrayList;

public class af
{
  private static ArrayList<af> d = new ArrayList(5);
  public ag a;
  public ExpandableHListConnector.GroupMetadata b;
  public int c;
  
  static af a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, ExpandableHListConnector.GroupMetadata paramGroupMetadata, int paramInt5)
  {
    af localaf = d();
    localaf.a = ag.a(paramInt2, paramInt3, paramInt4, paramInt1);
    localaf.b = paramGroupMetadata;
    localaf.c = paramInt5;
    return localaf;
  }
  
  private void c()
  {
    if (this.a != null)
    {
      this.a.b();
      this.a = null;
    }
    this.b = null;
    this.c = 0;
  }
  
  private static af d()
  {
    synchronized (d)
    {
      if (d.size() > 0)
      {
        af localaf2 = (af)d.remove(0);
        localaf2.c();
        return localaf2;
      }
      af localaf1 = new af();
      return localaf1;
    }
  }
  
  public void a()
  {
    c();
    synchronized (d)
    {
      if (d.size() < 5) {
        d.add(this);
      }
      return;
    }
  }
  
  public boolean b()
  {
    return this.b != null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.af
 * JD-Core Version:    0.7.0.1
 */