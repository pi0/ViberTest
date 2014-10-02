package pager;

import android.database.DataSetObserver;

class i
  extends DataSetObserver
{
  private i(ViewPager paramViewPager) {}
  
  public void onChanged()
  {
    this.a.a();
  }
  
  public void onInvalidated()
  {
    this.a.a();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     pager.i
 * JD-Core Version:    0.7.0.1
 */