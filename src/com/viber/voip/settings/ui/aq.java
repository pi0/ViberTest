package com.viber.voip.settings.ui;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.messages.controller.b.a;
import com.viber.voip.messages.controller.cq;
import com.viber.voip.messages.controller.cr;
import com.viber.voip.messages.controller.cv;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class aq
  implements Preference.OnPreferenceClickListener
{
  aq(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    MessageEntityImpl localMessageEntityImpl = new a("Rakuten", "", System.currentTimeMillis(), System.currentTimeMillis(), 257, 0, null).a("text", "Your 4 digit code for Viber on desktop is: 4444. This is debug rakuten system message", 0);
    cr localcr = new cr(this.a.getActivity());
    if (!localMessageEntityImpl.isSyncedMessage()) {}
    for (boolean bool = true;; bool = false)
    {
      cv localcv = localcr.a(localMessageEntityImpl, "", bool);
      if ((localcv.b) && (localMessageEntityImpl.isIncoming()) && (!localMessageEntityImpl.isRead()) && (!localMessageEntityImpl.isPublicWatcher())) {
        cq.a().a(localcv.d, localcv.e, localcv.f, localcv.c, true);
      }
      return false;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.aq
 * JD-Core Version:    0.7.0.1
 */