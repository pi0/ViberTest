package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PublicGroupUserInfo
  extends GroupUserInfo
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new PublicGroupUserInfo.1();
  public static final String TAG = PublicGroupUserInfo.class.getSimpleName();
  public final String encryptedPhoneNumber;
  public final int groupRole;
  
  public PublicGroupUserInfo(Parcel paramParcel)
  {
    super(paramParcel);
    this.groupRole = paramParcel.readInt();
    this.encryptedPhoneNumber = paramParcel.readString();
  }
  
  public PublicGroupUserInfo(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    super(paramString1, paramString3, paramString4);
    this.groupRole = paramInt;
    this.encryptedPhoneNumber = paramString2;
  }
  
  public String toString()
  {
    return TAG + "phoneNumber='" + this.phoneNumber + '\'' + ", encryptedPhoneNumber='" + this.encryptedPhoneNumber + '\'' + ", clientName='" + this.clientName + '\'' + ", downloadId='" + this.downloadID + '\'' + ", groupRole='" + this.groupRole + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.groupRole);
    paramParcel.writeString(this.encryptedPhoneNumber);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PublicGroupUserInfo
 * JD-Core Version:    0.7.0.1
 */