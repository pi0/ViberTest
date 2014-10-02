package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import android.database.Cursor;

public class MessageCallEntityHelper
{
  private static int INDX_CANONIZED_NUMBER;
  private static int INDX_CONVERSATION_ID;
  private static int INDX_DATE;
  private static int INDX_DURATION;
  private static int INDX_END_REASON_ID = 1 + INDX_TOKEN;
  private static int INDX_ID;
  private static int INDX_MESSAGE_ID;
  private static int INDX_START_REASON_ID = 1 + INDX_END_REASON_ID;
  private static int INDX_TOKEN;
  private static int INDX_TYPE;
  private static int INDX_VIBER_CALL_TYPE = 1 + INDX_START_REASON_ID;
  public static String[] PROJECTIONS = { "_id", "conversation_id", "message_id", "canonized_number", "date", "duration", "type", "token", "end_reason", "start_reason", "viber_call_type" };
  
  static
  {
    INDX_ID = 0;
    INDX_CONVERSATION_ID = 1 + INDX_ID;
    INDX_MESSAGE_ID = 1 + INDX_CONVERSATION_ID;
    INDX_CANONIZED_NUMBER = 1 + INDX_MESSAGE_ID;
    INDX_DATE = 1 + INDX_CANONIZED_NUMBER;
    INDX_DURATION = 1 + INDX_DATE;
    INDX_TYPE = 1 + INDX_DURATION;
    INDX_TOKEN = 1 + INDX_TYPE;
  }
  
  public static MessageCallEntityImpl createEntity(MessageCallEntityImpl paramMessageCallEntityImpl, Cursor paramCursor, int paramInt)
  {
    paramMessageCallEntityImpl.setId(paramCursor.getLong(paramInt + INDX_ID));
    paramMessageCallEntityImpl.setConversationId(paramCursor.getLong(paramInt + INDX_CONVERSATION_ID));
    paramMessageCallEntityImpl.setMessageId(paramCursor.getLong(paramInt + INDX_MESSAGE_ID));
    paramMessageCallEntityImpl.setCanonizedNumber(paramCursor.getString(paramInt + INDX_CANONIZED_NUMBER));
    paramMessageCallEntityImpl.setDate(paramCursor.getLong(paramInt + INDX_DATE));
    paramMessageCallEntityImpl.setDuration(paramCursor.getLong(paramInt + INDX_DURATION));
    paramMessageCallEntityImpl.setType(paramCursor.getInt(paramInt + INDX_TYPE));
    paramMessageCallEntityImpl.setToken(paramCursor.getLong(paramInt + INDX_TOKEN));
    paramMessageCallEntityImpl.setEndReason(paramCursor.getInt(paramInt + INDX_END_REASON_ID));
    paramMessageCallEntityImpl.setStartReason(paramCursor.getInt(paramInt + INDX_START_REASON_ID));
    paramMessageCallEntityImpl.setViberCallType(paramCursor.getInt(paramInt + INDX_VIBER_CALL_TYPE));
    return paramMessageCallEntityImpl;
  }
  
  public static ContentValues getContentValues(MessageCallEntityImpl paramMessageCallEntityImpl)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramMessageCallEntityImpl.getId() != -1L) {
      localContentValues.put("_id", Long.valueOf(paramMessageCallEntityImpl.getId()));
    }
    localContentValues.put("conversation_id", Long.valueOf(paramMessageCallEntityImpl.getConversationId()));
    localContentValues.put("message_id", Long.valueOf(paramMessageCallEntityImpl.getMessageId()));
    localContentValues.put("canonized_number", paramMessageCallEntityImpl.getCanonizedNumber());
    localContentValues.put("date", Long.valueOf(paramMessageCallEntityImpl.getDate()));
    localContentValues.put("duration", Long.valueOf(paramMessageCallEntityImpl.getDuration()));
    localContentValues.put("type", Integer.valueOf(paramMessageCallEntityImpl.getType()));
    localContentValues.put("token", Long.valueOf(paramMessageCallEntityImpl.getToken()));
    localContentValues.put("end_reason", Integer.valueOf(paramMessageCallEntityImpl.getEndReason()));
    localContentValues.put("start_reason", Integer.valueOf(paramMessageCallEntityImpl.getStartReason()));
    localContentValues.put("viber_call_type", Integer.valueOf(paramMessageCallEntityImpl.getViberCallType()));
    return localContentValues;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.MessageCallEntityHelper
 * JD-Core Version:    0.7.0.1
 */