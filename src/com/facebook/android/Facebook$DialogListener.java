package com.facebook.android;

import android.os.Bundle;

public abstract interface Facebook$DialogListener
{
  public abstract void onCancel();
  
  public abstract void onComplete(Bundle paramBundle);
  
  public abstract void onError(DialogError paramDialogError);
  
  public abstract void onFacebookError(FacebookError paramFacebookError);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.android.Facebook.DialogListener
 * JD-Core Version:    0.7.0.1
 */