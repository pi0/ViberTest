package com.actionbarsherlock.internal.widget;

import android.database.DataSetObserver;

class IcsListPopupWindow$PopupDataSetObserver
  extends DataSetObserver
{
  private IcsListPopupWindow$PopupDataSetObserver(IcsListPopupWindow paramIcsListPopupWindow) {}
  
  public void onChanged()
  {
    if (this.this$0.isShowing()) {
      this.this$0.show();
    }
  }
  
  public void onInvalidated()
  {
    this.this$0.dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.PopupDataSetObserver
 * JD-Core Version:    0.7.0.1
 */