package com.viber.voip.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;

class af
  implements AdapterView.OnItemLongClickListener
{
  af(ac paramac) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.a.v == null) {
      return false;
    }
    if (this.a.i()) {
      return this.a.v.onItemLongClick(paramAdapterView, paramView, paramInt, paramLong);
    }
    paramView.setPressed(false);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.af
 * JD-Core Version:    0.7.0.1
 */