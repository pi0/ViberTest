package com.facebook;

import java.io.Serializable;
import java.util.List;

class AuthorizationClient$AuthorizationRequest
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String applicationId;
  private SessionDefaultAudience defaultAudience;
  private boolean isLegacy = false;
  private SessionLoginBehavior loginBehavior;
  private List<String> permissions;
  private String previousAccessToken;
  private int requestCode;
  private final transient AuthorizationClient.StartActivityDelegate startActivityDelegate;
  
  AuthorizationClient$AuthorizationRequest(SessionLoginBehavior paramSessionLoginBehavior, int paramInt, boolean paramBoolean, List<String> paramList, SessionDefaultAudience paramSessionDefaultAudience, String paramString1, String paramString2, AuthorizationClient.StartActivityDelegate paramStartActivityDelegate)
  {
    this.loginBehavior = paramSessionLoginBehavior;
    this.requestCode = paramInt;
    this.isLegacy = paramBoolean;
    this.permissions = paramList;
    this.defaultAudience = paramSessionDefaultAudience;
    this.applicationId = paramString1;
    this.previousAccessToken = paramString2;
    this.startActivityDelegate = paramStartActivityDelegate;
  }
  
  String getApplicationId()
  {
    return this.applicationId;
  }
  
  SessionDefaultAudience getDefaultAudience()
  {
    return this.defaultAudience;
  }
  
  SessionLoginBehavior getLoginBehavior()
  {
    return this.loginBehavior;
  }
  
  List<String> getPermissions()
  {
    return this.permissions;
  }
  
  String getPreviousAccessToken()
  {
    return this.previousAccessToken;
  }
  
  int getRequestCode()
  {
    return this.requestCode;
  }
  
  AuthorizationClient.StartActivityDelegate getStartActivityDelegate()
  {
    return this.startActivityDelegate;
  }
  
  boolean isLegacy()
  {
    return this.isLegacy;
  }
  
  boolean needsNewTokenValidation()
  {
    return (this.previousAccessToken != null) && (!this.isLegacy);
  }
  
  void setIsLegacy(boolean paramBoolean)
  {
    this.isLegacy = paramBoolean;
  }
  
  void setPermissions(List<String> paramList)
  {
    this.permissions = paramList;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.AuthorizationClient.AuthorizationRequest
 * JD-Core Version:    0.7.0.1
 */