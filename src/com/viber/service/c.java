package com.viber.service;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.viber.voip.contacts.b.i;
import com.viber.voip.contacts.c.d.aa;

final class c
  implements Runnable
{
  c(boolean paramBoolean, long paramLong, Context paramContext, Intent paramIntent, String paramString) {}
  
  public void run()
  {
    if ((this.a) && (this.b != -1L))
    {
      com.viber.voip.contacts.b.b localb = aa.a(this.c, this.b);
      i locali = localb.i();
      if ((localb != null) && (localb.e()) && (locali != null))
      {
        Intent localIntent2 = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", locali.a(), null));
        b.a(this.c, localIntent2, locali.a());
        return;
      }
      Intent localIntent1 = new Intent("com.viber.voip.action.NO_LONGER_VIBER_PROBLEM");
      this.c.startActivity(localIntent1);
      return;
    }
    this.d.setFlags(0);
    b.a(this.c, this.d, this.e);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.c
 * JD-Core Version:    0.7.0.1
 */