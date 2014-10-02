package com.facebook.android;

import android.os.Bundle;
import android.util.Log;
import android.webkit.CookieSyncManager;

class Facebook$1
  implements Facebook.DialogListener
{
  Facebook$1(Facebook paramFacebook) {}
  
  public void onCancel()
  {
    Log.d("Facebook-authorize", "Login canceled");
    Facebook.access$000(this.this$0).onCancel();
  }
  
  public void onComplete(Bundle paramBundle)
  {
    CookieSyncManager.getInstance().sync();
    this.this$0.setAccessToken(paramBundle.getString("access_token"));
    this.this$0.setAccessExpiresIn(paramBundle.getString("expires_in"));
    if (this.this$0.isSessionValid())
    {
      Log.d("Facebook-authorize", "Login Success! access_token=" + this.this$0.getAccessToken() + " expires=" + this.this$0.getAccessExpires());
      Facebook.access$000(this.this$0).onComplete(paramBundle);
      return;
    }
    Facebook.access$000(this.this$0).onFacebookError(new FacebookError("Failed to receive access token."));
  }
  
  public void onError(DialogError paramDialogError)
  {
    Log.d("Facebook-authorize", "Login failed: " + paramDialogError);
    Facebook.access$000(this.this$0).onError(paramDialogError);
  }
  
  public void onFacebookError(FacebookError paramFacebookError)
  {
    Log.d("Facebook-authorize", "Login failed: " + paramFacebookError);
    Facebook.access$000(this.this$0).onFacebookError(paramFacebookError);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.android.Facebook.1
 * JD-Core Version:    0.7.0.1
 */