package com.facebook;

import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.internal.Utility;
import com.facebook.widget.WebDialog;
import com.facebook.widget.WebDialog.Builder;

class AuthorizationClient$WebViewAuthHandler
  extends AuthorizationClient.AuthHandler
{
  private static final long serialVersionUID = 1L;
  private transient WebDialog loginDialog;
  
  AuthorizationClient$WebViewAuthHandler(AuthorizationClient paramAuthorizationClient)
  {
    super(paramAuthorizationClient);
  }
  
  void cancel()
  {
    if (this.loginDialog != null)
    {
      this.loginDialog.dismiss();
      this.loginDialog = null;
    }
  }
  
  boolean needsInternetPermission()
  {
    return true;
  }
  
  boolean needsRestart()
  {
    return true;
  }
  
  void onWebDialogComplete(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest, Bundle paramBundle, FacebookException paramFacebookException)
  {
    AuthorizationClient.Result localResult;
    if (paramBundle != null)
    {
      CookieSyncManager.createInstance(this.this$0.context).sync();
      localResult = AuthorizationClient.Result.createTokenResult(AccessToken.createFromWebBundle(paramAuthorizationRequest.getPermissions(), paramBundle, AccessTokenSource.WEB_VIEW));
    }
    for (;;)
    {
      this.this$0.completeAndValidate(localResult);
      return;
      if ((paramFacebookException instanceof FacebookOperationCanceledException)) {
        localResult = AuthorizationClient.Result.createCancelResult("User canceled log in.");
      } else {
        localResult = AuthorizationClient.Result.createErrorResult(paramFacebookException.getMessage(), null);
      }
    }
  }
  
  boolean tryAuthorize(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    String str = paramAuthorizationRequest.getApplicationId();
    Bundle localBundle = new Bundle();
    if (!Utility.isNullOrEmpty(paramAuthorizationRequest.getPermissions())) {
      localBundle.putString("scope", TextUtils.join(",", paramAuthorizationRequest.getPermissions()));
    }
    Utility.clearFacebookCookies(this.this$0.context);
    AuthorizationClient.WebViewAuthHandler.1 local1 = new AuthorizationClient.WebViewAuthHandler.1(this, paramAuthorizationRequest);
    this.loginDialog = ((WebDialog.Builder)new AuthorizationClient.AuthDialogBuilder(this.this$0.getStartActivityDelegate().getActivityContext(), str, localBundle).setOnCompleteListener(local1)).build();
    this.loginDialog.show();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.AuthorizationClient.WebViewAuthHandler
 * JD-Core Version:    0.7.0.1
 */