package com.viber.voip.user;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

class YouHeaderLayout$1
  implements TextWatcher
{
  YouHeaderLayout$1(YouHeaderLayout paramYouHeaderLayout) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    TextView localTextView = YouHeaderLayout.access$000(this.this$0).usernameView;
    if (paramCharSequence.length() > 0) {}
    for (String str = "";; str = this.this$0.getResources().getString(2131494335))
    {
      localTextView.setHint(str);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.YouHeaderLayout.1
 * JD-Core Version:    0.7.0.1
 */