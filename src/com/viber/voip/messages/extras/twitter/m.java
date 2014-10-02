package com.viber.voip.messages.extras.twitter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

class m
  extends BroadcastReceiver
{
  m(l paraml) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    l.a(this.a, "mTwitterDialogReceiver: onReceive action=" + str1);
    if ((TextUtils.isEmpty(str1)) || ("action_handle_dialog_destroy".equals(str1))) {
      l.a(this.a, paramContext);
    }
    do
    {
      String str3;
      do
      {
        return;
        if (!"action_handle_oauth_verifier".equals(str1)) {
          break;
        }
        str3 = paramIntent.getStringExtra("oauth_verifier_extra");
        l.a(this.a, "onVerifierReceived() verifier=" + str3);
      } while (TextUtils.isEmpty(str3));
      new u(this.a, null).execute(new String[] { str3 });
      return;
    } while (!"action_handle_oauth_verifier_error".equals(str1));
    String str2 = paramIntent.getStringExtra("oauth_verifier_extra");
    l.a(this.a, "onErrorReceived() message: " + str2);
    l.a(this.a, str2, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.m
 * JD-Core Version:    0.7.0.1
 */