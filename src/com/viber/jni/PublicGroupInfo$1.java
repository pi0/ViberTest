package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class PublicGroupInfo$1
  implements Parcelable.Creator<PublicGroupInfo>
{
  public PublicGroupInfo createFromParcel(Parcel paramParcel)
  {
    return new PublicGroupInfo(paramParcel);
  }
  
  public PublicGroupInfo[] newArray(int paramInt)
  {
    return new PublicGroupInfo[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PublicGroupInfo.1
 * JD-Core Version:    0.7.0.1
 */