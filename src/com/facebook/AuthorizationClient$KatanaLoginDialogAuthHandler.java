package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;

class AuthorizationClient$KatanaLoginDialogAuthHandler
  extends AuthorizationClient.KatanaAuthHandler
{
  private static final long serialVersionUID = 1L;
  
  AuthorizationClient$KatanaLoginDialogAuthHandler(AuthorizationClient paramAuthorizationClient)
  {
    super(paramAuthorizationClient);
  }
  
  private AuthorizationClient.Result handleResultOk(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    String str = localBundle.getString("com.facebook.platform.status.ERROR_TYPE");
    AuthorizationClient.Result localResult;
    if (str == null) {
      localResult = AuthorizationClient.Result.createTokenResult(AccessToken.createFromNativeLogin(localBundle, AccessTokenSource.FACEBOOK_APPLICATION_NATIVE));
    }
    boolean bool;
    do
    {
      return localResult;
      bool = "ServiceDisabled".equals(str);
      localResult = null;
    } while (bool);
    if ("UserCanceled".equals(str)) {
      return AuthorizationClient.Result.createCancelResult(null);
    }
    return AuthorizationClient.Result.createErrorResult(str, localBundle.getString("error_description"));
  }
  
  boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramIntent == null) {
      return false;
    }
    if (NativeProtocol.isServiceDisabledResult20121101(paramIntent)) {
      this.this$0.tryNextHandler();
    }
    for (;;)
    {
      return true;
      AuthorizationClient.Result localResult;
      if (paramInt2 == 0) {
        localResult = AuthorizationClient.Result.createCancelResult(paramIntent.getStringExtra("com.facebook.platform.status.ERROR_DESCRIPTION"));
      }
      for (;;)
      {
        if (localResult == null) {
          break label80;
        }
        this.this$0.completeAndValidate(localResult);
        break;
        if (paramInt2 != -1) {
          localResult = AuthorizationClient.Result.createErrorResult("Unexpected resultCode from authorization.", null);
        } else {
          localResult = handleResultOk(paramIntent);
        }
      }
      label80:
      this.this$0.tryNextHandler();
    }
  }
  
  boolean tryAuthorize(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    return tryIntent(NativeProtocol.createLoginDialog20121101Intent(this.this$0.context, paramAuthorizationRequest.getApplicationId(), new ArrayList(paramAuthorizationRequest.getPermissions()), paramAuthorizationRequest.getDefaultAudience().getNativeProtocolAudience()), paramAuthorizationRequest.getRequestCode());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.AuthorizationClient.KatanaLoginDialogAuthHandler
 * JD-Core Version:    0.7.0.1
 */