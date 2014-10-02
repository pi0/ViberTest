package com.viber.voip.contacts.c.d;

import android.content.ContentResolver;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class t
  implements Runnable
{
  t(m paramm, String paramString) {}
  
  public void run()
  {
    this.b.c.getContentResolver().query(com.viber.provider.contacts.a.a, null, null, null, null);
    this.b.d.a(this.b.c);
    m.a(this.b);
    ViberApplication.preferences().a("PREF_CURRENT_LOCALE", this.a);
    m.b(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.t
 * JD-Core Version:    0.7.0.1
 */