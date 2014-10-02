package com.viber.voip.app;

import android.content.Intent;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import com.viber.voip.util.bj;
import com.viber.voip.w;

class b
  implements Runnable
{
  b(a parama) {}
  
  public void run()
  {
    long l1 = ViberApplication.preferences().b("pref_ptt_autoclean_dirsize_key", 157286400L);
    long l2 = bj.a(w.u);
    ViberApplication.log("PTT autoclean MAX=" + l1 + " USED=" + l2);
    if (l2 > l1)
    {
      Intent localIntent = new Intent("com.viber.voip.action.PTT_MEMORY_USAGE");
      localIntent.addFlags(268435456);
      ViberApplication.getInstance().startActivity(localIntent);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.app.b
 * JD-Core Version:    0.7.0.1
 */