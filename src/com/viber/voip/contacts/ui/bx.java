package com.viber.voip.contacts.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.viber.voip.ui.ab;

class bx
  implements TextWatcher
{
  bx(bw parambw) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (bw.a(this.a) != null) {
      bw.b(this.a).a(paramCharSequence.toString());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bx
 * JD-Core Version:    0.7.0.1
 */