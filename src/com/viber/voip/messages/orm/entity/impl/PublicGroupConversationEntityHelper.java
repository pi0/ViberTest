package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import android.database.Cursor;
import com.viber.voip.messages.orm.entity.EntityHelper;

public class PublicGroupConversationEntityHelper
  implements EntityHelper<PublicGroupConversationEntityImpl>
{
  protected static int INDX_BACKGROUND_ID;
  protected static int INDX_COUNTRY;
  protected static int INDX_GROUP_ID;
  protected static int INDX_GROUP_ROLE;
  protected static int INDX_GROUP_URI;
  protected static int INDX_ICON_ID;
  protected static int INDX_ID;
  protected static int INDX_INVITER = 1 + INDX_VERIFIED;
  protected static int INDX_LAST_MEDIA_TYPE = 1 + INDX_INVITER;
  protected static int INDX_LAST_MESSAGE_ID;
  protected static int INDX_LAST_MSG_TEXT = 1 + INDX_LAST_MEDIA_TYPE;
  protected static int INDX_LOCATION_ADDRESS;
  protected static int INDX_LOCATION_LAT;
  protected static int INDX_LOCATION_LNG;
  protected static int INDX_REVISION;
  protected static int INDX_SENDER_PHONE = 1 + INDX_LAST_MSG_TEXT;
  protected static int INDX_SERVER_LAST_MESSAGE_ID;
  protected static int INDX_TAGS;
  protected static int INDX_TAG_LINE;
  protected static int INDX_VERIFIED;
  protected static int INDX_WATCHERS_COUNT;
  public static String[] PROJECTIONS = { "_id", "group_id", "group_role", "group_uri", "revision", "icon_id", "background_id", "location_lat", "location_lng", "country", "location_address", "watchers_count", "tags", "tag_line", "local_message_id", "server_message_id", "verified", "inviter", "last_media_type", "last_msg_text", "sender_phone" };
  
  static
  {
    INDX_ID = 0;
    INDX_GROUP_ID = 1 + INDX_ID;
    INDX_GROUP_ROLE = 1 + INDX_GROUP_ID;
    INDX_GROUP_URI = 1 + INDX_GROUP_ROLE;
    INDX_REVISION = 1 + INDX_GROUP_URI;
    INDX_ICON_ID = 1 + INDX_REVISION;
    INDX_BACKGROUND_ID = 1 + INDX_ICON_ID;
    INDX_LOCATION_LAT = 1 + INDX_BACKGROUND_ID;
    INDX_LOCATION_LNG = 1 + INDX_LOCATION_LAT;
    INDX_COUNTRY = 1 + INDX_LOCATION_LNG;
    INDX_LOCATION_ADDRESS = 1 + INDX_COUNTRY;
    INDX_WATCHERS_COUNT = 1 + INDX_LOCATION_ADDRESS;
    INDX_TAGS = 1 + INDX_WATCHERS_COUNT;
    INDX_TAG_LINE = 1 + INDX_TAGS;
    INDX_LAST_MESSAGE_ID = 1 + INDX_TAG_LINE;
    INDX_SERVER_LAST_MESSAGE_ID = 1 + INDX_LAST_MESSAGE_ID;
    INDX_VERIFIED = 1 + INDX_SERVER_LAST_MESSAGE_ID;
  }
  
  public static PublicGroupConversationEntityImpl createEntity(PublicGroupConversationEntityImpl paramPublicGroupConversationEntityImpl, Cursor paramCursor, int paramInt)
  {
    int i = 1;
    paramPublicGroupConversationEntityImpl.setId(paramCursor.getLong(paramInt + INDX_ID));
    paramPublicGroupConversationEntityImpl.setGroupId(paramCursor.getLong(paramInt + INDX_GROUP_ID));
    paramPublicGroupConversationEntityImpl.setGroupRole(paramCursor.getInt(paramInt + INDX_GROUP_ROLE));
    paramPublicGroupConversationEntityImpl.setGroupUri(paramCursor.getString(paramInt + INDX_GROUP_URI));
    paramPublicGroupConversationEntityImpl.setRevision(paramCursor.getInt(paramInt + INDX_REVISION));
    paramPublicGroupConversationEntityImpl.setIconId(paramCursor.getString(paramInt + INDX_ICON_ID));
    paramPublicGroupConversationEntityImpl.setBackgroundId(paramCursor.getString(paramInt + INDX_BACKGROUND_ID));
    paramPublicGroupConversationEntityImpl.setLocationLat(paramCursor.getInt(paramInt + INDX_LOCATION_LAT));
    paramPublicGroupConversationEntityImpl.setLocationLng(paramCursor.getInt(paramInt + INDX_LOCATION_LNG));
    paramPublicGroupConversationEntityImpl.setCountry(paramCursor.getString(paramInt + INDX_COUNTRY));
    paramPublicGroupConversationEntityImpl.setAddressString(paramCursor.getString(paramInt + INDX_LOCATION_ADDRESS));
    paramPublicGroupConversationEntityImpl.setWatchersCount(paramCursor.getInt(paramInt + INDX_WATCHERS_COUNT));
    paramPublicGroupConversationEntityImpl.setTags(paramCursor.getString(paramInt + INDX_TAGS));
    paramPublicGroupConversationEntityImpl.setTagLine(paramCursor.getString(paramInt + INDX_TAG_LINE));
    paramPublicGroupConversationEntityImpl.setLastLocalMessageId(paramCursor.getInt(paramInt + INDX_LAST_MESSAGE_ID));
    paramPublicGroupConversationEntityImpl.setLastServerMessageId(paramCursor.getInt(paramInt + INDX_SERVER_LAST_MESSAGE_ID));
    if (paramCursor.getInt(paramInt + INDX_VERIFIED) == i) {}
    for (;;)
    {
      paramPublicGroupConversationEntityImpl.setVerified(i);
      paramPublicGroupConversationEntityImpl.setInviter(paramCursor.getString(paramInt + INDX_INVITER));
      paramPublicGroupConversationEntityImpl.setLastMediaType(paramCursor.getInt(paramInt + INDX_LAST_MEDIA_TYPE));
      paramPublicGroupConversationEntityImpl.setLastMessageText(paramCursor.getString(paramInt + INDX_LAST_MSG_TEXT));
      paramPublicGroupConversationEntityImpl.setSenderPhone(paramCursor.getString(paramInt + INDX_SENDER_PHONE));
      return paramPublicGroupConversationEntityImpl;
      int j = 0;
    }
  }
  
  public static ContentValues getContentValues(PublicGroupConversationEntityImpl paramPublicGroupConversationEntityImpl)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramPublicGroupConversationEntityImpl.getId() > 0L) {
      localContentValues.put("_id", Long.valueOf(paramPublicGroupConversationEntityImpl.getId()));
    }
    localContentValues.put("group_id", Long.valueOf(paramPublicGroupConversationEntityImpl.getGroupId()));
    localContentValues.put("group_role", Integer.valueOf(paramPublicGroupConversationEntityImpl.getGroupRole()));
    localContentValues.put("group_uri", paramPublicGroupConversationEntityImpl.getGroupUri());
    localContentValues.put("revision", Integer.valueOf(paramPublicGroupConversationEntityImpl.getRevision()));
    localContentValues.put("icon_id", paramPublicGroupConversationEntityImpl.getIconId());
    localContentValues.put("background_id", paramPublicGroupConversationEntityImpl.getBackgroundId());
    localContentValues.put("location_lat", Integer.valueOf(paramPublicGroupConversationEntityImpl.getLocationLat()));
    localContentValues.put("location_lng", Integer.valueOf(paramPublicGroupConversationEntityImpl.getLocationLng()));
    localContentValues.put("country", paramPublicGroupConversationEntityImpl.getCountry());
    localContentValues.put("location_address", paramPublicGroupConversationEntityImpl.getAddressString());
    localContentValues.put("watchers_count", Integer.valueOf(paramPublicGroupConversationEntityImpl.getWatchersCount()));
    localContentValues.put("tags", paramPublicGroupConversationEntityImpl.getTags());
    localContentValues.put("tag_line", paramPublicGroupConversationEntityImpl.getTagLine());
    localContentValues.put("local_message_id", Integer.valueOf(paramPublicGroupConversationEntityImpl.getLastLocalMessageId()));
    localContentValues.put("server_message_id", Integer.valueOf(paramPublicGroupConversationEntityImpl.getLastServerMessageId()));
    localContentValues.put("verified", Boolean.valueOf(paramPublicGroupConversationEntityImpl.isVerified()));
    localContentValues.put("inviter", paramPublicGroupConversationEntityImpl.getInviter());
    localContentValues.put("last_media_type", Integer.valueOf(paramPublicGroupConversationEntityImpl.getLastMediaType()));
    localContentValues.put("last_msg_text", paramPublicGroupConversationEntityImpl.getLastMessageText());
    localContentValues.put("sender_phone", paramPublicGroupConversationEntityImpl.getSenderPhone());
    return localContentValues;
  }
  
  public ContentValues createContentValues(PublicGroupConversationEntityImpl paramPublicGroupConversationEntityImpl)
  {
    return getContentValues(paramPublicGroupConversationEntityImpl);
  }
  
  public PublicGroupConversationEntityImpl createEntity(Cursor paramCursor)
  {
    return createEntity(paramCursor, 0);
  }
  
  public PublicGroupConversationEntityImpl createEntity(Cursor paramCursor, int paramInt)
  {
    return createEntity(new PublicGroupConversationEntityImpl(), paramCursor, paramInt);
  }
  
  public String[] getProjections()
  {
    return PROJECTIONS;
  }
  
  public String getTable()
  {
    return "group_conversations_extras";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityHelper
 * JD-Core Version:    0.7.0.1
 */