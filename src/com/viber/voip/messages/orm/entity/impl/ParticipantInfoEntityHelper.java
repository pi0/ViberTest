package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.viber.voip.messages.orm.entity.EntityHelper;

public class ParticipantInfoEntityHelper
  implements EntityHelper<ParticipantInfoEntityImpl>
{
  private static int INDX_CONTACT_ID;
  private static int INDX_CONTACT_NAME;
  private static int INDX_DISPLAY_NAME;
  private static int INDX_HAS_PHOTO = 13;
  private static int INDX_ID;
  private static int INDX_LOCATION_DATE;
  private static int INDX_LOCATION_LAT;
  private static int INDX_LOCATION_LNG;
  private static int INDX_NATIVE_CONTACT_ID;
  private static int INDX_NATIVE_PHOTO_ID;
  private static int INDX_NUMBER;
  private static int INDX_PARTICIPANT_TYPE;
  private static int INDX_VIBER_IMAGE;
  private static int INDX_VIBER_NAME;
  public static String[] PROJECTIONS = { "_id", "number", "contact_id", "native_contact_id", "contact_name", "viber_name", "viber_image", "location_lat", "location_lng", "participant_type", "display_name", "location_date", "native_photo_id", "has_photo" };
  
  static
  {
    INDX_ID = 0;
    INDX_NUMBER = 1;
    INDX_CONTACT_ID = 2;
    INDX_NATIVE_CONTACT_ID = 3;
    INDX_CONTACT_NAME = 4;
    INDX_VIBER_NAME = 5;
    INDX_VIBER_IMAGE = 6;
    INDX_LOCATION_LAT = 7;
    INDX_LOCATION_LNG = 8;
    INDX_PARTICIPANT_TYPE = 9;
    INDX_DISPLAY_NAME = 10;
    INDX_LOCATION_DATE = 11;
    INDX_NATIVE_PHOTO_ID = 12;
  }
  
  public static ParticipantInfoEntityImpl createEntity(ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, Cursor paramCursor, int paramInt)
  {
    int i = 1;
    paramParticipantInfoEntityImpl.setId(paramCursor.getLong(paramInt + INDX_ID));
    paramParticipantInfoEntityImpl.setNumber(paramCursor.getString(paramInt + INDX_NUMBER));
    paramParticipantInfoEntityImpl.setContactId(paramCursor.getLong(paramInt + INDX_CONTACT_ID));
    paramParticipantInfoEntityImpl.setNativeContactId(paramCursor.getLong(paramInt + INDX_NATIVE_CONTACT_ID));
    paramParticipantInfoEntityImpl.setContactName(paramCursor.getString(paramInt + INDX_CONTACT_NAME));
    paramParticipantInfoEntityImpl.setViberName(paramCursor.getString(paramInt + INDX_VIBER_NAME));
    paramParticipantInfoEntityImpl.setViberImage(paramCursor.getString(paramInt + INDX_VIBER_IMAGE));
    paramParticipantInfoEntityImpl.setLat(paramCursor.getInt(paramInt + INDX_LOCATION_LAT));
    paramParticipantInfoEntityImpl.setLng(paramCursor.getInt(paramInt + INDX_LOCATION_LNG));
    paramParticipantInfoEntityImpl.setParticipantType(paramCursor.getInt(paramInt + INDX_PARTICIPANT_TYPE));
    paramParticipantInfoEntityImpl.setDispalyName(paramCursor.getString(paramInt + INDX_DISPLAY_NAME));
    paramParticipantInfoEntityImpl.setLocationDate(paramCursor.getLong(paramInt + INDX_LOCATION_DATE));
    paramParticipantInfoEntityImpl.setNativePhotoId(paramCursor.getLong(paramInt + INDX_NATIVE_PHOTO_ID));
    if (paramCursor.getInt(paramInt + INDX_HAS_PHOTO) == i) {}
    for (;;)
    {
      paramParticipantInfoEntityImpl.setHasPhoto(i);
      return paramParticipantInfoEntityImpl;
      int j = 0;
    }
  }
  
  public static ContentValues getContentValues(ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramParticipantInfoEntityImpl.getId() > 0L) {
      localContentValues.put("_id", Long.valueOf(paramParticipantInfoEntityImpl.getId()));
    }
    localContentValues.put("number", paramParticipantInfoEntityImpl.getNumber());
    localContentValues.put("contact_id", Long.valueOf(paramParticipantInfoEntityImpl.getContactId()));
    localContentValues.put("native_contact_id", Long.valueOf(paramParticipantInfoEntityImpl.getNativeContactId()));
    localContentValues.put("contact_name", paramParticipantInfoEntityImpl.getContactName());
    localContentValues.put("viber_name", paramParticipantInfoEntityImpl.getViberName());
    localContentValues.put("viber_image", paramParticipantInfoEntityImpl.getViberImage());
    localContentValues.put("location_lat", Integer.valueOf(paramParticipantInfoEntityImpl.getLat()));
    localContentValues.put("location_lng", Integer.valueOf(paramParticipantInfoEntityImpl.getLng()));
    localContentValues.put("participant_type", Integer.valueOf(paramParticipantInfoEntityImpl.getParticipantType()));
    String str;
    if (TextUtils.isEmpty(paramParticipantInfoEntityImpl.getContactName()))
    {
      str = paramParticipantInfoEntityImpl.getViberName();
      localContentValues.put("display_name", str);
      localContentValues.put("location_date", Long.valueOf(paramParticipantInfoEntityImpl.getLocationDate()));
      localContentValues.put("native_photo_id", Long.valueOf(paramParticipantInfoEntityImpl.getNativePhotoId()));
      if ((TextUtils.isEmpty(paramParticipantInfoEntityImpl.getViberImage())) && (paramParticipantInfoEntityImpl.getNativePhotoId() <= 0L)) {
        break label224;
      }
    }
    label224:
    for (int i = 1;; i = 0)
    {
      localContentValues.put("has_photo", Integer.valueOf(i));
      return localContentValues;
      str = paramParticipantInfoEntityImpl.getContactName();
      break;
    }
  }
  
  public ContentValues createContentValues(ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    return getContentValues(paramParticipantInfoEntityImpl);
  }
  
  public ParticipantInfoEntityImpl createEntity(Cursor paramCursor)
  {
    return createEntity(paramCursor, 0);
  }
  
  public ParticipantInfoEntityImpl createEntity(Cursor paramCursor, int paramInt)
  {
    return createEntity(new ParticipantInfoEntityImpl(), paramCursor, paramInt);
  }
  
  public String[] getProjections()
  {
    return PROJECTIONS;
  }
  
  public String getTable()
  {
    return "participants_info";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityHelper
 * JD-Core Version:    0.7.0.1
 */