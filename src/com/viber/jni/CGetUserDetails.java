package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CGetUserDetails
  implements Parcelable
{
  public static final Parcelable.Creator<CGetUserDetails> CREATOR = new CGetUserDetails.1();
  public static final String TAG = CGetUserDetails.class.getSimpleName();
  public final String DownloadID;
  public final String Name;
  public final String OriginalPhoneNumber;
  public final int Status;
  
  public CGetUserDetails(Parcel paramParcel)
  {
    this.OriginalPhoneNumber = paramParcel.readString();
    this.DownloadID = paramParcel.readString();
    this.Name = paramParcel.readString();
    this.Status = paramParcel.readInt();
  }
  
  public CGetUserDetails(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this.OriginalPhoneNumber = paramString1;
    this.DownloadID = paramString2;
    this.Name = paramString3;
    this.Status = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "CGetUserDetails : [OriginalPhoneNumber:" + this.OriginalPhoneNumber + "; DownloadID:" + this.DownloadID + "; Name:" + this.Name + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.OriginalPhoneNumber);
    paramParcel.writeString(this.DownloadID);
    paramParcel.writeString(this.Name);
    paramParcel.writeInt(this.Status);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.CGetUserDetails
 * JD-Core Version:    0.7.0.1
 */