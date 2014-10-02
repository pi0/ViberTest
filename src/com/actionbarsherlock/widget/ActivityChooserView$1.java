package com.actionbarsherlock.widget;

import android.database.DataSetObserver;

class ActivityChooserView$1
  extends DataSetObserver
{
  ActivityChooserView$1(ActivityChooserView paramActivityChooserView) {}
  
  public void onChanged()
  {
    super.onChanged();
    ActivityChooserView.access$000(this.this$0).notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    super.onInvalidated();
    ActivityChooserView.access$000(this.this$0).notifyDataSetInvalidated();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserView.1
 * JD-Core Version:    0.7.0.1
 */