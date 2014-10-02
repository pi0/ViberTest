package com.facebook;

import android.os.Bundle;

class AuthorizationClient$GetTokenAuthHandler$1
  implements GetTokenClient.CompletedListener
{
  AuthorizationClient$GetTokenAuthHandler$1(AuthorizationClient.GetTokenAuthHandler paramGetTokenAuthHandler, AuthorizationClient.AuthorizationRequest paramAuthorizationRequest) {}
  
  public void completed(Bundle paramBundle)
  {
    this.this$1.getTokenCompleted(this.val$request, paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.AuthorizationClient.GetTokenAuthHandler.1
 * JD-Core Version:    0.7.0.1
 */