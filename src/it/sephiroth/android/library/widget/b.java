package it.sephiroth.android.library.widget;

class b
  implements Runnable
{
  b(AbsHListView paramAbsHListView) {}
  
  public void run()
  {
    if (this.a.z)
    {
      AbsHListView localAbsHListView = this.a;
      this.a.A = false;
      localAbsHListView.z = false;
      AbsHListView.a(this.a, false);
      if ((0x2 & this.a.getPersistentDrawingCache()) == 0) {
        AbsHListView.b(this.a, false);
      }
      if (!this.a.isAlwaysDrawnWithCacheEnabled()) {
        this.a.invalidate();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.b
 * JD-Core Version:    0.7.0.1
 */