package com.viber.dexshared;

import java.io.File;

public abstract interface TwitterHelper
{
  public abstract String[] getOAuthAccessTokenTask(String paramString);
  
  public abstract String getTwitterAuthorizationURL(String paramString);
  
  public abstract void init(String paramString1, String paramString2);
  
  public abstract boolean isAccessTokenExists(String paramString1, String paramString2);
  
  public abstract void resetTwitterOAuthAccessToken();
  
  public abstract void setTwitterAccessToken(String paramString1, String paramString2);
  
  public abstract String updateTwitterStatus(String paramString);
  
  public abstract String uploadImage(File paramFile, String paramString);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.dexshared.TwitterHelper
 * JD-Core Version:    0.7.0.1
 */