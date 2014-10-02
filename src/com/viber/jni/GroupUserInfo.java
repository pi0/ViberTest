package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.viber.voip.ViberApplication;

public class GroupUserInfo
  implements Parcelable
{
  public static final Parcelable.Creator<GroupUserInfo> CREATOR = new GroupUserInfo.1();
  public static final String TAG = GroupUserInfo.class.getSimpleName();
  public final String clientName;
  public final String downloadID;
  public final String phoneNumber;
  
  public GroupUserInfo(Parcel paramParcel)
  {
    this.phoneNumber = paramParcel.readString();
    this.clientName = paramParcel.readString();
    this.downloadID = paramParcel.readString();
  }
  
  public GroupUserInfo(String paramString1, String paramString2, String paramString3)
  {
    log("GroupUserInfo ctor phoneNumber:" + paramString1 + " clientName:" + paramString2 + " downloadID:" + paramString3);
    this.phoneNumber = paramString1;
    this.clientName = paramString2;
    this.downloadID = paramString3;
  }
  
  private void log(String paramString)
  {
    ViberApplication.log(3, TAG, paramString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "GroupUserInfo{phoneNumber='" + this.phoneNumber + '\'' + ", clientName='" + this.clientName + '\'' + ", downloadID='" + this.downloadID + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.phoneNumber);
    paramParcel.writeString(this.clientName);
    paramParcel.writeString(this.downloadID);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.GroupUserInfo
 * JD-Core Version:    0.7.0.1
 */