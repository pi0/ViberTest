package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class GroupUserInfo$1
  implements Parcelable.Creator
{
  public GroupUserInfo createFromParcel(Parcel paramParcel)
  {
    return new GroupUserInfo(paramParcel);
  }
  
  public GroupUserInfo[] newArray(int paramInt)
  {
    return new GroupUserInfo[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.GroupUserInfo.1
 * JD-Core Version:    0.7.0.1
 */