package com.viber.voip.contacts.ui;

import com.viber.jni.OnlineContactInfo;
import com.viber.voip.util.w;

class n
  implements Runnable
{
  n(m paramm, OnlineContactInfo paramOnlineContactInfo) {}
  
  public void run()
  {
    if ((this.b.a.getSherlockActivity() != null) && (this.b.a.getActivity() != null)) {
      ContactDetailsFragment.b(this.b.a, w.a(this.a.isOnLine, this.a.time));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.n
 * JD-Core Version:    0.7.0.1
 */