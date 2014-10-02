package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.messages.orm.entity.ConversationEntity;
import com.viber.voip.util.bk;

public class ConversationEntityImpl
  extends BaseEntity
  implements ConversationEntity
{
  private String backgroundLandscape;
  private String backgroundPortrait;
  private int conversationType;
  private long date;
  private int deleted;
  private long deletedToken;
  private int flags;
  private long groupId;
  private String groupName;
  private long lastMessageId;
  private int mediaMessageCount;
  private String messageDraft;
  private int muteNotifications;
  private String number;
  private long participantInfoId1;
  private long participantInfoId2;
  private long participantInfoId3;
  private long participantInfoId4;
  private long participantInfoId5;
  private long readNotificationToken;
  private int shareLocation;
  private long smartEventDate;
  private int smartNotifications;
  private int unreadCallsCount;
  private int unreadMessagesCount;
  
  public boolean containFlags(int... paramVarArgs)
  {
    return bk.a(this.flags, paramVarArgs);
  }
  
  public String getBackgroundLandscape()
  {
    return this.backgroundLandscape;
  }
  
  public String getBackgroundPortrait()
  {
    return this.backgroundPortrait;
  }
  
  public ContentValues getContentValues()
  {
    return ConversationEntityHelper.getContentValues(this);
  }
  
  public int getConversationType()
  {
    return this.conversationType;
  }
  
  public long getDate()
  {
    return this.date;
  }
  
  public int getDeleted()
  {
    return this.deleted;
  }
  
  public long getDeletedToken()
  {
    return this.deletedToken;
  }
  
  public int getFlags()
  {
    return this.flags;
  }
  
  public long getGroupId()
  {
    return this.groupId;
  }
  
  public String getGroupName()
  {
    if (this.groupName == null) {
      return "";
    }
    return this.groupName;
  }
  
  public long getLastMessageId()
  {
    return this.lastMessageId;
  }
  
  public int getMediaMessageCount()
  {
    return this.mediaMessageCount;
  }
  
  public String getMessageDraft()
  {
    return this.messageDraft;
  }
  
  public int getMuteNotifications()
  {
    return this.muteNotifications;
  }
  
  public String getNumber()
  {
    return this.number;
  }
  
  public long getParticipantInfoId1()
  {
    return this.participantInfoId1;
  }
  
  public long getParticipantInfoId2()
  {
    return this.participantInfoId2;
  }
  
  public long getParticipantInfoId3()
  {
    return this.participantInfoId3;
  }
  
  public long getParticipantInfoId4()
  {
    return this.participantInfoId4;
  }
  
  public long getParticipantInfoId5()
  {
    return this.participantInfoId5;
  }
  
  public long getReadNotificationToken()
  {
    return this.readNotificationToken;
  }
  
  public int getShareLocation()
  {
    return this.shareLocation;
  }
  
  public void getShareLocation(int paramInt)
  {
    this.shareLocation = paramInt;
  }
  
  public long getSmartEventDate()
  {
    return this.smartEventDate;
  }
  
  public int getSmartNotifications()
  {
    return this.smartNotifications;
  }
  
  public String getTable()
  {
    return "conversations";
  }
  
  public int getUnreadCallsCount()
  {
    return this.unreadCallsCount;
  }
  
  public int getUnreadMessagesCount()
  {
    return this.unreadMessagesCount;
  }
  
  public boolean isConversationGroup()
  {
    return this.conversationType != 0;
  }
  
  public boolean isDeleted()
  {
    return this.deleted == 1;
  }
  
  public boolean isMuteNotifications()
  {
    return this.muteNotifications == 1;
  }
  
  public boolean isPublicGroup()
  {
    return this.conversationType == 2;
  }
  
  public boolean isShareLocation()
  {
    return this.shareLocation == 1;
  }
  
  public boolean isSmartNotificationOn()
  {
    return this.smartNotifications == 1;
  }
  
  public boolean isSystemConversation()
  {
    boolean bool1;
    if (!bk.a(this.flags, new int[] { 0 }))
    {
      String str = getNumber();
      bool1 = false;
      if (str != null)
      {
        boolean bool2 = "viber".equals(getNumber().toLowerCase());
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
  
  public boolean isTrialPublicGroup()
  {
    return this.conversationType == 3;
  }
  
  public void removeFlag(int paramInt)
  {
    this.flags = bk.b(this.flags, paramInt);
  }
  
  public void setBackgroundLandscape(String paramString)
  {
    this.backgroundLandscape = paramString;
  }
  
  public void setBackgroundPortrait(String paramString)
  {
    this.backgroundPortrait = paramString;
  }
  
  public void setConversationType(int paramInt)
  {
    this.conversationType = paramInt;
  }
  
  public void setDate(long paramLong)
  {
    this.date = paramLong;
  }
  
  public void setDeleted(int paramInt)
  {
    this.deleted = paramInt;
  }
  
  public void setDeletedToken(long paramLong)
  {
    this.deletedToken = paramLong;
  }
  
  public void setFlag(int paramInt)
  {
    this.flags = bk.a(this.flags, paramInt);
  }
  
  public void setFlags(int paramInt)
  {
    this.flags = paramInt;
  }
  
  public void setGroupId(long paramLong)
  {
    this.groupId = paramLong;
  }
  
  public void setGroupName(String paramString)
  {
    this.groupName = paramString;
  }
  
  public void setLastMessageId(long paramLong)
  {
    this.lastMessageId = paramLong;
  }
  
  public void setMediaMessageCount(int paramInt)
  {
    this.mediaMessageCount = paramInt;
  }
  
  public void setMessageDraft(String paramString)
  {
    this.messageDraft = paramString;
  }
  
  public void setMuteNotifications(int paramInt)
  {
    this.muteNotifications = paramInt;
  }
  
  public void setNumber(String paramString)
  {
    this.number = paramString;
  }
  
  public void setParticipantInfoId1(long paramLong)
  {
    this.participantInfoId1 = paramLong;
  }
  
  public void setParticipantInfoId2(long paramLong)
  {
    this.participantInfoId2 = paramLong;
  }
  
  public void setParticipantInfoId3(long paramLong)
  {
    this.participantInfoId3 = paramLong;
  }
  
  public void setParticipantInfoId4(long paramLong)
  {
    this.participantInfoId4 = paramLong;
  }
  
  public void setParticipantInfoId5(long paramLong)
  {
    this.participantInfoId5 = paramLong;
  }
  
  public void setReadNotificationToken(long paramLong)
  {
    this.readNotificationToken = paramLong;
  }
  
  public void setShareLocation(int paramInt)
  {
    this.shareLocation = paramInt;
  }
  
  public void setSmartEventDate(long paramLong)
  {
    this.smartEventDate = paramLong;
  }
  
  public void setSmartNotifications(int paramInt)
  {
    this.smartNotifications = paramInt;
  }
  
  public void setUnreadCallsCount(int paramInt)
  {
    this.unreadCallsCount = paramInt;
  }
  
  public void setUnreadMessagesCount(int paramInt)
  {
    this.unreadMessagesCount = paramInt;
  }
  
  public String toString()
  {
    return "ConversationEntityImpl [id=" + getId() + ", conversationType=" + this.conversationType + ", groupId=" + this.groupId + ", number=" + this.number + ", shareLocation=" + this.shareLocation + ", messageDraft=" + this.messageDraft + ", unreadMessagesCount=" + this.unreadMessagesCount + ", unreadCallsCount=" + this.unreadCallsCount + ", deletedToken=" + this.deletedToken + ", deleted=" + this.deleted + ", groupName=" + this.groupName + ", backgroundLandscape=" + this.backgroundLandscape + ", backgroundPortrait=" + this.backgroundPortrait + ", smartNotifications=" + this.smartNotifications + ", smartEventDate=" + this.smartEventDate + ", muteNotifications=" + this.muteNotifications + ", flags=" + this.flags + ", date=" + this.date + ", lastMessageId=" + this.lastMessageId + ", participantInfoId1=" + this.participantInfoId1 + ", participantInfoId2=" + this.participantInfoId2 + ", participantInfoId3=" + this.participantInfoId3 + ", participantInfoId4=" + this.participantInfoId4 + ", participantInfoId5=" + this.participantInfoId5 + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl
 * JD-Core Version:    0.7.0.1
 */