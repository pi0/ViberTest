package com.viber.voip.messages.conversation.a.a.a;

import android.text.Layout;
import android.widget.TextView;

class e
  implements Runnable
{
  e(b paramb, TextView paramTextView, int paramInt) {}
  
  public void run()
  {
    if (this.a.getLineCount() > this.b)
    {
      int i = this.a.getLayout().getLineEnd(-1 + this.b);
      StringBuilder localStringBuilder = new StringBuilder();
      CharSequence localCharSequence = this.a.getText();
      if (i >= 3) {
        i -= 3;
      }
      String str = localCharSequence.subSequence(0, i) + "...";
      this.a.setText(str);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.e
 * JD-Core Version:    0.7.0.1
 */