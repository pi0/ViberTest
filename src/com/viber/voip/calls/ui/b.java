package com.viber.voip.calls.ui;

import android.text.Editable;
import android.view.View;
import android.view.View.OnLongClickListener;
import com.viber.voip.widget.PhoneTypeField;

class b
  implements View.OnLongClickListener
{
  b(PhoneFragment paramPhoneFragment) {}
  
  public boolean onLongClick(View paramView)
  {
    this.a.b(10);
    PhoneFragment.a(this.a);
    PhoneFragment.b(this.a).getPhoneFieldEditable().append("+");
    PhoneFragment.c(this.a);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ui.b
 * JD-Core Version:    0.7.0.1
 */