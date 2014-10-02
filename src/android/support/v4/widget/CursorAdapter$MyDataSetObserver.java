package android.support.v4.widget;

import android.database.DataSetObserver;

class CursorAdapter$MyDataSetObserver
  extends DataSetObserver
{
  private CursorAdapter$MyDataSetObserver(CursorAdapter paramCursorAdapter) {}
  
  public void onChanged()
  {
    this.this$0.mDataValid = true;
    this.this$0.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    this.this$0.mDataValid = false;
    this.this$0.notifyDataSetInvalidated();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.widget.CursorAdapter.MyDataSetObserver
 * JD-Core Version:    0.7.0.1
 */