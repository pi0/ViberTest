package com.viber.voip.messages.orm.entity;

import android.content.ContentValues;

public abstract interface ConversationEntity
  extends Entity
{
  public abstract String getBackgroundLandscape();
  
  public abstract String getBackgroundPortrait();
  
  public abstract ContentValues getContentValues();
  
  public abstract int getConversationType();
  
  public abstract long getDate();
  
  public abstract int getDeleted();
  
  public abstract long getDeletedToken();
  
  public abstract int getFlags();
  
  public abstract long getGroupId();
  
  public abstract String getGroupName();
  
  public abstract long getLastMessageId();
  
  public abstract int getMediaMessageCount();
  
  public abstract String getMessageDraft();
  
  public abstract int getMuteNotifications();
  
  public abstract String getNumber();
  
  public abstract long getParticipantInfoId1();
  
  public abstract long getParticipantInfoId2();
  
  public abstract long getParticipantInfoId3();
  
  public abstract long getParticipantInfoId4();
  
  public abstract long getParticipantInfoId5();
  
  public abstract int getShareLocation();
  
  public abstract void getShareLocation(int paramInt);
  
  public abstract long getSmartEventDate();
  
  public abstract int getSmartNotifications();
  
  public abstract int getUnreadCallsCount();
  
  public abstract int getUnreadMessagesCount();
  
  public abstract boolean isConversationGroup();
  
  public abstract boolean isMuteNotifications();
  
  public abstract boolean isPublicGroup();
  
  public abstract boolean isShareLocation();
  
  public abstract boolean isSmartNotificationOn();
  
  public abstract boolean isSystemConversation();
  
  public abstract boolean isTrialPublicGroup();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.ConversationEntity
 * JD-Core Version:    0.7.0.1
 */