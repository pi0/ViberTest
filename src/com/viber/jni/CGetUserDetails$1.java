package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class CGetUserDetails$1
  implements Parcelable.Creator<CGetUserDetails>
{
  public CGetUserDetails createFromParcel(Parcel paramParcel)
  {
    return new CGetUserDetails(paramParcel);
  }
  
  public CGetUserDetails[] newArray(int paramInt)
  {
    return new CGetUserDetails[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.CGetUserDetails.1
 * JD-Core Version:    0.7.0.1
 */