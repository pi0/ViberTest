package com.viber.voip.registration;

import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.MenuItem.OnActionExpandListener;

class cz
  implements MenuItem.OnActionExpandListener
{
  cz(SelectCountryActivity paramSelectCountryActivity) {}
  
  public boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    this.a.finish();
    return true;
  }
  
  public boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.cz
 * JD-Core Version:    0.7.0.1
 */