package com.viber.voip.market;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity;

public class MarketApi$UserPublicGroupInfo
  implements Parcelable
{
  public static final Parcelable.Creator<UserPublicGroupInfo> CREATOR = new x();
  public final long a;
  public final int b;
  public final String c;
  
  private MarketApi$UserPublicGroupInfo(Parcel paramParcel)
  {
    this.a = paramParcel.readLong();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readString();
  }
  
  public MarketApi$UserPublicGroupInfo(ConversationLoaderPublicGroupEntity paramConversationLoaderPublicGroupEntity)
  {
    this.a = paramConversationLoaderPublicGroupEntity.o();
    this.b = paramConversationLoaderPublicGroupEntity.B();
    this.c = paramConversationLoaderPublicGroupEntity.d();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "UserPublicGroupInfo{groupId=" + this.a + ", role=" + this.b + ", name=" + this.c + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeString(this.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.MarketApi.UserPublicGroupInfo
 * JD-Core Version:    0.7.0.1
 */