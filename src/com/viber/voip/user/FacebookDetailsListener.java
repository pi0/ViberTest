package com.viber.voip.user;

abstract interface FacebookDetailsListener
{
  public abstract void onLoaded(FacebookDetails paramFacebookDetails);
  
  public abstract void onLoadingCanceled();
  
  public abstract void onLoadingError(String paramString);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.FacebookDetailsListener
 * JD-Core Version:    0.7.0.1
 */