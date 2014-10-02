package it.sephiroth.android.library.widget;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.widget.Adapter;

class x
  extends DataSetObserver
{
  private Parcelable a = null;
  
  x(u paramu) {}
  
  public void onChanged()
  {
    this.b.aj = true;
    this.b.ap = this.b.ao;
    this.b.ao = this.b.getAdapter().getCount();
    if ((this.b.getAdapter().hasStableIds()) && (this.a != null) && (this.b.ap == 0) && (this.b.ao > 0))
    {
      u.a(this.b, this.a);
      this.a = null;
    }
    for (;;)
    {
      this.b.t();
      this.b.requestLayout();
      return;
      this.b.x();
    }
  }
  
  public void onInvalidated()
  {
    this.b.aj = true;
    if (this.b.getAdapter().hasStableIds()) {
      this.a = u.a(this.b);
    }
    this.b.ap = this.b.ao;
    this.b.ao = 0;
    this.b.am = -1;
    this.b.an = -9223372036854775808L;
    this.b.ak = -1;
    this.b.al = -9223372036854775808L;
    this.b.ad = false;
    this.b.t();
    this.b.requestLayout();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.x
 * JD-Core Version:    0.7.0.1
 */