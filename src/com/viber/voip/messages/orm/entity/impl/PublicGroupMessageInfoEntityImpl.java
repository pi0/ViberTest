package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import com.viber.voip.messages.orm.entity.BaseEntity;

public class PublicGroupMessageInfoEntityImpl
  extends BaseEntity
{
  private long conversationId;
  private int liked;
  private int likesCount;
  private long messageToken;
  private int syncLike;
  
  public ContentValues getContentValues()
  {
    return PublicMessageExtraEntityHelper.getContentValues(this);
  }
  
  public long getConversationId()
  {
    return this.conversationId;
  }
  
  public int getLiked()
  {
    return this.liked;
  }
  
  public int getLikesCount()
  {
    return this.likesCount;
  }
  
  public long getMessageToken()
  {
    return this.messageToken;
  }
  
  public int getSyncLike()
  {
    return this.syncLike;
  }
  
  public String getTable()
  {
    return "public_messages_extras";
  }
  
  public void setConversationId(long paramLong)
  {
    this.conversationId = paramLong;
  }
  
  public void setLiked(int paramInt)
  {
    this.liked = paramInt;
  }
  
  public void setLikesCount(int paramInt)
  {
    this.likesCount = paramInt;
  }
  
  public void setMessageToken(long paramLong)
  {
    this.messageToken = paramLong;
  }
  
  public void setSyncLike(int paramInt)
  {
    this.syncLike = paramInt;
  }
  
  public String toString()
  {
    return "PublicGroupMessageInfoEntityImpl [id=" + this.id + ", conversationId=" + this.conversationId + ", messageToken=" + this.messageToken + ", liked=" + this.liked + ", likesCount=" + this.likesCount + ", syncLike=" + this.syncLike + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.PublicGroupMessageInfoEntityImpl
 * JD-Core Version:    0.7.0.1
 */