package com.viber.voip.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.k;
import com.viber.voip.settings.l;

final class gs
  implements View.OnClickListener
{
  gs(AlertDialog paramAlertDialog, Context paramContext, Intent paramIntent, k paramk) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165756: 
      this.a.cancel();
      return;
    case 2131165757: 
      this.b.startActivity(this.c);
      if (this.d != null) {
        bc.a().a(this.d.c());
      }
      this.a.cancel();
      return;
    }
    this.b.startActivity(this.c);
    if (this.d != null) {
      bc.a().a(this.d.c());
    }
    ViberApplication.preferences().a("NeverShowAgainGSM", true);
    this.a.cancel();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gs
 * JD-Core Version:    0.7.0.1
 */