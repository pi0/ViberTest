package com.viber.voip;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class ci
  implements View.OnClickListener
{
  ci(SystemDialogActivity paramSystemDialogActivity, AlertDialog paramAlertDialog) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165759: 
      bc localbc3 = bc.a();
      u localu3 = a.z;
      a.z.getClass();
      a.z.getClass();
      localbc3.a(localu3.a("405", "Take me to the Google Play"));
      SystemDialogActivity.d(this.b);
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.b.getString(2131494821)));
      this.b.startActivity(localIntent);
      return;
    case 2131165760: 
      bc localbc2 = bc.a();
      u localu2 = a.z;
      a.z.getClass();
      localbc2.a(localu2.a("405", this.b.getResources().getString(2131494174)));
      SystemDialogActivity.d(this.b);
      this.b.a(this.a);
      return;
    }
    bc localbc1 = bc.a();
    u localu1 = a.z;
    a.z.getClass();
    localbc1.a(localu1.a("405", this.b.getResources().getString(2131494175)));
    this.b.a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ci
 * JD-Core Version:    0.7.0.1
 */