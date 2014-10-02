package com.viber.voip.messages.conversation.publicgroup;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.viber.jni.PublicGroupInfo;
import com.viber.voip.messages.adapters.a.b;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.util.hv;

public class PublicGroupConversationData
  extends ConversationData
{
  public static final Parcelable.Creator<ConversationData> CREATOR = new ac();
  public final int a;
  public final Uri b;
  public final int c;
  public final String d;
  public PublicGroupInfo e;
  public long f = 0L;
  public String g = "";
  
  public PublicGroupConversationData(long paramLong, String paramString1, Uri paramUri, String paramString2, int paramInt1, int paramInt2)
  {
    this(paramLong, paramString1, paramUri, paramString2, paramInt1, paramInt2, 0L, "");
  }
  
  public PublicGroupConversationData(long paramLong1, String paramString1, Uri paramUri, String paramString2, int paramInt1, int paramInt2, long paramLong2, String paramString3)
  {
    super(-1L, paramLong1, "", 3, -1L, -1L, "", paramString1);
    this.b = paramUri;
    this.a = paramInt2;
    this.c = paramInt1;
    this.d = paramString2;
    this.f = paramLong2;
    this.g = paramString3;
  }
  
  protected PublicGroupConversationData(Parcel paramParcel)
  {
    super(paramParcel);
    this.e = ((PublicGroupInfo)paramParcel.readParcelable(PublicGroupInfo.class.getClassLoader()));
    this.a = paramParcel.readInt();
    this.b = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
    this.c = paramParcel.readInt();
    this.d = paramParcel.readString();
    this.f = paramParcel.readLong();
    this.g = paramParcel.readString();
  }
  
  public PublicGroupConversationData(PublicGroupInfo paramPublicGroupInfo)
  {
    super(-1L, paramPublicGroupInfo.groupID, "", 3, -1L, -1L, "", paramPublicGroupInfo.groupName);
    this.e = paramPublicGroupInfo;
    this.a = paramPublicGroupInfo.watchersCount;
    this.b = hv.b(paramPublicGroupInfo.iconId);
    this.c = paramPublicGroupInfo.revision;
    this.d = paramPublicGroupInfo.groupUri;
  }
  
  public PublicGroupConversationData(b paramb)
  {
    super(paramb);
    this.a = paramb.E();
    this.b = paramb.F();
    this.c = 0;
    this.d = paramb.G();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(this.e, 0);
    paramParcel.writeInt(this.a);
    paramParcel.writeParcelable(this.b, 0);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeLong(this.f);
    paramParcel.writeString(this.g);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationData
 * JD-Core Version:    0.7.0.1
 */