package com.viber.voip.messages.conversation;

import android.os.Handler;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import com.viber.voip.widget.aa;

class be
  implements InputFilter
{
  be(ax paramax) {}
  
  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    int i = paramInt2 - paramInt1;
    if (i > 0)
    {
      if (paramInt3 == paramSpanned.length()) {
        break label58;
      }
      CharSequence localCharSequence = paramCharSequence.subSequence(paramInt1, paramInt2);
      ax.d(this.a).post(new bf(this, localCharSequence));
      paramCharSequence = "";
    }
    label58:
    int j;
    do
    {
      do
      {
        return paramCharSequence;
        if (ax.e(this.a) > 20) {
          return "";
        }
        if ((ax.e(this.a) == 20) && ((paramInt3 == 0) || (paramSpanned.charAt(paramInt3 - 1) == ' '))) {
          return "";
        }
        if (i == 1)
        {
          char c = paramCharSequence.charAt(paramInt1);
          if ((c == ' ') && ((paramInt3 == 0) || (paramSpanned.charAt(paramInt3 - 1) == ' '))) {
            return "";
          }
          if (c != ' ')
          {
            bj[] arrayOfbj = (bj[])ax.a(this.a).getText().getSpans(paramInt3, paramInt3, bj.class);
            if ((arrayOfbj != null) && (arrayOfbj.length > 0)) {
              return " " + c;
            }
          }
          if (c == '\n') {
            return "";
          }
        }
      } while (!ax.a(this.a, paramInt3, ax.c(this.a)));
      j = paramCharSequence.charAt(paramInt1);
    } while ((ax.c(this.a).b - ax.c(this.a).a < 20) || (j == 32));
    return "";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.be
 * JD-Core Version:    0.7.0.1
 */