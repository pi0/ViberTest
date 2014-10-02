package com.facebook;

public enum AccessTokenSource
{
  private final boolean canExtendToken;
  
  static
  {
    FACEBOOK_APPLICATION_WEB = new AccessTokenSource("FACEBOOK_APPLICATION_WEB", 1, true);
    FACEBOOK_APPLICATION_NATIVE = new AccessTokenSource("FACEBOOK_APPLICATION_NATIVE", 2, true);
    FACEBOOK_APPLICATION_SERVICE = new AccessTokenSource("FACEBOOK_APPLICATION_SERVICE", 3, true);
    WEB_VIEW = new AccessTokenSource("WEB_VIEW", 4, false);
    TEST_USER = new AccessTokenSource("TEST_USER", 5, true);
    AccessTokenSource[] arrayOfAccessTokenSource = new AccessTokenSource[6];
    arrayOfAccessTokenSource[0] = NONE;
    arrayOfAccessTokenSource[1] = FACEBOOK_APPLICATION_WEB;
    arrayOfAccessTokenSource[2] = FACEBOOK_APPLICATION_NATIVE;
    arrayOfAccessTokenSource[3] = FACEBOOK_APPLICATION_SERVICE;
    arrayOfAccessTokenSource[4] = WEB_VIEW;
    arrayOfAccessTokenSource[5] = TEST_USER;
    $VALUES = arrayOfAccessTokenSource;
  }
  
  private AccessTokenSource(boolean paramBoolean)
  {
    this.canExtendToken = paramBoolean;
  }
  
  boolean canExtendToken()
  {
    return this.canExtendToken;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.AccessTokenSource
 * JD-Core Version:    0.7.0.1
 */