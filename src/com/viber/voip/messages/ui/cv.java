package com.viber.voip.messages.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.CompoundButton;
import com.viber.voip.messages.LocationEditText;

class cv
  implements View.OnClickListener
{
  private CompoundButton[] b;
  
  private cv(MessageComposerView paramMessageComposerView)
  {
    CompoundButton[] arrayOfCompoundButton = new CompoundButton[3];
    arrayOfCompoundButton[0] = MessageComposerView.v(this.a);
    arrayOfCompoundButton[1] = MessageComposerView.E(this.a);
    arrayOfCompoundButton[2] = MessageComposerView.k(this.a);
    this.b = arrayOfCompoundButton;
  }
  
  public void a(CompoundButton paramCompoundButton)
  {
    for (int i = 0; i < this.b.length; i++) {
      if ((paramCompoundButton == null) || (this.b[i] != paramCompoundButton)) {
        this.b[i].setChecked(false);
      }
    }
  }
  
  public void onClick(View paramView)
  {
    CompoundButton localCompoundButton = (CompoundButton)paramView;
    boolean bool = localCompoundButton.isChecked();
    a(localCompoundButton);
    if (paramView == MessageComposerView.v(this.a)) {
      if (bool) {
        if (MessageComposerView.F(this.a) != null) {
          MessageComposerView.F(this.a).c(true);
        }
      }
    }
    for (;;)
    {
      if (bool) {
        this.a.c();
      }
      return;
      MessageComposerView.g(this.a).requestFocus();
      MessageComposerView.G(this.a).showSoftInput(MessageComposerView.g(this.a), 0);
      continue;
      if ((paramView == MessageComposerView.E(this.a)) && (MessageComposerView.H(this.a) != null)) {
        MessageComposerView.H(this.a).a(bool);
      } else if ((paramView == MessageComposerView.k(this.a)) && (MessageComposerView.I(this.a) != null)) {
        MessageComposerView.I(this.a).b(bool);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.cv
 * JD-Core Version:    0.7.0.1
 */