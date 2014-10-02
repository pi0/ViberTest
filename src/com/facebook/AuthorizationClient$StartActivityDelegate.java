package com.facebook;

import android.app.Activity;
import android.content.Intent;

abstract interface AuthorizationClient$StartActivityDelegate
{
  public abstract Activity getActivityContext();
  
  public abstract void startActivityForResult(Intent paramIntent, int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.AuthorizationClient.StartActivityDelegate
 * JD-Core Version:    0.7.0.1
 */