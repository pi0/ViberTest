package com.viber.voip.messages.extras.twitter;

import android.content.Intent;

class a
  implements e
{
  a(TwitterAuthDialogActivity paramTwitterAuthDialogActivity) {}
  
  public void a(String paramString)
  {
    Intent localIntent = new Intent("action_handle_oauth_verifier");
    localIntent.putExtra("oauth_verifier_extra", paramString);
    this.a.sendBroadcast(localIntent);
  }
  
  public void b(String paramString)
  {
    Intent localIntent = new Intent("action_handle_oauth_verifier_error");
    localIntent.putExtra("oauth_verifier_extra", paramString);
    this.a.sendBroadcast(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.a
 * JD-Core Version:    0.7.0.1
 */