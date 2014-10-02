package com.viber.voip.registration;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

class u
  implements TextWatcher
{
  u(t paramt) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    int i = paramEditable.toString().length();
    EditText localEditText1 = t.a(this.a);
    float f;
    int j;
    label48:
    int k;
    label71:
    int m;
    if (i > 0)
    {
      f = 36.0F;
      localEditText1.setTextSize(2, f);
      EditText localEditText2 = t.a(this.a);
      if (i <= 0) {
        break label113;
      }
      j = 81;
      localEditText2.setGravity(j);
      EditText localEditText3 = t.a(this.a);
      if (i <= 0) {
        break label120;
      }
      k = 0;
      if (i <= 0) {
        break label132;
      }
      m = 0;
      label78:
      localEditText3.setPadding(k, 0, 0, m);
      if (i != 4) {
        break label144;
      }
      t.c(this.a).setEnabled(true);
    }
    label113:
    label120:
    while (!t.c(this.a).isEnabled())
    {
      return;
      f = 16.0F;
      break;
      j = 83;
      break label48;
      k = t.b(this.a);
      break label71;
      m = t.b(this.a);
      break label78;
    }
    label132:
    label144:
    t.c(this.a).setEnabled(false);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.u
 * JD-Core Version:    0.7.0.1
 */