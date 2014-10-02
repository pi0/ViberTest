package com.viber.voip.calls.ui;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ImageButton;
import com.viber.voip.widget.PhoneTypeField;

class f
  implements TextWatcher
{
  f(PhoneFragment paramPhoneFragment) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    PhoneFragment.f(this.a);
    PhoneFragment.c(this.a, paramCharSequence.toString().trim());
    ImageButton localImageButton = PhoneFragment.e(this.a);
    if (PhoneFragment.b(this.a).getPhoneFieldLength() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      localImageButton.setEnabled(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ui.f
 * JD-Core Version:    0.7.0.1
 */