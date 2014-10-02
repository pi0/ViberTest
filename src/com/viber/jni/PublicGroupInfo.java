package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.viber.voip.ViberApplication;
import java.util.Arrays;

public class PublicGroupInfo
  implements Parcelable
{
  public static final Parcelable.Creator<PublicGroupInfo> CREATOR = new PublicGroupInfo.1();
  public static final String TAG = PublicGroupInfo.class.getSimpleName();
  public final String backgroundId;
  public final String countryCode;
  public final int flags;
  public final long groupID;
  public final String groupName;
  public final int groupRole;
  public final String groupUri;
  public final String iconId;
  public final int lastMessageId;
  public final LocationInfo location;
  public final PublicGroupUserInfo[] members;
  public final int publicGroupType;
  public int revision;
  public final String tagLine;
  public final String[] tags;
  public final int watchersCount;
  
  public PublicGroupInfo(int paramInt1, long paramLong, String paramString1, int paramInt2, String paramString2, String paramString3, String paramString4, LocationInfo paramLocationInfo, String paramString5, int paramInt3, String paramString6, String[] paramArrayOfString, PublicGroupUserInfo[] paramArrayOfPublicGroupUserInfo, int paramInt4, int paramInt5, int paramInt6)
  {
    ViberApplication.log(3, "PublicGroupInfo", "init");
    this.publicGroupType = paramInt1;
    this.groupID = paramLong;
    this.groupName = paramString1;
    this.revision = paramInt2;
    this.groupUri = paramString2;
    this.iconId = paramString3;
    this.backgroundId = paramString4;
    this.location = paramLocationInfo;
    this.countryCode = paramString5;
    this.groupRole = paramInt3;
    this.tagLine = paramString6;
    this.tags = paramArrayOfString;
    this.members = paramArrayOfPublicGroupUserInfo;
    this.lastMessageId = paramInt4;
    this.flags = paramInt5;
    this.watchersCount = paramInt6;
  }
  
  protected PublicGroupInfo(Parcel paramParcel)
  {
    this.groupUri = paramParcel.readString();
    this.location = ((LocationInfo)paramParcel.readParcelable(LocationInfo.class.getClassLoader()));
    this.countryCode = paramParcel.readString();
    this.groupName = paramParcel.readString();
    this.tags = paramParcel.createStringArray();
    this.tagLine = paramParcel.readString();
    this.revision = paramParcel.readInt();
    this.iconId = paramParcel.readString();
    this.backgroundId = paramParcel.readString();
    this.publicGroupType = paramParcel.readInt();
    this.groupID = paramParcel.readLong();
    this.groupRole = paramParcel.readInt();
    this.members = ((PublicGroupUserInfo[])paramParcel.createTypedArray(PublicGroupUserInfo.CREATOR));
    this.lastMessageId = paramParcel.readInt();
    this.flags = paramParcel.readInt();
    this.watchersCount = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "PublicGroupInfo [publicGroupType=" + this.publicGroupType + ", groupID=" + this.groupID + ", groupName=" + this.groupName + ", revision=" + this.revision + ", groupUri=" + this.groupUri + ", iconId=" + this.iconId + ", backgroundId=" + this.backgroundId + ", location=" + this.location + ", countryCode=" + this.countryCode + ", groupRole=" + this.groupRole + ", tagLine=" + this.tagLine + ", tags=" + Arrays.toString(this.tags) + ", members=" + Arrays.toString(this.members) + ", lastMessageId=" + this.lastMessageId + ", flags=" + this.flags + ", watchersCount=" + this.watchersCount + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.groupUri);
    paramParcel.writeParcelable(this.location, paramInt);
    paramParcel.writeString(this.countryCode);
    paramParcel.writeString(this.groupName);
    paramParcel.writeStringArray(this.tags);
    paramParcel.writeString(this.tagLine);
    paramParcel.writeInt(this.revision);
    paramParcel.writeString(this.iconId);
    paramParcel.writeString(this.backgroundId);
    paramParcel.writeInt(this.publicGroupType);
    paramParcel.writeLong(this.groupID);
    paramParcel.writeInt(this.groupRole);
    paramParcel.writeTypedArray(this.members, 0);
    paramParcel.writeInt(this.lastMessageId);
    paramParcel.writeInt(this.flags);
    paramParcel.writeInt(this.watchersCount);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PublicGroupInfo
 * JD-Core Version:    0.7.0.1
 */