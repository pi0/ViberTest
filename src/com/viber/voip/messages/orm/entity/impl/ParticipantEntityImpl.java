package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import com.viber.voip.messages.orm.entity.BaseEntity;

public class ParticipantEntityImpl
  extends BaseEntity
{
  private long conversationId;
  private long lastMessageId;
  private long participantInfoId;
  private int status;
  
  public ContentValues getContentValues()
  {
    return ParticipantEntityHelper.getContentValues(this);
  }
  
  public long getConversationId()
  {
    return this.conversationId;
  }
  
  public long getLastMessageId()
  {
    return this.lastMessageId;
  }
  
  public long getParticipantInfoId()
  {
    return this.participantInfoId;
  }
  
  public int getStatus()
  {
    return this.status;
  }
  
  public String getTable()
  {
    return "participants";
  }
  
  public boolean isActive()
  {
    return getStatus() == 0;
  }
  
  public void setConversationId(long paramLong)
  {
    this.conversationId = paramLong;
  }
  
  public void setLastMessageId(long paramLong)
  {
    this.lastMessageId = paramLong;
  }
  
  public void setParticipantInfoId(long paramLong)
  {
    this.participantInfoId = paramLong;
  }
  
  public void setStatus(int paramInt)
  {
    this.status = paramInt;
  }
  
  public String toString()
  {
    return "ParticipantEntityImpl [conversationId=" + this.conversationId + ", participantInfoId=" + this.participantInfoId + ", lastMessageId=" + this.lastMessageId + ", status=" + this.status + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.ParticipantEntityImpl
 * JD-Core Version:    0.7.0.1
 */