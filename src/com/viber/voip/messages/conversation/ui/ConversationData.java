package com.viber.voip.messages.conversation.ui;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.viber.voip.messages.adapters.a.a;

public class ConversationData
  implements Parcelable
{
  public static final Parcelable.Creator<ConversationData> CREATOR = new ad();
  public String h;
  public final String i;
  public String j;
  public final String k;
  public final long l;
  public final long m;
  public final long n;
  public final long o;
  public final boolean p;
  public final boolean q;
  public final int r;
  public final long s;
  public final long t;
  
  public ConversationData(long paramLong1, long paramLong2, String paramString1, int paramInt, long paramLong3, long paramLong4, String paramString2, String paramString3)
  {
    this.l = paramLong1;
    this.k = paramString1;
    this.i = "";
    this.h = paramString2;
    this.j = paramString3;
    this.n = 0L;
    this.o = 0L;
    this.m = paramLong2;
    this.p = false;
    this.q = false;
    this.r = paramInt;
    this.s = paramLong3;
    this.t = paramLong4;
  }
  
  protected ConversationData(Parcel paramParcel)
  {
    this.l = paramParcel.readLong();
    this.k = paramParcel.readString();
    this.i = paramParcel.readString();
    this.h = paramParcel.readString();
    this.j = paramParcel.readString();
    this.n = paramParcel.readLong();
    this.o = paramParcel.readLong();
    this.m = paramParcel.readLong();
    int i2;
    if (paramParcel.readInt() == i1)
    {
      i2 = i1;
      this.p = i2;
      if (paramParcel.readInt() != i1) {
        break label128;
      }
    }
    for (;;)
    {
      this.q = i1;
      this.r = paramParcel.readInt();
      this.s = paramParcel.readLong();
      this.t = paramParcel.readLong();
      return;
      i2 = 0;
      break;
      label128:
      i1 = 0;
    }
  }
  
  public ConversationData(a parama)
  {
    this(parama, parama.s(), parama.r());
  }
  
  public ConversationData(a parama, long paramLong1, long paramLong2)
  {
    this.l = parama.a();
    this.k = parama.u();
    this.i = parama.v();
    this.h = parama.w();
    this.j = parama.i();
    this.n = paramLong1;
    this.o = paramLong2;
    this.m = parama.x();
    this.p = parama.f();
    this.q = parama.g();
    this.r = parama.y();
    this.s = 0L;
    this.t = 0L;
  }
  
  public boolean a()
  {
    return this.r != 0;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    ConversationData localConversationData;
    do
    {
      do
      {
        do
        {
          return true;
          if (paramObject == null) {
            return false;
          }
          if (getClass() != paramObject.getClass()) {
            return false;
          }
          localConversationData = (ConversationData)paramObject;
        } while ((this.l > 0L) && (localConversationData.l > 0L) && (this.l == localConversationData.l));
        if (this.r != localConversationData.r) {
          return false;
        }
        if (this.m != localConversationData.m) {
          return false;
        }
        if (this.k != null) {
          break;
        }
      } while (localConversationData.k == null);
      return false;
    } while (this.k.equals(localConversationData.k));
    return false;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    return "ConversationData [contactName=" + this.h + ", displayName=" + this.i + ", groupName=" + this.j + ", number=" + this.k + ", conversationId=" + this.l + ", groupId=" + this.m + ", foundMessageId=" + this.n + ", foundMessageDate=" + this.o + ", systemConversation=" + this.p + ", isActivateSecondaryConversation=" + this.q + ", conversationType=" + this.r + ", contactId=" + this.s + ", nativeContactId=" + this.t + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i1 = 1;
    paramParcel.writeLong(this.l);
    paramParcel.writeString(this.k);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.h);
    paramParcel.writeString(this.j);
    paramParcel.writeLong(this.n);
    paramParcel.writeLong(this.o);
    paramParcel.writeLong(this.m);
    int i2;
    if (this.p)
    {
      i2 = i1;
      paramParcel.writeInt(i2);
      if (!this.q) {
        break label125;
      }
    }
    for (;;)
    {
      paramParcel.writeInt(i1);
      paramParcel.writeInt(this.r);
      paramParcel.writeLong(this.s);
      paramParcel.writeLong(this.t);
      return;
      i2 = 0;
      break;
      label125:
      i1 = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ConversationData
 * JD-Core Version:    0.7.0.1
 */