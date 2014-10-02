package com.viber.voip.messages.ui;

import android.app.AlertDialog;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;

class ar
  implements TextWatcher
{
  ar(aj paramaj, AlertDialog paramAlertDialog) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (TextUtils.isEmpty(paramEditable))
    {
      this.a.getButton(-1).setEnabled(false);
      return;
    }
    this.a.getButton(-1).setEnabled(true);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.ar
 * JD-Core Version:    0.7.0.1
 */