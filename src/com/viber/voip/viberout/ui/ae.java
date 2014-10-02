package com.viber.voip.viberout.ui;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.billing.ap;
import com.viber.voip.billing.bv;
import com.viber.voip.billing.q;

class ae
  implements DialogInterface.OnClickListener
{
  ae(ViberOutDialogs paramViberOutDialogs, String paramString1, String paramString2, q paramq, String paramString3) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (this.a != null) {
      bc.a().a(a.z.a(this.a, this.b));
    }
    ProgressDialog[] arrayOfProgressDialog = new ProgressDialog[1];
    arrayOfProgressDialog[0] = ViberOutDialogs.a(this.e, new af(this, arrayOfProgressDialog));
    ag localag = new ag(this, arrayOfProgressDialog);
    bv.a().c().a(true, null, new ai(this, arrayOfProgressDialog, localag));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ae
 * JD-Core Version:    0.7.0.1
 */