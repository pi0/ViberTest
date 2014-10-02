package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CMissedCall
  implements Parcelable
{
  public static final Parcelable.Creator<CMissedCall> CREATOR = new CMissedCall.1();
  private final long callToken;
  private final long calledAt;
  private final int flags;
  private final String phoneNumber;
  
  public CMissedCall(Parcel paramParcel)
  {
    this.phoneNumber = paramParcel.readString();
    this.calledAt = paramParcel.readLong();
    this.callToken = paramParcel.readLong();
    this.flags = paramParcel.readInt();
  }
  
  public CMissedCall(String paramString, long paramLong1, long paramLong2, int paramInt)
  {
    this.phoneNumber = paramString;
    this.calledAt = paramLong1;
    this.callToken = paramLong2;
    this.flags = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getCalledAt()
  {
    return this.calledAt;
  }
  
  public int getFlags()
  {
    return this.flags;
  }
  
  public String getPhoneNumber()
  {
    return this.phoneNumber;
  }
  
  public long getToken()
  {
    return this.callToken;
  }
  
  public String toString()
  {
    return "CMissedCall [phoneNumber=" + this.phoneNumber + ", calledAt=" + this.calledAt + ", callToken=" + this.callToken + " flags=" + this.flags + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.phoneNumber);
    paramParcel.writeLong(this.calledAt);
    paramParcel.writeLong(this.callToken);
    paramParcel.writeInt(this.flags);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.CMissedCall
 * JD-Core Version:    0.7.0.1
 */