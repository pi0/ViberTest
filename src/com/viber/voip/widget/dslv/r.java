package com.viber.voip.widget.dslv;

class r
  extends u
{
  private float d;
  private float e;
  
  public void a()
  {
    this.d = DragSortListView.c(this.a);
    this.e = DragSortListView.d(this.a);
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    if (DragSortListView.b(this.a) != 4)
    {
      d();
      return;
    }
    DragSortListView.a(this.a, (int)(paramFloat2 * this.e + (1.0F - paramFloat2) * this.d));
    DragSortListView.e(this.a).y = (DragSortListView.f(this.a) - DragSortListView.c(this.a));
    DragSortListView.a(this.a, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.dslv.r
 * JD-Core Version:    0.7.0.1
 */