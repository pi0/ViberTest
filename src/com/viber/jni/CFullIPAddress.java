package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CFullIPAddress
  implements Parcelable
{
  public static final Parcelable.Creator<CFullIPAddress> CREATOR = new CFullIPAddress.1();
  private final String ipAdress;
  
  public CFullIPAddress(Parcel paramParcel)
  {
    this.ipAdress = paramParcel.readString();
  }
  
  public CFullIPAddress(String paramString)
  {
    this.ipAdress = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getIpAdress()
  {
    return this.ipAdress;
  }
  
  public String toString()
  {
    return "CFullIPAddress [ipAdress=" + this.ipAdress + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.ipAdress);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.CFullIPAddress
 * JD-Core Version:    0.7.0.1
 */