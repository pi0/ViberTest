package com.facebook;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class AuthorizationClient$GetTokenAuthHandler
  extends AuthorizationClient.AuthHandler
{
  private static final long serialVersionUID = 1L;
  private transient GetTokenClient getTokenClient;
  
  AuthorizationClient$GetTokenAuthHandler(AuthorizationClient paramAuthorizationClient)
  {
    super(paramAuthorizationClient);
  }
  
  void cancel()
  {
    if (this.getTokenClient != null)
    {
      this.getTokenClient.cancel();
      this.getTokenClient = null;
    }
  }
  
  void getTokenCompleted(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest, Bundle paramBundle)
  {
    this.getTokenClient = null;
    AuthorizationClient.access$000(this.this$0);
    if (paramBundle != null)
    {
      ArrayList localArrayList1 = paramBundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
      List localList = paramAuthorizationRequest.getPermissions();
      if ((localArrayList1 != null) && ((localList == null) || (localArrayList1.containsAll(localList))))
      {
        AuthorizationClient.Result localResult = AuthorizationClient.Result.createTokenResult(AccessToken.createFromNativeLogin(paramBundle, AccessTokenSource.FACEBOOK_APPLICATION_SERVICE));
        this.this$0.completeAndValidate(localResult);
        return;
      }
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (!localArrayList1.contains(str)) {
          localArrayList2.add(str);
        }
      }
      paramAuthorizationRequest.setPermissions(localArrayList2);
    }
    this.this$0.tryNextHandler();
  }
  
  boolean tryAuthorize(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    this.getTokenClient = new GetTokenClient(this.this$0.context, paramAuthorizationRequest.getApplicationId());
    if (!this.getTokenClient.start()) {
      return false;
    }
    AuthorizationClient.access$100(this.this$0);
    AuthorizationClient.GetTokenAuthHandler.1 local1 = new AuthorizationClient.GetTokenAuthHandler.1(this, paramAuthorizationRequest);
    this.getTokenClient.setCompletedListener(local1);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.AuthorizationClient.GetTokenAuthHandler
 * JD-Core Version:    0.7.0.1
 */