package com.viber.voip.messages.conversation.ui;

import android.app.AlertDialog;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import com.viber.voip.util.gj;

class cg
  implements TextWatcher
{
  cg(ConversationInfoFragment paramConversationInfoFragment, AlertDialog paramAlertDialog, String paramString) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    Button localButton = this.a.getButton(-2);
    if ((!gj.c(paramCharSequence.toString().trim())) && (!this.b.equals(paramCharSequence.toString()))) {}
    for (boolean bool = true;; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.cg
 * JD-Core Version:    0.7.0.1
 */