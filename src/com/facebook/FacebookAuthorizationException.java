package com.facebook;

public class FacebookAuthorizationException
  extends FacebookException
{
  static final long serialVersionUID = 1L;
  
  public FacebookAuthorizationException() {}
  
  public FacebookAuthorizationException(String paramString)
  {
    super(paramString);
  }
  
  public FacebookAuthorizationException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public FacebookAuthorizationException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.FacebookAuthorizationException
 * JD-Core Version:    0.7.0.1
 */