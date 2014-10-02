package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.viber.voip.calls.entities.impl.CallEntityImpl;
import com.viber.voip.messages.orm.entity.BaseEntity;

public class MessageCallEntityImpl
  extends BaseEntity
  implements Parcelable
{
  public static final Parcelable.Creator<MessageCallEntityImpl> CREATOR = new MessageCallEntityImpl.1();
  private String canonizedNumber;
  private long conversationId;
  private long date;
  private long duration;
  private int endReason;
  private long messageId;
  private int startReason;
  private long token;
  private int type;
  private int viberCallType;
  
  public MessageCallEntityImpl() {}
  
  private MessageCallEntityImpl(Parcel paramParcel)
  {
    this.id = paramParcel.readLong();
    this.conversationId = paramParcel.readLong();
    this.messageId = paramParcel.readLong();
    this.canonizedNumber = paramParcel.readString();
    this.date = paramParcel.readLong();
    this.duration = paramParcel.readLong();
    this.type = paramParcel.readInt();
    this.token = paramParcel.readLong();
    this.endReason = paramParcel.readInt();
    this.startReason = paramParcel.readInt();
    this.viberCallType = paramParcel.readInt();
  }
  
  public MessageCallEntityImpl(CallEntityImpl paramCallEntityImpl)
  {
    this.canonizedNumber = paramCallEntityImpl.g();
    this.date = paramCallEntityImpl.h();
    this.duration = paramCallEntityImpl.i();
    this.type = paramCallEntityImpl.j();
    this.token = paramCallEntityImpl.p();
    this.endReason = paramCallEntityImpl.s();
    this.startReason = paramCallEntityImpl.r();
    this.viberCallType = paramCallEntityImpl.v();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCanonizedNumber()
  {
    return this.canonizedNumber;
  }
  
  public ContentValues getContentValues()
  {
    return MessageCallEntityHelper.getContentValues(this);
  }
  
  public long getConversationId()
  {
    return this.conversationId;
  }
  
  public long getDate()
  {
    return this.date;
  }
  
  public long getDuration()
  {
    return this.duration;
  }
  
  public int getEndReason()
  {
    return this.endReason;
  }
  
  public long getMessageId()
  {
    return this.messageId;
  }
  
  public int getStartReason()
  {
    return this.startReason;
  }
  
  public String getTable()
  {
    return "messages_calls";
  }
  
  public long getToken()
  {
    return this.token;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public int getViberCallType()
  {
    return this.viberCallType;
  }
  
  public boolean isAnswerredOnAnotherDevice()
  {
    return this.endReason == 10;
  }
  
  public boolean isIncoming()
  {
    return this.type == 1;
  }
  
  public boolean isMissed()
  {
    return this.type == 3;
  }
  
  public boolean isOutgoing()
  {
    return this.type == 2;
  }
  
  public boolean isTransferredIn()
  {
    return this.startReason == 1;
  }
  
  public boolean isTransferredOut()
  {
    return this.endReason == 9;
  }
  
  public boolean isTypeViberGeneral()
  {
    return this.viberCallType == 1;
  }
  
  public boolean isTypeViberIn()
  {
    return this.viberCallType == 3;
  }
  
  public boolean isTypeViberOut()
  {
    return this.viberCallType == 2;
  }
  
  public void setCanonizedNumber(String paramString)
  {
    this.canonizedNumber = paramString;
  }
  
  public void setConversationId(long paramLong)
  {
    this.conversationId = paramLong;
  }
  
  public void setDate(long paramLong)
  {
    this.date = paramLong;
  }
  
  public void setDuration(long paramLong)
  {
    this.duration = paramLong;
  }
  
  public void setEndReason(int paramInt)
  {
    this.endReason = paramInt;
  }
  
  public void setMessageId(long paramLong)
  {
    this.messageId = paramLong;
  }
  
  public void setNativeCallId(long paramLong)
  {
    this.messageId = paramLong;
  }
  
  public void setStartReason(int paramInt)
  {
    this.startReason = paramInt;
  }
  
  public void setToken(long paramLong)
  {
    this.token = paramLong;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
  
  public void setViberCallType(int paramInt)
  {
    this.viberCallType = paramInt;
  }
  
  public String toString()
  {
    return "MessageCallEntityImpl [id=" + this.id + ", conversationId=" + this.conversationId + ", messageId=" + this.messageId + ", canonizedNumber=" + this.canonizedNumber + ", date=" + this.date + ", duration=" + this.duration + ", type=" + this.type + ", token=" + this.token + ", endReason=" + this.endReason + ", startReason=" + this.startReason + ", viberCallType=" + this.viberCallType + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    paramParcel.writeLong(this.conversationId);
    paramParcel.writeLong(this.messageId);
    paramParcel.writeString(this.canonizedNumber);
    paramParcel.writeLong(this.date);
    paramParcel.writeLong(this.duration);
    paramParcel.writeInt(this.type);
    paramParcel.writeLong(this.token);
    paramParcel.writeInt(this.endReason);
    paramParcel.writeInt(this.startReason);
    paramParcel.writeInt(this.viberCallType);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.MessageCallEntityImpl
 * JD-Core Version:    0.7.0.1
 */