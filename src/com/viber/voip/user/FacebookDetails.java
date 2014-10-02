package com.viber.voip.user;

import android.graphics.Bitmap;

final class FacebookDetails
{
  private final String userName;
  private final Bitmap userPhoto;
  
  public FacebookDetails(String paramString, Bitmap paramBitmap)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("userName must be not null");
    }
    if (paramBitmap == null) {
      throw new IllegalArgumentException("userPhoto must be not null");
    }
    this.userName = paramString;
    this.userPhoto = paramBitmap;
  }
  
  public String getUserName()
  {
    return this.userName;
  }
  
  public Bitmap getUserPhoto()
  {
    return this.userPhoto;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.FacebookDetails
 * JD-Core Version:    0.7.0.1
 */