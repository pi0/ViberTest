package com.viber.voip.registration;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;

class cf
  implements TextWatcher
{
  cf(cb paramcb) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    Button localButton = cb.b(this.a);
    if (!TextUtils.isEmpty(paramEditable.toString())) {}
    for (boolean bool = true;; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.cf
 * JD-Core Version:    0.7.0.1
 */