package com.viber.voip.contacts.ui;

import android.os.Handler;
import com.viber.voip.ViberApplication;

class v
  implements Runnable
{
  v(u paramu, String paramString1, String paramString2) {}
  
  public void run()
  {
    if (this.a == null)
    {
      ContactDetailsFragment.i(this.c.a.b).removeCallbacks(ContactDetailsFragment.j(this.c.a.b));
      ViberApplication.getInstance().setCachedUnknownNumberInfo(this.b, Boolean.valueOf(ContactDetailsFragment.k(this.c.a.b)));
      if (this.c.a.b.getActivity() != null) {
        ContactDetailsFragment.a(this.c.a.b, this.b, ContactDetailsFragment.k(this.c.a.b));
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.v
 * JD-Core Version:    0.7.0.1
 */