package com.viber.voip.calls.ui;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.widget.PhoneTypeField;

class c
  implements View.OnClickListener
{
  c(PhoneFragment paramPhoneFragment) {}
  
  public void onClick(View paramView)
  {
    PhoneFragment.a(this.a, "onClick del");
    PhoneFragment.a(this.a);
    Editable localEditable = PhoneFragment.b(this.a).getPhoneFieldEditable();
    int i = PhoneFragment.b(this.a).getPhoneFieldLength();
    if (i > 0) {
      localEditable.replace(i - 1, i, "");
    }
    PhoneFragment.c(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ui.c
 * JD-Core Version:    0.7.0.1
 */