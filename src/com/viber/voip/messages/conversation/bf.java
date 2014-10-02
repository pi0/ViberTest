package com.viber.voip.messages.conversation;

import android.text.Editable;
import com.viber.voip.widget.aa;

class bf
  implements Runnable
{
  bf(be parambe, CharSequence paramCharSequence) {}
  
  public void run()
  {
    if ((ax.a(this.b.a).getText().length() > 0) && (ax.a(this.b.a).getText().charAt(-1 + ax.a(this.b.a).getText().length()) != ' ')) {
      ax.a(this.b.a).getText().insert(ax.a(this.b.a).getText().length(), " ");
    }
    ax.a(this.b.a).getText().insert(ax.a(this.b.a).getText().length(), this.a);
    ax.a(this.b.a).setSelection(ax.a(this.b.a).getText().length());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.bf
 * JD-Core Version:    0.7.0.1
 */