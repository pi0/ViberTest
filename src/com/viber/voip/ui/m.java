package com.viber.voip.ui;

import com.actionbarsherlock.widget.SearchView.OnQueryTextListener;

class m
  implements SearchView.OnQueryTextListener
{
  m(k paramk) {}
  
  public boolean onQueryTextChange(String paramString)
  {
    if (this.a.a) {
      this.a.a = false;
    }
    while ((this.a.b != null) && (this.a.b.a(paramString))) {
      return true;
    }
    return false;
  }
  
  public boolean onQueryTextSubmit(String paramString)
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.m
 * JD-Core Version:    0.7.0.1
 */