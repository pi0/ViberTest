package com.viber.voip.messages.conversation;

import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ConversationLoaderPublicGroupEntity
  extends ConversationLoaderEntity
  implements Parcelable
{
  public static final Parcelable.Creator<ConversationLoaderPublicGroupEntity> CREATOR = new q();
  public static final String[] c;
  public static final int d = ConversationLoaderEntity.a.length;
  public static final int e = 1 + ConversationLoaderEntity.a.length;
  public static final int f = 1 + e;
  public static final int g = 1 + f;
  public static final int h = 1 + g;
  public static final int i = 1 + h;
  public static final int j = 1 + i;
  public static final int k = 1 + j;
  public static final int l = 1 + k;
  private int m;
  private String n;
  private int o;
  private int p;
  private String q;
  private boolean r;
  private int s;
  private int t;
  private String u;
  private String v;
  
  static
  {
    c = new String[10 + ConversationLoaderEntity.a.length];
    c[d] = "group_conversations_extras.group_role";
    c[e] = "group_conversations_extras.icon_id";
    c[f] = "group_conversations_extras.watchers_count";
    c[g] = "local_message_id";
    c[h] = "verified";
    c[i] = "SUM(CASE WHEN participants.active=0 THEN 1 ELSE 0 END)";
    c[j] = "last_media_type";
    c[k] = "last_msg_text";
    c[l] = "sender_phone";
    System.arraycopy(ConversationLoaderEntity.a, 0, c, 0, ConversationLoaderEntity.a.length);
  }
  
  public ConversationLoaderPublicGroupEntity(Cursor paramCursor)
  {
    super(paramCursor);
    a(this, paramCursor);
  }
  
  public ConversationLoaderPublicGroupEntity(Cursor paramCursor, boolean paramBoolean)
  {
    super(paramCursor, paramBoolean);
    a(this, paramCursor);
  }
  
  public ConversationLoaderPublicGroupEntity(Parcel paramParcel)
  {
    super(paramParcel);
    this.m = paramParcel.readInt();
    this.n = paramParcel.readString();
    this.o = paramParcel.readInt();
    this.p = paramParcel.readInt();
    if (paramParcel.readByte() == i1) {}
    for (;;)
    {
      this.r = i1;
      this.s = paramParcel.readInt();
      this.t = paramParcel.readInt();
      this.u = paramParcel.readString();
      this.v = paramParcel.readString();
      return;
      i1 = 0;
    }
  }
  
  public ConversationLoaderPublicGroupEntity(String paramString1, long paramLong, int paramInt1, int paramInt2, String paramString2, String paramString3)
  {
    super(paramString1, paramLong, 2);
    this.o = paramInt1;
    this.m = paramInt2;
    this.p = 0;
    this.n = paramString2;
    this.q = paramString3;
  }
  
  public int B()
  {
    return this.m;
  }
  
  public String C()
  {
    return this.n;
  }
  
  public int D()
  {
    return this.o;
  }
  
  public String E()
  {
    return this.q;
  }
  
  public boolean F()
  {
    return this.r;
  }
  
  public int G()
  {
    return this.s;
  }
  
  public int H()
  {
    return this.t;
  }
  
  public String I()
  {
    return this.u;
  }
  
  public String J()
  {
    return this.v;
  }
  
  public void a(ConversationLoaderPublicGroupEntity paramConversationLoaderPublicGroupEntity, Cursor paramCursor)
  {
    int i1 = 1;
    paramConversationLoaderPublicGroupEntity.m = paramCursor.getInt(d);
    paramConversationLoaderPublicGroupEntity.n = paramCursor.getString(e);
    paramConversationLoaderPublicGroupEntity.o = paramCursor.getInt(f);
    paramConversationLoaderPublicGroupEntity.p = paramCursor.getInt(g);
    if (paramCursor.getInt(h) == i1) {}
    for (;;)
    {
      paramConversationLoaderPublicGroupEntity.r = i1;
      paramConversationLoaderPublicGroupEntity.s = paramCursor.getInt(i);
      paramConversationLoaderPublicGroupEntity.t = paramCursor.getInt(j);
      paramConversationLoaderPublicGroupEntity.u = paramCursor.getString(k);
      paramConversationLoaderPublicGroupEntity.v = paramCursor.getString(l);
      return;
      i1 = 0;
    }
  }
  
  public String toString()
  {
    return super.toString() + "; ConversationLoaderPublicGroupEntity{" + "groupRole=" + this.m + ", iconId='" + this.n + '\'' + ", watchersCount=" + this.o + ", publicGroupLastMessageId=" + this.p + ", verified=" + this.r + ", participantsCount=" + this.s + ", lastMediaType=" + this.t + ", lastMsgText=" + this.u + ", senderPhone=" + this.v + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.m);
    paramParcel.writeString(this.n);
    paramParcel.writeInt(this.o);
    paramParcel.writeInt(this.p);
    if (this.r) {}
    for (int i1 = 1;; i1 = 0)
    {
      paramParcel.writeByte((byte)i1);
      paramParcel.writeInt(this.s);
      paramParcel.writeInt(this.t);
      paramParcel.writeString(this.u);
      paramParcel.writeString(this.v);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity
 * JD-Core Version:    0.7.0.1
 */