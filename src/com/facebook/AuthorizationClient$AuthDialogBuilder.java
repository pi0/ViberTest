package com.facebook;

import android.content.Context;
import android.os.Bundle;
import com.facebook.widget.WebDialog;
import com.facebook.widget.WebDialog.Builder;

class AuthorizationClient$AuthDialogBuilder
  extends WebDialog.Builder
{
  private static final String OAUTH_DIALOG = "oauth";
  static final String REDIRECT_URI = "fbconnect://success";
  
  public AuthorizationClient$AuthDialogBuilder(Context paramContext, String paramString, Bundle paramBundle)
  {
    super(paramContext, paramString, "oauth", paramBundle);
  }
  
  public WebDialog build()
  {
    Bundle localBundle = getParameters();
    localBundle.putString("redirect_uri", "fbconnect://success");
    localBundle.putString("client_id", getApplicationId());
    return new WebDialog(getContext(), "oauth", localBundle, getTheme(), getListener());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.AuthorizationClient.AuthDialogBuilder
 * JD-Core Version:    0.7.0.1
 */