package com.viber.voip.user;

import android.net.Uri;

public abstract interface UserDataFileKeeper$RecoverReply
{
  public abstract void onError();
  
  public abstract void onRecoverReply(String paramString1, String paramString2, Uri paramUri, String paramString3);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.UserDataFileKeeper.RecoverReply
 * JD-Core Version:    0.7.0.1
 */