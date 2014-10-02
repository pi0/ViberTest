package com.viber.voip.messages.ui.media;

import android.text.Editable;
import android.text.TextWatcher;

class ae
  implements TextWatcher
{
  ae(SendMediaActivity paramSendMediaActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    SendMediaActivity.c(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ae
 * JD-Core Version:    0.7.0.1
 */