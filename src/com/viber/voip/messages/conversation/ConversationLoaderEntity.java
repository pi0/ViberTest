package com.viber.voip.messages.conversation;

import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.viber.voip.util.bk;
import com.viber.voip.util.gk;
import java.util.Arrays;

public class ConversationLoaderEntity
  implements Parcelable, Comparable<ConversationLoaderEntity>
{
  public static final Parcelable.Creator<ConversationLoaderEntity> CREATOR = new p();
  public static final String[] a = { "conversations._id", "conversations.conversation_type", "conversations.date", "conversations.flags", "conversations.name", "conversations.recipient_number", "conversations.last_message_id", "conversations.participant_id_1", "conversations.participant_id_2", "conversations.participant_id_3", "conversations.participant_id_4", "conversations.deleted", "conversations.unread_calls_count", "conversations.unread_message_count", "conversations.group_id", "messages.extra_mime", "messages.body", "messages._id", "participants_info._id", "participants_info.contact_name", "participants_info.display_name", "participants_info.participant_type", "participants_info.contact_id", "participants_info.native_contact_id", "participants_info.number", "participants_info.native_photo_id", "conversations.mute_notification", "messages.count" };
  public static final int[] b = { 7, 8, 9, 10 };
  private long c;
  private int d;
  private long e;
  private int f;
  private String g;
  private String h;
  private long i;
  private long[] j = new long[4];
  private int k;
  private int l;
  private int m;
  private long n;
  private String o;
  private String p;
  private long q;
  private int r;
  private String s;
  private String t;
  private int u;
  private long v;
  private long w;
  private long x;
  private String y;
  private int z;
  
  public ConversationLoaderEntity(Cursor paramCursor)
  {
    a(this, paramCursor, false);
  }
  
  public ConversationLoaderEntity(Cursor paramCursor, boolean paramBoolean)
  {
    a(this, paramCursor, paramBoolean);
  }
  
  public ConversationLoaderEntity(Parcel paramParcel)
  {
    this.c = paramParcel.readLong();
    this.d = paramParcel.readInt();
    this.e = paramParcel.readLong();
    this.f = paramParcel.readInt();
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
    this.i = paramParcel.readLong();
    for (int i1 = 0; i1 < this.j.length; i1++) {
      this.j[i1] = paramParcel.readLong();
    }
    this.k = paramParcel.readInt();
    this.l = paramParcel.readInt();
    this.m = paramParcel.readInt();
    this.n = paramParcel.readLong();
    this.o = paramParcel.readString();
    this.p = paramParcel.readString();
    this.q = paramParcel.readLong();
    this.r = paramParcel.readInt();
    this.s = paramParcel.readString();
    this.t = paramParcel.readString();
    this.u = paramParcel.readInt();
    this.v = paramParcel.readLong();
    this.w = paramParcel.readLong();
    this.y = paramParcel.readString();
    this.x = paramParcel.readLong();
    this.z = paramParcel.readInt();
  }
  
  public ConversationLoaderEntity(String paramString, long paramLong, int paramInt)
  {
    this.g = paramString;
    this.n = paramLong;
    this.d = paramInt;
  }
  
  private static void a(long paramLong, ConversationLoaderEntity paramConversationLoaderEntity, Cursor paramCursor)
  {
    int i1 = 0;
    paramConversationLoaderEntity.j[0] = paramLong;
    int i2 = 1;
    while (i1 < b.length)
    {
      long l1 = paramCursor.getLong(b[i1]);
      if ((i2 < paramConversationLoaderEntity.j.length) && (l1 != paramLong))
      {
        paramConversationLoaderEntity.j[i2] = l1;
        i2++;
      }
      i1++;
    }
  }
  
  public static void a(ConversationLoaderEntity paramConversationLoaderEntity, Cursor paramCursor, boolean paramBoolean)
  {
    paramConversationLoaderEntity.c = paramCursor.getLong(0);
    paramConversationLoaderEntity.d = paramCursor.getInt(1);
    if ((paramBoolean) && (paramCursor.getColumnIndex("max_message_date") != -1)) {}
    for (paramConversationLoaderEntity.e = paramCursor.getLong(paramCursor.getColumnIndex("max_message_date"));; paramConversationLoaderEntity.e = paramCursor.getLong(2))
    {
      paramConversationLoaderEntity.f = paramCursor.getInt(3);
      paramConversationLoaderEntity.g = paramCursor.getString(4);
      paramConversationLoaderEntity.h = paramCursor.getString(5);
      paramConversationLoaderEntity.i = paramCursor.getLong(6);
      a(paramCursor.getLong(18), paramConversationLoaderEntity, paramCursor);
      paramConversationLoaderEntity.k = paramCursor.getInt(11);
      paramConversationLoaderEntity.m = paramCursor.getInt(12);
      paramConversationLoaderEntity.l = paramCursor.getInt(13);
      paramConversationLoaderEntity.n = paramCursor.getLong(14);
      paramConversationLoaderEntity.o = paramCursor.getString(15);
      paramConversationLoaderEntity.p = paramCursor.getString(16);
      paramConversationLoaderEntity.q = paramCursor.getLong(17);
      paramConversationLoaderEntity.r = paramCursor.getInt(27);
      paramConversationLoaderEntity.s = paramCursor.getString(19);
      paramConversationLoaderEntity.t = paramCursor.getString(20);
      paramConversationLoaderEntity.u = paramCursor.getInt(21);
      paramConversationLoaderEntity.v = paramCursor.getLong(22);
      paramConversationLoaderEntity.w = paramCursor.getLong(23);
      paramConversationLoaderEntity.y = paramCursor.getString(24);
      paramConversationLoaderEntity.x = paramCursor.getLong(25);
      paramConversationLoaderEntity.z = paramCursor.getInt(26);
      return;
    }
  }
  
  public boolean A()
  {
    return this.z == 1;
  }
  
  public int a(ConversationLoaderEntity paramConversationLoaderEntity)
  {
    if (paramConversationLoaderEntity.e > this.e) {}
    do
    {
      return 1;
      if (paramConversationLoaderEntity.e < this.e) {
        return -1;
      }
    } while (paramConversationLoaderEntity.c > this.c);
    return -1;
  }
  
  public long a()
  {
    return this.c;
  }
  
  public int b()
  {
    return this.d;
  }
  
  public long c()
  {
    return this.e;
  }
  
  public String d()
  {
    return this.g;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return this.h;
  }
  
  public long[] f()
  {
    return this.j;
  }
  
  public String g()
  {
    return this.o;
  }
  
  public String h()
  {
    return this.p;
  }
  
  public long i()
  {
    return this.q;
  }
  
  public int j()
  {
    return this.r;
  }
  
  public String k()
  {
    return this.s;
  }
  
  public String l()
  {
    return this.t;
  }
  
  public int m()
  {
    return this.u;
  }
  
  public int n()
  {
    return this.l;
  }
  
  public long o()
  {
    return this.n;
  }
  
  public int p()
  {
    return this.m;
  }
  
  public long q()
  {
    return this.v;
  }
  
  public long r()
  {
    return this.w;
  }
  
  public boolean s()
  {
    return this.d != 0;
  }
  
  public boolean t()
  {
    return this.i > 0L;
  }
  
  public String toString()
  {
    return "ConversationLoaderEntity{id=" + this.c + ", conversationType=" + this.d + ", date=" + this.e + ", flags=" + this.f + ", groupName='" + this.g + '\'' + ", number='" + this.h + '\'' + ", lastMessageId=" + this.i + ", participants=" + Arrays.toString(this.j) + ", deleted=" + this.k + ", unreadMessagesCount=" + this.l + ", unreadCallsCount=" + this.m + ", groupId=" + this.n + ", mimeType='" + this.o + '\'' + ", body='" + this.p + '\'' + ", messageId=" + this.q + ", contactName='" + this.s + '\'' + ", displayName='" + this.t + '\'' + ", participantType=" + this.u + ", contactId=" + this.v + ", nativeContactId=" + this.w + ", nativePhotoId=" + this.x + ", participantNumber='" + this.y + '\'' + '}';
  }
  
  public boolean u()
  {
    return "notif".equals(this.o);
  }
  
  public boolean v()
  {
    boolean bool1;
    if (!bk.a(this.f, new int[] { 0 }))
    {
      String str = e();
      bool1 = false;
      if (str != null)
      {
        boolean bool2 = "viber".equals(e().toLowerCase());
        bool1 = false;
        if (!bool2) {}
      }
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }
  
  public boolean w()
  {
    boolean bool1;
    if (!bk.a(this.f, new int[] { 1 }))
    {
      String str = e();
      bool1 = false;
      if (str != null)
      {
        boolean bool2 = "viber".equals(e().toLowerCase());
        bool1 = false;
        if (!bool2) {}
      }
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeLong(this.e);
    paramParcel.writeInt(paramInt);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeLong(this.i);
    for (int i1 = 0; i1 < this.j.length; i1++) {
      paramParcel.writeLong(this.j[i1]);
    }
    paramParcel.writeInt(this.k);
    paramParcel.writeInt(this.l);
    paramParcel.writeInt(this.m);
    paramParcel.writeLong(this.n);
    paramParcel.writeString(this.o);
    paramParcel.writeString(this.p);
    paramParcel.writeLong(this.q);
    paramParcel.writeInt(this.r);
    paramParcel.writeString(this.s);
    paramParcel.writeString(this.t);
    paramParcel.writeInt(this.u);
    paramParcel.writeLong(this.v);
    paramParcel.writeLong(this.w);
    paramParcel.writeString(this.y);
    paramParcel.writeLong(this.x);
    paramParcel.writeInt(this.z);
  }
  
  public boolean x()
  {
    return bk.a(this.f, new int[] { 2 });
  }
  
  public String y()
  {
    return gk.a(this);
  }
  
  public String z()
  {
    return this.y;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ConversationLoaderEntity
 * JD-Core Version:    0.7.0.1
 */