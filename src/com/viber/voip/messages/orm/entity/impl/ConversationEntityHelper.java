package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import android.database.Cursor;
import com.viber.voip.messages.orm.entity.EntityHelper;

public class ConversationEntityHelper
  implements EntityHelper<ConversationEntityImpl>
{
  protected static int INDX_BACKGROUND_LANDSCAPE;
  protected static int INDX_BACKGROUND_PORTRAIT;
  protected static int INDX_CONVERSATION_TYPE;
  protected static int INDX_DATE;
  protected static int INDX_DELETED;
  protected static int INDX_DELETE_TOKEN;
  protected static int INDX_FLAGS;
  protected static int INDX_GROUP_ID;
  protected static int INDX_GROUP_NAME;
  protected static int INDX_ID;
  protected static int INDX_LAST_MESSAGE_ID;
  protected static int INDX_MEDIA_MESSAGE_COUNT = 24;
  protected static int INDX_MESSAGE_DRAFT;
  protected static int INDX_MUTE_NOTIFICATION;
  protected static int INDX_PARTICIPANT_INFO_ID_1;
  protected static int INDX_PARTICIPANT_INFO_ID_2;
  protected static int INDX_PARTICIPANT_INFO_ID_3;
  protected static int INDX_PARTICIPANT_INFO_ID_4;
  protected static int INDX_READ_NOTIFICATION_TOKEN;
  protected static int INDX_RECIPIENT_NUMBER;
  protected static int INDX_SHARE_LOCATION;
  protected static int INDX_SMART_EVENT_DATE;
  protected static int INDX_SMART_NOTIFICATION;
  protected static int INDX_UNREAD_CALLS_COUNT;
  protected static int INDX_UNREAD_MESSAGE_COUNT;
  public static String[] PROJECTIONS = { "_id", "conversation_type", "group_id", "recipient_number", "date", "share_location", "message_draft", "unread_message_count", "unread_calls_count", "delete_token", "deleted", "name", "background_landscape", "background_portrait", "smart_notification", "smart_event_date", "mute_notification", "flags", "last_message_id", "participant_id_1", "participant_id_2", "participant_id_3", "participant_id_4", "read_notification_token", "media_msg_count" };
  
  static
  {
    INDX_ID = 0;
    INDX_CONVERSATION_TYPE = 1;
    INDX_GROUP_ID = 2;
    INDX_RECIPIENT_NUMBER = 3;
    INDX_DATE = 4;
    INDX_SHARE_LOCATION = 5;
    INDX_MESSAGE_DRAFT = 6;
    INDX_UNREAD_MESSAGE_COUNT = 7;
    INDX_UNREAD_CALLS_COUNT = 8;
    INDX_DELETE_TOKEN = 9;
    INDX_DELETED = 10;
    INDX_GROUP_NAME = 11;
    INDX_BACKGROUND_LANDSCAPE = 12;
    INDX_BACKGROUND_PORTRAIT = 13;
    INDX_SMART_NOTIFICATION = 14;
    INDX_SMART_EVENT_DATE = 15;
    INDX_MUTE_NOTIFICATION = 16;
    INDX_FLAGS = 17;
    INDX_LAST_MESSAGE_ID = 18;
    INDX_PARTICIPANT_INFO_ID_1 = 19;
    INDX_PARTICIPANT_INFO_ID_2 = 20;
    INDX_PARTICIPANT_INFO_ID_3 = 21;
    INDX_PARTICIPANT_INFO_ID_4 = 22;
    INDX_READ_NOTIFICATION_TOKEN = 23;
  }
  
  public static ConversationEntityImpl createEntity(ConversationEntityImpl paramConversationEntityImpl, Cursor paramCursor, int paramInt)
  {
    paramConversationEntityImpl.setId(paramCursor.getLong(paramInt + INDX_ID));
    paramConversationEntityImpl.setConversationType(paramCursor.getInt(paramInt + INDX_CONVERSATION_TYPE));
    paramConversationEntityImpl.setGroupId(paramCursor.getLong(paramInt + INDX_GROUP_ID));
    paramConversationEntityImpl.setNumber(paramCursor.getString(paramInt + INDX_RECIPIENT_NUMBER));
    paramConversationEntityImpl.setDate(paramCursor.getLong(paramInt + INDX_DATE));
    paramConversationEntityImpl.setShareLocation(paramCursor.getInt(paramInt + INDX_SHARE_LOCATION));
    paramConversationEntityImpl.setMessageDraft(paramCursor.getString(paramInt + INDX_MESSAGE_DRAFT));
    paramConversationEntityImpl.setUnreadMessagesCount(paramCursor.getInt(paramInt + INDX_UNREAD_MESSAGE_COUNT));
    paramConversationEntityImpl.setUnreadCallsCount(paramCursor.getInt(paramInt + INDX_UNREAD_CALLS_COUNT));
    paramConversationEntityImpl.setDeletedToken(paramCursor.getLong(paramInt + INDX_DELETE_TOKEN));
    paramConversationEntityImpl.setDeleted(paramCursor.getInt(paramInt + INDX_DELETED));
    paramConversationEntityImpl.setGroupName(paramCursor.getString(paramInt + INDX_GROUP_NAME));
    paramConversationEntityImpl.setBackgroundLandscape(paramCursor.getString(paramInt + INDX_BACKGROUND_LANDSCAPE));
    paramConversationEntityImpl.setBackgroundPortrait(paramCursor.getString(paramInt + INDX_BACKGROUND_PORTRAIT));
    paramConversationEntityImpl.setSmartNotifications(paramCursor.getInt(paramInt + INDX_SMART_NOTIFICATION));
    paramConversationEntityImpl.setSmartEventDate(paramCursor.getLong(paramInt + INDX_SMART_EVENT_DATE));
    paramConversationEntityImpl.setMuteNotifications(paramCursor.getInt(paramInt + INDX_MUTE_NOTIFICATION));
    paramConversationEntityImpl.setFlags(paramCursor.getInt(paramInt + INDX_FLAGS));
    paramConversationEntityImpl.setLastMessageId(paramCursor.getLong(paramInt + INDX_LAST_MESSAGE_ID));
    paramConversationEntityImpl.setParticipantInfoId1(paramCursor.getLong(paramInt + INDX_PARTICIPANT_INFO_ID_1));
    paramConversationEntityImpl.setParticipantInfoId2(paramCursor.getLong(paramInt + INDX_PARTICIPANT_INFO_ID_2));
    paramConversationEntityImpl.setParticipantInfoId3(paramCursor.getLong(paramInt + INDX_PARTICIPANT_INFO_ID_3));
    paramConversationEntityImpl.setParticipantInfoId4(paramCursor.getLong(paramInt + INDX_PARTICIPANT_INFO_ID_4));
    paramConversationEntityImpl.setReadNotificationToken(paramCursor.getLong(paramInt + INDX_READ_NOTIFICATION_TOKEN));
    paramConversationEntityImpl.setMediaMessageCount(paramCursor.getInt(paramInt + INDX_MEDIA_MESSAGE_COUNT));
    return paramConversationEntityImpl;
  }
  
  public static ContentValues getContentValues(ConversationEntityImpl paramConversationEntityImpl)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramConversationEntityImpl.getId() > 0L) {
      localContentValues.put("_id", Long.valueOf(paramConversationEntityImpl.getId()));
    }
    localContentValues.put("conversation_type", Integer.valueOf(paramConversationEntityImpl.getConversationType()));
    localContentValues.put("group_id", Long.valueOf(paramConversationEntityImpl.getGroupId()));
    localContentValues.put("recipient_number", paramConversationEntityImpl.getNumber());
    localContentValues.put("date", Long.valueOf(paramConversationEntityImpl.getDate()));
    localContentValues.put("share_location", Integer.valueOf(paramConversationEntityImpl.getShareLocation()));
    localContentValues.put("message_draft", paramConversationEntityImpl.getMessageDraft());
    localContentValues.put("unread_message_count", Integer.valueOf(paramConversationEntityImpl.getUnreadMessagesCount()));
    localContentValues.put("unread_calls_count", Integer.valueOf(paramConversationEntityImpl.getUnreadCallsCount()));
    localContentValues.put("delete_token", Long.valueOf(paramConversationEntityImpl.getDeletedToken()));
    localContentValues.put("deleted", Integer.valueOf(paramConversationEntityImpl.getDeleted()));
    localContentValues.put("name", paramConversationEntityImpl.getGroupName());
    localContentValues.put("background_landscape", paramConversationEntityImpl.getBackgroundLandscape());
    localContentValues.put("background_portrait", paramConversationEntityImpl.getBackgroundPortrait());
    localContentValues.put("smart_notification", Integer.valueOf(paramConversationEntityImpl.getSmartNotifications()));
    localContentValues.put("smart_event_date", Long.valueOf(paramConversationEntityImpl.getSmartEventDate()));
    localContentValues.put("mute_notification", Integer.valueOf(paramConversationEntityImpl.getMuteNotifications()));
    localContentValues.put("flags", Integer.valueOf(paramConversationEntityImpl.getFlags()));
    localContentValues.put("last_message_id", Long.valueOf(paramConversationEntityImpl.getLastMessageId()));
    localContentValues.put("participant_id_1", Long.valueOf(paramConversationEntityImpl.getParticipantInfoId1()));
    localContentValues.put("participant_id_2", Long.valueOf(paramConversationEntityImpl.getParticipantInfoId2()));
    localContentValues.put("participant_id_3", Long.valueOf(paramConversationEntityImpl.getParticipantInfoId3()));
    localContentValues.put("participant_id_4", Long.valueOf(paramConversationEntityImpl.getParticipantInfoId4()));
    localContentValues.put("read_notification_token", Long.valueOf(paramConversationEntityImpl.getReadNotificationToken()));
    localContentValues.put("media_msg_count", Integer.valueOf(paramConversationEntityImpl.getMediaMessageCount()));
    return localContentValues;
  }
  
  public ContentValues createContentValues(ConversationEntityImpl paramConversationEntityImpl)
  {
    return getContentValues(paramConversationEntityImpl);
  }
  
  public ConversationEntityImpl createEntity(Cursor paramCursor)
  {
    return createEntity(paramCursor, 0);
  }
  
  public ConversationEntityImpl createEntity(Cursor paramCursor, int paramInt)
  {
    return createEntity(new ConversationEntityImpl(), paramCursor, paramInt);
  }
  
  public String[] getProjections()
  {
    return PROJECTIONS;
  }
  
  public String getTable()
  {
    return "conversations";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.ConversationEntityHelper
 * JD-Core Version:    0.7.0.1
 */