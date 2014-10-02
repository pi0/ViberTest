package com.viber.voip.registration;

import android.content.Intent;
import java.util.List;

class cu
  implements Runnable
{
  cu(SelectCountryActivity paramSelectCountryActivity) {}
  
  public void run()
  {
    SelectCountryActivity.a(this.a, SelectCountryActivity.a());
    CountryCode localCountryCode = (CountryCode)this.a.getIntent().getParcelableExtra("extra_selected_code");
    if ((localCountryCode != null) && (SelectCountryActivity.a(this.a) != null)) {}
    for (int i = SelectCountryActivity.a(this.a).indexOf(localCountryCode);; i = 0)
    {
      this.a.runOnUiThread(new cv(this, localCountryCode, i));
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.cu
 * JD-Core Version:    0.7.0.1
 */