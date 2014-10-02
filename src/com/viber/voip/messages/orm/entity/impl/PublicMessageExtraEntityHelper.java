package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import android.database.Cursor;
import com.viber.voip.messages.orm.entity.EntityHelper;

public class PublicMessageExtraEntityHelper
  implements EntityHelper<PublicGroupMessageInfoEntityImpl>
{
  protected static int INDX_GROUP_ID;
  protected static int INDX_ID;
  protected static int INDX_LIKED = 1 + INDX_MESSAGE_TOKEN;
  protected static int INDX_LIKES_COUNT = 1 + INDX_LIKED;
  protected static int INDX_MESSAGE_TOKEN;
  protected static int INDX_SYNC_LIKE = 1 + INDX_LIKES_COUNT;
  public static String[] PROJECTIONS = { "_id", "group_id", "message_token", "liked", "likes_count", "sync_like" };
  
  static
  {
    INDX_ID = 0;
    INDX_GROUP_ID = 1 + INDX_ID;
    INDX_MESSAGE_TOKEN = 1 + INDX_GROUP_ID;
  }
  
  public static PublicGroupMessageInfoEntityImpl createEntity(PublicGroupMessageInfoEntityImpl paramPublicGroupMessageInfoEntityImpl, Cursor paramCursor, int paramInt)
  {
    paramPublicGroupMessageInfoEntityImpl.setId(paramCursor.getLong(paramInt + INDX_ID));
    paramPublicGroupMessageInfoEntityImpl.setConversationId(paramCursor.getLong(paramInt + INDX_GROUP_ID));
    paramPublicGroupMessageInfoEntityImpl.setMessageToken(paramCursor.getLong(paramInt + INDX_MESSAGE_TOKEN));
    paramPublicGroupMessageInfoEntityImpl.setLiked(paramCursor.getInt(paramInt + INDX_LIKED));
    paramPublicGroupMessageInfoEntityImpl.setLikesCount(paramCursor.getInt(paramInt + INDX_LIKES_COUNT));
    paramPublicGroupMessageInfoEntityImpl.setSyncLike(paramCursor.getInt(paramInt + INDX_SYNC_LIKE));
    return paramPublicGroupMessageInfoEntityImpl;
  }
  
  public static ContentValues getContentValues(PublicGroupMessageInfoEntityImpl paramPublicGroupMessageInfoEntityImpl)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramPublicGroupMessageInfoEntityImpl.getId() > 0L) {
      localContentValues.put("_id", Long.valueOf(paramPublicGroupMessageInfoEntityImpl.getId()));
    }
    localContentValues.put("group_id", Long.valueOf(paramPublicGroupMessageInfoEntityImpl.getConversationId()));
    localContentValues.put("message_token", Long.valueOf(paramPublicGroupMessageInfoEntityImpl.getMessageToken()));
    localContentValues.put("liked", Integer.valueOf(paramPublicGroupMessageInfoEntityImpl.getLiked()));
    localContentValues.put("likes_count", Integer.valueOf(paramPublicGroupMessageInfoEntityImpl.getLikesCount()));
    localContentValues.put("sync_like", Integer.valueOf(paramPublicGroupMessageInfoEntityImpl.getSyncLike()));
    return localContentValues;
  }
  
  public ContentValues createContentValues(PublicGroupMessageInfoEntityImpl paramPublicGroupMessageInfoEntityImpl)
  {
    return getContentValues(paramPublicGroupMessageInfoEntityImpl);
  }
  
  public PublicGroupMessageInfoEntityImpl createEntity(Cursor paramCursor)
  {
    return createEntity(paramCursor, 0);
  }
  
  public PublicGroupMessageInfoEntityImpl createEntity(Cursor paramCursor, int paramInt)
  {
    return createEntity(new PublicGroupMessageInfoEntityImpl(), paramCursor, paramInt);
  }
  
  public String[] getProjections()
  {
    return PROJECTIONS;
  }
  
  public String getTable()
  {
    return "public_messages_extras";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.PublicMessageExtraEntityHelper
 * JD-Core Version:    0.7.0.1
 */