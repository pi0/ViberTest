package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentUris;
import android.content.ContentValues;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.user.UserData;

public class ParticipantInfoEntityImpl
  extends BaseEntity
{
  private long contactId;
  private String contactName;
  private String dispalyName;
  private boolean hasPhoto;
  private int lat;
  private int lng;
  private long locationDate;
  private long nativeContactId;
  private long nativePhotoId;
  private String number;
  private int participantType;
  private String viberImage;
  private String viberName;
  
  public Uri getCommonContactImage()
  {
    return getCommonContactImage(true);
  }
  
  public Uri getCommonContactImage(boolean paramBoolean)
  {
    Uri localUri1;
    if (isOwner())
    {
      Uri localUri2 = UserData.getImage();
      localUri1 = null;
      if (localUri2 != null) {
        localUri1 = Uri.parse("file://" + h.a(ViberApplication.getInstance().getApplicationContext(), UserData.getImage()));
      }
    }
    boolean bool;
    do
    {
      return localUri1;
      if (((paramBoolean) || (this.contactId > 0L)) && (!TextUtils.isEmpty(getViberImage()))) {
        return Uri.parse(getViberImage());
      }
      bool = this.nativeContactId < 0L;
      localUri1 = null;
    } while (!bool);
    return ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.nativeContactId);
  }
  
  public String getCommonContactName()
  {
    return getCommonContactName(true);
  }
  
  public String getCommonContactName(boolean paramBoolean)
  {
    return getCommonContactName(paramBoolean, 1);
  }
  
  public String getCommonContactName(boolean paramBoolean, int paramInt)
  {
    String str1 = getContactName();
    String str2 = getViberName();
    String str3 = getNumber();
    if (isOwner()) {
      str1 = UserData.getName();
    }
    while (!TextUtils.isEmpty(str1)) {
      return str1;
    }
    if ((!TextUtils.isEmpty(str2)) && (paramBoolean)) {
      return str2;
    }
    if (paramInt == 1) {
      return str3;
    }
    return null;
  }
  
  public long getContactId()
  {
    return this.contactId;
  }
  
  public String getContactName()
  {
    return this.contactName;
  }
  
  public ContentValues getContentValues()
  {
    return ParticipantInfoEntityHelper.getContentValues(this);
  }
  
  public String getDispalyName()
  {
    return this.dispalyName;
  }
  
  public int getLat()
  {
    return this.lat;
  }
  
  public int getLng()
  {
    return this.lng;
  }
  
  public long getLocationDate()
  {
    return this.locationDate;
  }
  
  public long getNativeContactId()
  {
    return this.nativeContactId;
  }
  
  public long getNativePhotoId()
  {
    return this.nativePhotoId;
  }
  
  public String getNumber()
  {
    if (isOwner()) {
      return "";
    }
    return this.number;
  }
  
  public int getParticipantType()
  {
    return this.participantType;
  }
  
  public String getTable()
  {
    return "participants_info";
  }
  
  public String getViberImage()
  {
    if (this.viberImage == null) {
      return "";
    }
    return this.viberImage;
  }
  
  public String getViberName()
  {
    if (isOwner()) {
      return UserData.getName();
    }
    if (this.viberName == null) {
      return "";
    }
    return this.viberName;
  }
  
  public boolean isHasPhoto()
  {
    if (isOwner()) {
      return UserData.getImage() != null;
    }
    return this.hasPhoto;
  }
  
  public boolean isOwner()
  {
    return getParticipantType() == 0;
  }
  
  public void setContactId(long paramLong)
  {
    this.contactId = paramLong;
  }
  
  public void setContactName(String paramString)
  {
    this.contactName = paramString;
  }
  
  public void setDispalyName(String paramString)
  {
    this.dispalyName = paramString;
  }
  
  public void setHasPhoto(boolean paramBoolean)
  {
    this.hasPhoto = paramBoolean;
  }
  
  public void setLat(int paramInt)
  {
    this.lat = paramInt;
  }
  
  public void setLng(int paramInt)
  {
    this.lng = paramInt;
  }
  
  public void setLocationDate(long paramLong)
  {
    this.locationDate = paramLong;
  }
  
  public void setNativeContactId(long paramLong)
  {
    this.nativeContactId = paramLong;
  }
  
  public void setNativePhotoId(long paramLong)
  {
    this.nativePhotoId = paramLong;
  }
  
  public void setNumber(String paramString)
  {
    this.number = paramString;
  }
  
  public void setParticipantType(int paramInt)
  {
    this.participantType = paramInt;
  }
  
  public void setViberImage(String paramString)
  {
    this.viberImage = paramString;
  }
  
  public void setViberName(String paramString)
  {
    this.viberName = paramString;
  }
  
  public String toString()
  {
    return "ParticipantInfoEntityImpl [number=" + this.number + ", dispalyName=" + this.dispalyName + ", contactId=" + this.contactId + ", nativeContactId=" + this.nativeContactId + ", contactName=" + this.contactName + ", viberName=" + this.viberName + ", viberImage=" + this.viberImage + ", lat=" + this.lat + ", lng=" + this.lng + ", participantType=" + this.participantType + ", locationDate=" + this.locationDate + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl
 * JD-Core Version:    0.7.0.1
 */