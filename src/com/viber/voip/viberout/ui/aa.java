package com.viber.voip.viberout.ui;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.billing.ae;
import com.viber.voip.settings.l;

class aa
  implements View.OnClickListener
{
  aa(ViberOutDialogs paramViberOutDialogs, AlertDialog paramAlertDialog, ae paramae) {}
  
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
    case 2131165757: 
      this.a.dismiss();
      this.c.finish();
      ViberOutDialogs.a(this.c, this.b);
      return;
    }
    ViberApplication.preferences().a("DIALOG_GSM_CALL_TO_NON_VIBER_NEVER_SHOW", true);
    this.a.dismiss();
    this.c.finish();
    ViberOutDialogs.a(this.c, this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.aa
 * JD-Core Version:    0.7.0.1
 */