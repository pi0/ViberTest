package com.viber.voip.registration;

import android.view.View;
import android.widget.ListView;

class cv
  implements Runnable
{
  cv(cu paramcu, CountryCode paramCountryCode, int paramInt) {}
  
  public void run()
  {
    this.c.a.findViewById(2131166120).setVisibility(0);
    this.c.a.getListView().setAdapter(new dc(this.c.a, SelectCountryActivity.a(this.c.a), this.a));
    this.c.a.getListView().setSelection(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.cv
 * JD-Core Version:    0.7.0.1
 */