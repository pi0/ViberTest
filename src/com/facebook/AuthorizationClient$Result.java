package com.facebook;

import java.io.Serializable;

class AuthorizationClient$Result
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  final AuthorizationClient.Result.Code code;
  final String errorMessage;
  final AccessToken token;
  
  private AuthorizationClient$Result(AuthorizationClient.Result.Code paramCode, AccessToken paramAccessToken, String paramString)
  {
    this.token = paramAccessToken;
    this.errorMessage = paramString;
    this.code = paramCode;
  }
  
  static Result createCancelResult(String paramString)
  {
    return new Result(AuthorizationClient.Result.Code.CANCEL, null, paramString);
  }
  
  static Result createErrorResult(String paramString1, String paramString2)
  {
    if (paramString2 != null) {
      paramString1 = paramString1 + ": " + paramString2;
    }
    return new Result(AuthorizationClient.Result.Code.ERROR, null, paramString1);
  }
  
  static Result createTokenResult(AccessToken paramAccessToken)
  {
    return new Result(AuthorizationClient.Result.Code.SUCCESS, paramAccessToken, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.AuthorizationClient.Result
 * JD-Core Version:    0.7.0.1
 */