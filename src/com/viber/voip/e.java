package com.viber.voip;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;

class e
  implements TextWatcher
{
  e(AddFriendActivity paramAddFriendActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    Button localButton = AddFriendActivity.a(this.a);
    if (paramCharSequence.toString().trim().length() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.e
 * JD-Core Version:    0.7.0.1
 */