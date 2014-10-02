package com.viber.voip.viberout.ui;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.billing.ae;

class ac
  implements View.OnClickListener
{
  ac(ViberOutDialogs paramViberOutDialogs, AlertDialog paramAlertDialog, ae paramae) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165756: 
      this.a.dismiss();
      this.c.finish();
      return;
    }
    this.a.dismiss();
    this.c.finish();
    ViberOutDialogs.a(this.c, this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ac
 * JD-Core Version:    0.7.0.1
 */