package com.viber.voip.settings.ui;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.sms.SmsReplyActivity;

class q
  implements Preference.OnPreferenceClickListener
{
  q(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    Intent localIntent = new Intent(this.a.getActivity(), SmsReplyActivity.class).addFlags(268435456);
    localIntent.putExtra("number", "+375291196263");
    localIntent.putExtra("sms_body", "Big long messsage from some user");
    SmsReplyActivity.a = true;
    this.a.startActivity(localIntent);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.q
 * JD-Core Version:    0.7.0.1
 */