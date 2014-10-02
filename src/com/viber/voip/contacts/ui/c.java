package com.viber.voip.contacts.ui;

import android.app.Activity;
import android.net.Uri;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.g;
import com.viber.voip.billing.ae;
import com.viber.voip.util.ah;
import com.viber.voip.viberout.ui.ViberOutDialogs;

class c
  implements ah
{
  c(b paramb, Activity paramActivity) {}
  
  public void a(String paramString)
  {
    ae localae = new ae(Uri.fromParts("tel", paramString, null).getSchemeSpecificPart());
    ViberOutDialogs.a(this.a, localae);
    bc.a().a(a.v.e(true));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.c
 * JD-Core Version:    0.7.0.1
 */