package com.viber.voip.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class ah
  implements AdapterView.OnItemClickListener
{
  ah(ac paramac) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.a.x == null) {
      return;
    }
    if (this.a.i())
    {
      this.a.x.onItemClick(paramAdapterView, paramView, paramInt, paramLong);
      return;
    }
    paramView.setPressed(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.ah
 * JD-Core Version:    0.7.0.1
 */