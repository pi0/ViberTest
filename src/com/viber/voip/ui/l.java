package com.viber.voip.ui;

import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.MenuItem.OnActionExpandListener;

class l
  implements MenuItem.OnActionExpandListener
{
  l(k paramk) {}
  
  public boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    boolean bool = true;
    if ((this.a.b != null) && (this.a.e())) {
      bool = this.a.b.a(false);
    }
    if (bool) {
      this.a.b();
    }
    return bool;
  }
  
  public boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    boolean bool = true;
    if (this.a.b != null) {
      bool = this.a.b.a(bool);
    }
    return bool;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.l
 * JD-Core Version:    0.7.0.1
 */