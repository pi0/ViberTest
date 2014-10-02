package it.sephiroth.android.library.widget;

import android.database.DataSetObserver;

public class ae
  extends DataSetObserver
{
  protected ae(ExpandableHListConnector paramExpandableHListConnector) {}
  
  public void onChanged()
  {
    ExpandableHListConnector.a(this.a, true, true);
    this.a.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    ExpandableHListConnector.a(this.a, true, true);
    this.a.notifyDataSetInvalidated();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.ae
 * JD-Core Version:    0.7.0.1
 */