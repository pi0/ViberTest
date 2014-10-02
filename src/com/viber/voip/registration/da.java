package com.viber.voip.registration;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class da
  implements Runnable
{
  da(SelectCountryActivity paramSelectCountryActivity) {}
  
  public void run()
  {
    ArrayList localArrayList;
    if (!TextUtils.isEmpty(SelectCountryActivity.d(this.a)))
    {
      SelectCountryActivity.a(this.a, SelectCountryActivity.d(this.a).replace("+", ""));
      localArrayList = new ArrayList(250);
      Pattern localPattern = Pattern.compile(".*\\b\\Q" + SelectCountryActivity.d(this.a) + "\\E.*", 2);
      for (int i = 0; i < SelectCountryActivity.a(this.a).size(); i++)
      {
        CountryCode localCountryCode = (CountryCode)SelectCountryActivity.a(this.a).get(i);
        if ((localCountryCode.b().startsWith(SelectCountryActivity.d(this.a))) || (localPattern.matcher(localCountryCode.c()).find())) {
          localArrayList.add(localCountryCode);
        }
      }
    }
    for (Object localObject = localArrayList;; localObject = SelectCountryActivity.a(this.a))
    {
      this.a.runOnUiThread(new db(this, (List)localObject));
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.da
 * JD-Core Version:    0.7.0.1
 */