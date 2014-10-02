package com.viber.voip.messages.ui;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

class di
  implements View.OnClickListener
{
  di(MessagesFragmentModeManager paramMessagesFragmentModeManager) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165756: 
      MessagesFragmentModeManager.a(this.a, false, true);
      this.a.d.dismiss();
      return;
    case 2131165757: 
      MessagesFragmentModeManager.a(this.a, true, false);
      if (this.a.c != null) {
        this.a.c.a(this.a.a());
      }
      this.a.d.dismiss();
      return;
    }
    MessagesFragmentModeManager.a(this.a, false, false);
    if (this.a.c != null) {
      this.a.c.b(this.a.a());
    }
    this.a.d.dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.di
 * JD-Core Version:    0.7.0.1
 */