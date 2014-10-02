package com.viber.voip.ui;

import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.widget.AdapterView.AdapterContextMenuInfo;

class ag
  implements View.OnCreateContextMenuListener
{
  ag(ac paramac) {}
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if (this.a.w == null) {
      return;
    }
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    if (this.a.i())
    {
      this.a.w.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
      return;
    }
    localAdapterContextMenuInfo.targetView.setPressed(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.ag
 * JD-Core Version:    0.7.0.1
 */