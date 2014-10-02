package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class OnlineContactInfo
  implements Parcelable
{
  public static final Parcelable.Creator<OnlineContactInfo> CREATOR = new OnlineContactInfo.1();
  public String contactPhone = "";
  public boolean isOnLine = false;
  public long time = 0L;
  
  public OnlineContactInfo(Parcel paramParcel)
  {
    this.contactPhone = paramParcel.readString();
    if (paramParcel.readInt() == i) {}
    for (;;)
    {
      this.isOnLine = i;
      this.time = paramParcel.readLong();
      return;
      i = 0;
    }
  }
  
  public OnlineContactInfo(String paramString, boolean paramBoolean, long paramLong)
  {
    this.contactPhone = paramString;
    this.isOnLine = paramBoolean;
    this.time = paramLong;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "OnlineContactInfo contactPhone:" + this.contactPhone + " isOnLine:" + this.isOnLine + " time:" + this.time;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.contactPhone);
    if (this.isOnLine) {}
    for (int i = 1;; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeLong(this.time);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.OnlineContactInfo
 * JD-Core Version:    0.7.0.1
 */