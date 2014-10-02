package com.viber.voip.messages.conversation;

import android.os.Handler;
import android.text.Editable;
import android.text.Spannable;
import android.text.TextWatcher;
import com.viber.voip.widget.aa;

class ba
  implements TextWatcher
{
  ba(ax paramax, Runnable paramRunnable) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 > paramInt2)
    {
      paramInt1++;
      if (ax.a(this.b, ax.b(this.b), ax.c(this.b)))
      {
        ax.a("onTextChanged mTagRange: " + ax.c(this.b) + ", cursorPos:" + paramInt1);
        if (!ax.c(this.b).a(paramInt1))
        {
          bj[] arrayOfbj = (bj[])ax.a(this.b).getText().getSpans(ax.c(this.b).a, ax.c(this.b).b, bj.class);
          if ((arrayOfbj == null) || (arrayOfbj.length == 0)) {
            ax.a(this.b, ax.a(this.b).getText(), ax.c(this.b).a, ax.c(this.b).b, false);
          }
        }
      }
    }
    for (;;)
    {
      if (paramInt1 >= 0) {
        ax.a(this.b, paramInt1);
      }
      ax.d(this.b).post(this.a);
      return;
      if (paramInt3 >= paramInt2) {
        paramInt1 = -1;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ba
 * JD-Core Version:    0.7.0.1
 */