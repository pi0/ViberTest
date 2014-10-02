package com.viber.voip.registration;

import android.os.Handler;
import com.actionbarsherlock.widget.SearchView.OnQueryTextListener;
import com.viber.voip.dc;
import com.viber.voip.dk;

class cx
  implements SearchView.OnQueryTextListener
{
  cx(SelectCountryActivity paramSelectCountryActivity) {}
  
  public boolean onQueryTextChange(String paramString)
  {
    Handler localHandler = dc.a(dk.h);
    SelectCountryActivity.a(this.a, paramString.toLowerCase());
    localHandler.removeCallbacks(SelectCountryActivity.c(this.a));
    localHandler.postDelayed(SelectCountryActivity.c(this.a), 100L);
    return false;
  }
  
  public boolean onQueryTextSubmit(String paramString)
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.cx
 * JD-Core Version:    0.7.0.1
 */