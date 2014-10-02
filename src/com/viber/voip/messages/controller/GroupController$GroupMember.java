package com.viber.voip.messages.controller;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.viber.jni.GroupUserInfo;

public class GroupController$GroupMember
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new b();
  public GroupUserInfo a;
  public long b;
  public Uri c;
  public int d;
  
  public GroupController$GroupMember() {}
  
  public GroupController$GroupMember(Parcel paramParcel)
  {
    this.a = ((GroupUserInfo)paramParcel.readParcelable(GroupUserInfo.class.getClassLoader()));
    this.b = paramParcel.readLong();
    this.c = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
    this.d = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeLong(this.b);
    paramParcel.writeParcelable(this.c, paramInt);
    paramParcel.writeInt(this.d);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.GroupController.GroupMember
 * JD-Core Version:    0.7.0.1
 */