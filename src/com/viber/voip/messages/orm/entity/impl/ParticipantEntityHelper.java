package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import android.database.Cursor;
import com.viber.voip.messages.orm.entity.EntityHelper;

public class ParticipantEntityHelper
  implements EntityHelper<ParticipantEntityImpl>
{
  private static int INDX_CONVERSATION_ID;
  private static int INDX_ID;
  private static int INDX_LAST_MESSAGE_ID = 3;
  private static int INDX_PATRICIPANT_INFO_ID;
  private static int INDX_STATUS = 4;
  public static String[] PROJECTIONS = { "_id", "conversation_id", "participant_info_id", "last_message_id", "active" };
  
  static
  {
    INDX_ID = 0;
    INDX_CONVERSATION_ID = 1;
    INDX_PATRICIPANT_INFO_ID = 2;
  }
  
  public static ParticipantEntityImpl createEntity(ParticipantEntityImpl paramParticipantEntityImpl, Cursor paramCursor, int paramInt)
  {
    paramParticipantEntityImpl.setId(paramCursor.getLong(paramInt + INDX_ID));
    paramParticipantEntityImpl.setConversationId(paramCursor.getLong(paramInt + INDX_CONVERSATION_ID));
    paramParticipantEntityImpl.setParticipantInfoId(paramCursor.getLong(paramInt + INDX_PATRICIPANT_INFO_ID));
    paramParticipantEntityImpl.setLastMessageId(paramCursor.getLong(paramInt + INDX_LAST_MESSAGE_ID));
    paramParticipantEntityImpl.setStatus(paramCursor.getInt(paramInt + INDX_STATUS));
    return paramParticipantEntityImpl;
  }
  
  public static ContentValues getContentValues(ParticipantEntityImpl paramParticipantEntityImpl)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramParticipantEntityImpl.getId() > 0L) {
      localContentValues.put("_id", Long.valueOf(paramParticipantEntityImpl.getId()));
    }
    localContentValues.put("conversation_id", Long.valueOf(paramParticipantEntityImpl.getConversationId()));
    localContentValues.put("participant_info_id", Long.valueOf(paramParticipantEntityImpl.getParticipantInfoId()));
    localContentValues.put("last_message_id", Long.valueOf(paramParticipantEntityImpl.getLastMessageId()));
    localContentValues.put("active", Integer.valueOf(paramParticipantEntityImpl.getStatus()));
    return localContentValues;
  }
  
  public ContentValues createContentValues(ParticipantEntityImpl paramParticipantEntityImpl)
  {
    return getContentValues(paramParticipantEntityImpl);
  }
  
  public ParticipantEntityImpl createEntity(Cursor paramCursor)
  {
    return createEntity(paramCursor, 0);
  }
  
  public ParticipantEntityImpl createEntity(Cursor paramCursor, int paramInt)
  {
    return createEntity(new ParticipantEntityImpl(), paramCursor, paramInt);
  }
  
  public String[] getProjections()
  {
    return PROJECTIONS;
  }
  
  public String getTable()
  {
    return "participants";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.ParticipantEntityHelper
 * JD-Core Version:    0.7.0.1
 */