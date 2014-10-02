package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.ServerProtocol;
import java.util.Collection;

class AuthorizationClient$KatanaProxyAuthHandler
  extends AuthorizationClient.KatanaAuthHandler
{
  private static final long serialVersionUID = 1L;
  
  AuthorizationClient$KatanaProxyAuthHandler(AuthorizationClient paramAuthorizationClient)
  {
    super(paramAuthorizationClient);
  }
  
  private AuthorizationClient.Result handleResultOk(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    String str = localBundle.getString("error");
    if (str == null) {
      str = localBundle.getString("error_type");
    }
    AuthorizationClient.Result localResult;
    if (str == null) {
      localResult = AuthorizationClient.Result.createTokenResult(AccessToken.createFromWebBundle(this.this$0.pendingRequest.getPermissions(), localBundle, AccessTokenSource.FACEBOOK_APPLICATION_WEB));
    }
    boolean bool;
    do
    {
      return localResult;
      bool = ServerProtocol.errorsProxyAuthDisabled.contains(str);
      localResult = null;
    } while (bool);
    if (ServerProtocol.errorsUserCanceled.contains(str)) {
      return AuthorizationClient.Result.createCancelResult(null);
    }
    return AuthorizationClient.Result.createErrorResult(str, localBundle.getString("error_description"));
  }
  
  boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    String str;
    AuthorizationClient.Result localResult;
    if (paramInt2 == 0) {
      if (paramIntent != null)
      {
        str = paramIntent.getStringExtra("error");
        localResult = AuthorizationClient.Result.createCancelResult(str);
        label23:
        if (localResult == null) {
          break label72;
        }
        this.this$0.completeAndValidate(localResult);
      }
    }
    for (;;)
    {
      return true;
      str = "error";
      break;
      if (paramInt2 != -1)
      {
        localResult = AuthorizationClient.Result.createErrorResult("Unexpected resultCode from authorization.", null);
        break label23;
      }
      localResult = handleResultOk(paramIntent);
      break label23;
      label72:
      this.this$0.tryNextHandler();
    }
  }
  
  boolean tryAuthorize(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    return tryIntent(NativeProtocol.createProxyAuthIntent(this.this$0.context, paramAuthorizationRequest.getApplicationId(), paramAuthorizationRequest.getPermissions()), paramAuthorizationRequest.getRequestCode());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.AuthorizationClient.KatanaProxyAuthHandler
 * JD-Core Version:    0.7.0.1
 */