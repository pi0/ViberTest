package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import android.database.Cursor;
import com.viber.voip.messages.orm.entity.EntityHelper;

public class MessageEntityHelper
  implements EntityHelper<MessageEntityImpl>
{
  private static final int INDX_BODY = 3;
  private static final int INDX_CONVERSATION_ID = 18;
  private static final int INDX_CONVERSATION_TYPE = 19;
  private static final int INDX_COUNT = 29;
  private static final int INDX_DATE = 1;
  private static final int INDX_DELETED = 26;
  private static final int INDX_DESCRIPTION = 28;
  private static final int INDX_DOWNLOAD_ID = 11;
  private static final int INDX_EXTRA_BUCKET_NAME = 21;
  private static final int INDX_EXTRA_DURATION = 15;
  private static final int INDX_EXTRA_FLAGS = 32;
  private static final int INDX_EXTRA_MIME = 12;
  private static final int INDX_EXTRA_STATUS = 8;
  private static final int INDX_EXTRA_UPLOAD_ID = 10;
  private static final int INDX_EXTRA_URI = 9;
  private static final int INDX_FB_STATUS = 13;
  private static final int INDX_FLAG = 16;
  private static final int INDX_GROUP_ID = 17;
  private static final int INDX_ID = 0;
  private static final int INDX_LOCATION_LAT = 6;
  private static final int INDX_LOCATION_LNG = 7;
  private static final int INDX_MESSAGE_GLOBAL_ID = 34;
  private static final int INDX_MESSAGE_SEQ = 22;
  private static final int INDX_MESSAGE_TOKEN = 23;
  private static final int INDX_OPENED = 27;
  private static final int INDX_PARTICIOANT_ID = 30;
  private static final int INDX_READ = 5;
  private static final int INDX_REAL_DATE = 33;
  private static final int INDX_RECIPIENT_NUMBER = 20;
  private static final int INDX_STATUS = 4;
  private static final int INDX_SYNC_READ = 31;
  private static final int INDX_THUMBNAIL_X = 24;
  private static final int INDX_THUMBNAIL_Y = 25;
  private static final int INDX_TWITTER_STATUS = 14;
  private static final int INDX_TYPE = 2;
  public static final String[] PROJECTIONS = { "_id", "date", "type", "body", "status", "read", "location_lat", "location_lng", "extra_status", "extra_uri", "extra_upload_id", "extra_download_id", "extra_mime", "fb_status", "twitter_status", "extra_duration", "flag", "group_id", "conversation_id", "conversation_type", "address", "extra_bucket_name", "seq", "token", "thumbnail_x", "thumbnail_y", "deleted", "opened", "description", "count", "participant_id", "sync_read", "extra_flags", "date_real", "message_global_id" };
  
  public static MessageEntityImpl createEntity(MessageEntityImpl paramMessageEntityImpl, Cursor paramCursor, int paramInt)
  {
    paramMessageEntityImpl.setId(paramCursor.getLong(paramInt + 0));
    paramMessageEntityImpl.setDate(paramCursor.getLong(paramInt + 1));
    paramMessageEntityImpl.setType(paramCursor.getInt(paramInt + 2));
    paramMessageEntityImpl.setBody(paramCursor.getString(paramInt + 3));
    paramMessageEntityImpl.setStatus(paramCursor.getInt(paramInt + 4));
    paramMessageEntityImpl.setUnread(paramCursor.getInt(paramInt + 5));
    paramMessageEntityImpl.setLat(paramCursor.getInt(paramInt + 6));
    paramMessageEntityImpl.setLng(paramCursor.getInt(paramInt + 7));
    paramMessageEntityImpl.setExtraStatus(paramCursor.getInt(paramInt + 8));
    paramMessageEntityImpl.setMediaUri(paramCursor.getString(paramInt + 9));
    paramMessageEntityImpl.setObjectId(paramCursor.getLong(paramInt + 10));
    paramMessageEntityImpl.setDownloadId(paramCursor.getString(paramInt + 11));
    paramMessageEntityImpl.setMimeType(paramCursor.getString(paramInt + 12));
    paramMessageEntityImpl.setFbStatus(paramCursor.getInt(paramInt + 13));
    paramMessageEntityImpl.setTwitterStatus(paramCursor.getInt(paramInt + 14));
    paramMessageEntityImpl.setDuration(paramCursor.getLong(paramInt + 15));
    paramMessageEntityImpl.setFlag(paramCursor.getInt(paramInt + 16));
    paramMessageEntityImpl.setGroupId(paramCursor.getLong(paramInt + 17));
    paramMessageEntityImpl.setConversationId(paramCursor.getLong(paramInt + 18));
    paramMessageEntityImpl.setConversationType(paramCursor.getInt(paramInt + 19));
    paramMessageEntityImpl.setRecipientNumber(paramCursor.getString(paramInt + 20));
    paramMessageEntityImpl.setBucket(paramCursor.getString(paramInt + 21));
    paramMessageEntityImpl.setMessageSeq(paramCursor.getInt(paramInt + 22));
    paramMessageEntityImpl.setMessageToken(paramCursor.getLong(paramInt + 23));
    paramMessageEntityImpl.setThumbnailHeight(paramCursor.getInt(paramInt + 25));
    paramMessageEntityImpl.setThumbnailWidth(paramCursor.getInt(paramInt + 24));
    paramMessageEntityImpl.setDeleted(paramCursor.getInt(paramInt + 26));
    paramMessageEntityImpl.setOpened(paramCursor.getInt(paramInt + 27));
    paramMessageEntityImpl.setDescription(paramCursor.getString(paramInt + 28));
    paramMessageEntityImpl.setCount(paramCursor.getInt(paramInt + 29));
    paramMessageEntityImpl.setParticipantId(paramCursor.getLong(paramInt + 30));
    paramMessageEntityImpl.setSyncRead(paramCursor.getInt(paramInt + 31));
    paramMessageEntityImpl.setExtraFlags(paramCursor.getInt(paramInt + 32));
    paramMessageEntityImpl.setRealDate(paramCursor.getLong(paramInt + 33));
    paramMessageEntityImpl.setMessageGlobalId(paramCursor.getInt(paramInt + 34));
    return paramMessageEntityImpl;
  }
  
  public static ContentValues getContentValues(MessageEntityImpl paramMessageEntityImpl)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramMessageEntityImpl.getId() > 0L) {
      localContentValues.put("_id", Long.valueOf(paramMessageEntityImpl.getId()));
    }
    localContentValues.put("date", Long.valueOf(paramMessageEntityImpl.getDate()));
    localContentValues.put("type", Integer.valueOf(paramMessageEntityImpl.getType()));
    localContentValues.put("body", paramMessageEntityImpl.getBody());
    localContentValues.put("status", Integer.valueOf(paramMessageEntityImpl.getStatus()));
    localContentValues.put("read", Integer.valueOf(paramMessageEntityImpl.getUnread()));
    localContentValues.put("opened", Integer.valueOf(paramMessageEntityImpl.getOpened()));
    localContentValues.put("location_lat", Integer.valueOf(paramMessageEntityImpl.getLat()));
    localContentValues.put("location_lng", Integer.valueOf(paramMessageEntityImpl.getLng()));
    localContentValues.put("extra_status", Integer.valueOf(paramMessageEntityImpl.getExtraStatus()));
    localContentValues.put("extra_uri", paramMessageEntityImpl.getMediaUri());
    localContentValues.put("extra_upload_id", Long.valueOf(paramMessageEntityImpl.getObjectId()));
    localContentValues.put("extra_download_id", paramMessageEntityImpl.getDownloadId());
    localContentValues.put("extra_mime", paramMessageEntityImpl.getMimeType());
    localContentValues.put("fb_status", Integer.valueOf(paramMessageEntityImpl.getFbStatus()));
    localContentValues.put("twitter_status", Integer.valueOf(paramMessageEntityImpl.getTwitterStatus()));
    localContentValues.put("extra_duration", Long.valueOf(paramMessageEntityImpl.getDuration()));
    localContentValues.put("flag", Integer.valueOf(paramMessageEntityImpl.getFlag()));
    localContentValues.put("group_id", Long.valueOf(paramMessageEntityImpl.getGroupId()));
    localContentValues.put("conversation_id", Long.valueOf(paramMessageEntityImpl.getConversationId()));
    localContentValues.put("conversation_type", Integer.valueOf(paramMessageEntityImpl.getConversationType()));
    localContentValues.put("address", paramMessageEntityImpl.getRecipientNumber());
    localContentValues.put("extra_bucket_name", paramMessageEntityImpl.getBucket());
    localContentValues.put("seq", Integer.valueOf(paramMessageEntityImpl.getMessageSeq()));
    localContentValues.put("token", Long.valueOf(paramMessageEntityImpl.getMessageToken()));
    localContentValues.put("thumbnail_x", Integer.valueOf(paramMessageEntityImpl.getThumbnailWidth()));
    localContentValues.put("thumbnail_y", Integer.valueOf(paramMessageEntityImpl.getThumbnailHeight()));
    localContentValues.put("deleted", Integer.valueOf(paramMessageEntityImpl.getDeleted()));
    localContentValues.put("description", paramMessageEntityImpl.getDescription());
    localContentValues.put("count", Integer.valueOf(paramMessageEntityImpl.getCount()));
    localContentValues.put("participant_id", Long.valueOf(paramMessageEntityImpl.getParticipantId()));
    localContentValues.put("sync_read", Integer.valueOf(paramMessageEntityImpl.getSyncRead()));
    localContentValues.put("extra_flags", Integer.valueOf(paramMessageEntityImpl.getExtraFlags()));
    localContentValues.put("date_real", Long.valueOf(paramMessageEntityImpl.getRealDate()));
    localContentValues.put("message_global_id", Integer.valueOf(paramMessageEntityImpl.getMessageGlobalId()));
    return localContentValues;
  }
  
  public ContentValues createContentValues(MessageEntityImpl paramMessageEntityImpl)
  {
    return getContentValues(paramMessageEntityImpl);
  }
  
  public MessageEntityImpl createEntity(Cursor paramCursor)
  {
    return createEntity(paramCursor, 0);
  }
  
  public MessageEntityImpl createEntity(Cursor paramCursor, int paramInt)
  {
    return createEntity(new MessageEntityImpl(), paramCursor, paramInt);
  }
  
  public String[] getProjections()
  {
    return PROJECTIONS;
  }
  
  public String getTable()
  {
    return "messages";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.MessageEntityHelper
 * JD-Core Version:    0.7.0.1
 */