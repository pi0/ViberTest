package com.facebook;

import android.content.Intent;
import java.io.Serializable;

abstract class AuthorizationClient$AuthHandler
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  
  AuthorizationClient$AuthHandler(AuthorizationClient paramAuthorizationClient) {}
  
  void cancel() {}
  
  boolean needsInternetPermission()
  {
    return false;
  }
  
  boolean needsRestart()
  {
    return false;
  }
  
  boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    return false;
  }
  
  abstract boolean tryAuthorize(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.AuthorizationClient.AuthHandler
 * JD-Core Version:    0.7.0.1
 */