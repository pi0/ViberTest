package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class CFullIPAddress$1
  implements Parcelable.Creator<CFullIPAddress>
{
  public CFullIPAddress createFromParcel(Parcel paramParcel)
  {
    return new CFullIPAddress(paramParcel);
  }
  
  public CFullIPAddress[] newArray(int paramInt)
  {
    return new CFullIPAddress[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.CFullIPAddress.1
 * JD-Core Version:    0.7.0.1
 */