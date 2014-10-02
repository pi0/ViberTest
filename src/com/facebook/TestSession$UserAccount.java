package com.facebook;

import com.facebook.model.GraphObject;

abstract interface TestSession$UserAccount
  extends GraphObject
{
  public abstract String getName();
  
  public abstract String getUid();
  
  public abstract void setName(String paramString);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.TestSession.UserAccount
 * JD-Core Version:    0.7.0.1
 */