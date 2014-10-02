package com.viber.voip.messages.ui;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;
import com.viber.voip.a.x;
import com.viber.voip.messages.LocationEditText;

class cm
  implements View.OnClickListener
{
  cm(MessageComposerView paramMessageComposerView) {}
  
  public void onClick(View paramView)
  {
    x localx = MessageComposerView.f(this.a).c();
    localx.a(Long.valueOf(MessageComposerView.g(this.a).getText().length()));
    bc.a().a(localx);
    MessageComposerView.h(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.cm
 * JD-Core Version:    0.7.0.1
 */