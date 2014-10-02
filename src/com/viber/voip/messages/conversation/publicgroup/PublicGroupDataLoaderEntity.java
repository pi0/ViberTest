package com.viber.voip.messages.conversation.publicgroup;

import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;

public class PublicGroupDataLoaderEntity
  extends ConversationLoaderPublicGroupEntity
  implements Parcelable
{
  public static final Parcelable.Creator<PublicGroupDataLoaderEntity> CREATOR = new at();
  public static final String[] m;
  public static final int n = ConversationLoaderPublicGroupEntity.c.length;
  public static final int o = 1 + ConversationLoaderPublicGroupEntity.c.length;
  public static final int p = 2 + ConversationLoaderPublicGroupEntity.c.length;
  public static final int q = 3 + ConversationLoaderPublicGroupEntity.c.length;
  public static final int r = 4 + ConversationLoaderPublicGroupEntity.c.length;
  public static final int s = 5 + ConversationLoaderPublicGroupEntity.c.length;
  public static final int t = 6 + ConversationLoaderPublicGroupEntity.c.length;
  public static final int u = 7 + ConversationLoaderPublicGroupEntity.c.length;
  public static final int v = 8 + ConversationLoaderPublicGroupEntity.c.length;
  public static final int w = 9 + ConversationLoaderPublicGroupEntity.c.length;
  private int A;
  private int B;
  private String C;
  private String D;
  private int E;
  private boolean F;
  private String G;
  private String x;
  private String y;
  private String z;
  
  static
  {
    m = new String[10 + ConversationLoaderPublicGroupEntity.c.length];
    m[n] = "group_conversations_extras.group_uri";
    m[o] = "group_conversations_extras.tag_line";
    m[p] = "group_conversations_extras.tags";
    m[q] = "group_conversations_extras.location_lat";
    m[r] = "group_conversations_extras.location_lng";
    m[s] = "group_conversations_extras.country";
    m[t] = "group_conversations_extras.location_address";
    m[u] = "group_conversations_extras.revision";
    m[v] = "group_conversations_extras.verified";
    m[w] = "conversations.background_portrait";
    System.arraycopy(ConversationLoaderPublicGroupEntity.c, 0, m, 0, ConversationLoaderPublicGroupEntity.c.length);
  }
  
  public PublicGroupDataLoaderEntity(Cursor paramCursor)
  {
    super(paramCursor);
    a(this, paramCursor);
  }
  
  public PublicGroupDataLoaderEntity(Parcel paramParcel)
  {
    super(paramParcel);
    this.x = paramParcel.readString();
    this.y = paramParcel.readString();
    this.z = paramParcel.readString();
    this.A = paramParcel.readInt();
    this.B = paramParcel.readInt();
    this.C = paramParcel.readString();
    this.D = paramParcel.readString();
    this.E = paramParcel.readInt();
    if (paramParcel.readInt() == i) {}
    for (;;)
    {
      this.F = i;
      return;
      i = 0;
    }
  }
  
  public boolean F()
  {
    return this.F;
  }
  
  public String K()
  {
    return this.x;
  }
  
  public String L()
  {
    return this.y;
  }
  
  public String[] M()
  {
    return PublicGroupConversationEntityImpl.toTagsArray(this.z);
  }
  
  public int N()
  {
    return this.A;
  }
  
  public int O()
  {
    return this.B;
  }
  
  public String P()
  {
    return this.C;
  }
  
  public int Q()
  {
    return this.E;
  }
  
  public String R()
  {
    return this.D;
  }
  
  public String S()
  {
    return this.G;
  }
  
  public void a(PublicGroupDataLoaderEntity paramPublicGroupDataLoaderEntity, Cursor paramCursor)
  {
    int i = 1;
    paramPublicGroupDataLoaderEntity.x = paramCursor.getString(n);
    paramPublicGroupDataLoaderEntity.y = paramCursor.getString(o);
    paramPublicGroupDataLoaderEntity.z = paramCursor.getString(p);
    paramPublicGroupDataLoaderEntity.A = paramCursor.getInt(q);
    paramPublicGroupDataLoaderEntity.B = paramCursor.getInt(r);
    paramPublicGroupDataLoaderEntity.C = paramCursor.getString(s);
    paramPublicGroupDataLoaderEntity.D = paramCursor.getString(t);
    paramPublicGroupDataLoaderEntity.E = paramCursor.getInt(u);
    if (paramCursor.getInt(v) == i) {}
    for (;;)
    {
      paramPublicGroupDataLoaderEntity.F = i;
      paramPublicGroupDataLoaderEntity.G = paramCursor.getString(w);
      return;
      i = 0;
    }
  }
  
  public String toString()
  {
    return super.toString() + "; ConversationExtraLoaderEntity{" + ", groupUri=" + this.x + ", tagLine=" + this.y + ", tags=" + this.z + ", backgroundUri=" + this.G + ", locationLat=" + this.A + ", locationLng=" + this.B + ", country=" + this.C + ", address=" + this.D + ", revision=" + this.E + ", verified=" + this.F + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.x);
    paramParcel.writeString(this.y);
    paramParcel.writeString(this.z);
    paramParcel.writeInt(this.A);
    paramParcel.writeInt(this.B);
    paramParcel.writeString(this.C);
    paramParcel.writeString(this.D);
    paramParcel.writeInt(this.E);
    if (this.F) {}
    for (int i = 1;; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeString(this.G);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.PublicGroupDataLoaderEntity
 * JD-Core Version:    0.7.0.1
 */