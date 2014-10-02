package com.slidingmenu.lib;

import android.util.Log;
import android.view.View;

class i
  implements Runnable
{
  i(SlidingMenu paramSlidingMenu, int paramInt) {}
  
  public void run()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("changing layerType. hardware? ");
    if (this.a == 2) {}
    for (boolean bool = true;; bool = false)
    {
      Log.v("SlidingMenu", bool);
      this.b.getContent().setLayerType(this.a, null);
      this.b.getMenu().setLayerType(this.a, null);
      if (this.b.getSecondaryMenu() != null) {
        this.b.getSecondaryMenu().setLayerType(this.a, null);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.slidingmenu.lib.i
 * JD-Core Version:    0.7.0.1
 */