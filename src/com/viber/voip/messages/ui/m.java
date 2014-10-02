package com.viber.voip.messages.ui;

import android.os.Handler;
import android.text.Editable;
import android.widget.EditText;

class m
  implements Runnable
{
  m(k paramk, EditText paramEditText) {}
  
  public void run()
  {
    if (this.a.getText().length() > 0)
    {
      k.a(this.b, this.a);
      this.b.g.postDelayed(k.b(this.b), 50L);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.m
 * JD-Core Version:    0.7.0.1
 */