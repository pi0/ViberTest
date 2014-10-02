package com.viber.voip.calls.ui;

import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.a.a;
import com.viber.voip.a.ae;
import com.viber.voip.a.bc;
import com.viber.voip.widget.PhoneTypeField;

class e
  implements View.OnClickListener
{
  e(PhoneFragment paramPhoneFragment) {}
  
  public void onClick(View paramView)
  {
    PhoneFragment.a(this.a, "onClick add");
    PhoneFragment.a(this.a);
    if ((PhoneFragment.b(this.a) == null) || (PhoneFragment.b(this.a).getPhoneFieldEditable() == null)) {}
    String str;
    do
    {
      return;
      str = PhoneNumberUtils.stripSeparators(PhoneFragment.b(this.a).getPhoneFieldEditable().toString());
    } while (TextUtils.isEmpty(str));
    PhoneFragment.b(this.a, str.toString());
    bc.a().a(a.g.d());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ui.e
 * JD-Core Version:    0.7.0.1
 */