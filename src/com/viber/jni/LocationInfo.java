package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LocationInfo
  implements Parcelable
{
  public static final Parcelable.Creator<LocationInfo> CREATOR = new LocationInfo.1();
  public static final String TAG = LocationInfo.class.getSimpleName();
  private final int latitude;
  private final int longitude;
  
  public LocationInfo(int paramInt1, int paramInt2)
  {
    this.latitude = paramInt1;
    this.longitude = paramInt2;
  }
  
  public LocationInfo(Parcel paramParcel)
  {
    this.latitude = paramParcel.readInt();
    this.longitude = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public double getLatitude()
  {
    return this.latitude / 10000000.0D;
  }
  
  public double getLongitude()
  {
    return this.longitude / 10000000.0D;
  }
  
  public int getNativeLatitude()
  {
    return this.latitude;
  }
  
  public int getNativeLongitude()
  {
    return this.longitude;
  }
  
  public double lat()
  {
    return getLatitude();
  }
  
  public double lng()
  {
    return getLongitude();
  }
  
  public String toString()
  {
    return TAG + " [lat:" + lat() + "; lng:" + lng() + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.latitude);
    paramParcel.writeInt(this.longitude);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.LocationInfo
 * JD-Core Version:    0.7.0.1
 */