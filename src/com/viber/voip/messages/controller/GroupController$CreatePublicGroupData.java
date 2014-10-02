package com.viber.voip.messages.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.viber.jni.LocationInfo;
import com.viber.jni.PublicGroupInfo;

public class GroupController$CreatePublicGroupData
  extends PublicGroupInfo
{
  public static final Parcelable.Creator<CreatePublicGroupData> CREATOR = new a();
  public String a;
  public long b;
  public long c;
  public String[] d;
  
  public GroupController$CreatePublicGroupData(long paramLong1, String paramString1, int paramInt1, String paramString2, String paramString3, String paramString4, LocationInfo paramLocationInfo, String paramString5, int paramInt2, String paramString6, String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString7, long paramLong2, long paramLong3)
  {
    super(1, paramLong1, paramString1, paramInt1, paramString2, paramString3, paramString4, paramLocationInfo, paramString5, paramInt2, paramString6, paramArrayOfString1, null, 0, 0, 0);
    this.a = paramString7;
    this.b = paramLong2;
    this.c = paramLong3;
    this.d = paramArrayOfString2;
  }
  
  public GroupController$CreatePublicGroupData(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readString();
    this.b = paramParcel.readLong();
    this.c = paramParcel.readLong();
    paramParcel.readStringArray(this.d);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "CreatePublicGroupData{" + super.toString() + ", addressString='" + this.a + '\'' + ", backgroundObj=" + this.c + ", iconId='" + this.iconId + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.a);
    paramParcel.writeLong(this.b);
    paramParcel.writeLong(this.c);
    paramParcel.writeStringArray(this.d);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.GroupController.CreatePublicGroupData
 * JD-Core Version:    0.7.0.1
 */