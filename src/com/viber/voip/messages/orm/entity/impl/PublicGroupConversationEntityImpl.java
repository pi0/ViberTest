package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.util.gj;

public class PublicGroupConversationEntityImpl
  extends BaseEntity
{
  private String addressString;
  private String backgroundId;
  private String country;
  private long groupId;
  private int groupRole;
  private String groupUri;
  private String iconId;
  private String inviter;
  private int lastLocalMessageId;
  private int lastMediaType;
  private String lastMessageText;
  private int lastServerMessageId;
  private int locationLat;
  private int locationLng;
  private int revision;
  private String senderPhone;
  private String tagLine;
  private String tags;
  private boolean verified;
  private int watchersCount;
  
  public static String[] toTagsArray(String paramString)
  {
    if (gj.c(paramString)) {
      return new String[0];
    }
    return paramString.split(" ");
  }
  
  public static String toTagsString(String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++) {
      localStringBuilder.append(paramArrayOfString[j]).append(" ");
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.setLength(-1 + localStringBuilder.length());
    }
    return localStringBuilder.toString();
  }
  
  public String getAddressString()
  {
    return this.addressString;
  }
  
  public String getBackgroundId()
  {
    return this.backgroundId;
  }
  
  public ContentValues getContentValues()
  {
    return PublicGroupConversationEntityHelper.getContentValues(this);
  }
  
  public String getCountry()
  {
    return this.country;
  }
  
  public long getGroupId()
  {
    return this.groupId;
  }
  
  public int getGroupRole()
  {
    return this.groupRole;
  }
  
  public String getGroupUri()
  {
    return this.groupUri;
  }
  
  public String getIconId()
  {
    return this.iconId;
  }
  
  public String getInviter()
  {
    return this.inviter;
  }
  
  public int getLastLocalMessageId()
  {
    return this.lastLocalMessageId;
  }
  
  public int getLastMediaType()
  {
    return this.lastMediaType;
  }
  
  public String getLastMessageText()
  {
    return this.lastMessageText;
  }
  
  public int getLastServerMessageId()
  {
    return this.lastServerMessageId;
  }
  
  public int getLocationLat()
  {
    return this.locationLat;
  }
  
  public int getLocationLng()
  {
    return this.locationLng;
  }
  
  public int getRevision()
  {
    return this.revision;
  }
  
  public String getSenderPhone()
  {
    return this.senderPhone;
  }
  
  public String getTable()
  {
    return "group_conversations_extras";
  }
  
  public String getTagLine()
  {
    return this.tagLine;
  }
  
  public String getTags()
  {
    return this.tags;
  }
  
  public String[] getTagsArray()
  {
    return toTagsArray(this.tags);
  }
  
  public int getWatchersCount()
  {
    return this.watchersCount;
  }
  
  public boolean isVerified()
  {
    return this.verified;
  }
  
  public void setAddressString(String paramString)
  {
    this.addressString = paramString;
  }
  
  public void setBackgroundId(String paramString)
  {
    this.backgroundId = paramString;
  }
  
  public void setCountry(String paramString)
  {
    this.country = paramString;
  }
  
  public void setGroupId(long paramLong)
  {
    this.groupId = paramLong;
  }
  
  public void setGroupRole(int paramInt)
  {
    this.groupRole = paramInt;
  }
  
  public void setGroupUri(String paramString)
  {
    this.groupUri = paramString;
  }
  
  public void setIconId(String paramString)
  {
    this.iconId = paramString;
  }
  
  public void setInviter(String paramString)
  {
    this.inviter = paramString;
  }
  
  public void setLastLocalMessageId(int paramInt)
  {
    this.lastLocalMessageId = paramInt;
  }
  
  public void setLastMediaType(int paramInt)
  {
    this.lastMediaType = paramInt;
  }
  
  public void setLastMessageText(String paramString)
  {
    this.lastMessageText = paramString;
  }
  
  public void setLastServerMessageId(int paramInt)
  {
    this.lastServerMessageId = paramInt;
  }
  
  public void setLocationLat(int paramInt)
  {
    this.locationLat = paramInt;
  }
  
  public void setLocationLng(int paramInt)
  {
    this.locationLng = paramInt;
  }
  
  public void setRevision(int paramInt)
  {
    this.revision = paramInt;
  }
  
  public void setSenderPhone(String paramString)
  {
    this.senderPhone = paramString;
  }
  
  public void setTagLine(String paramString)
  {
    this.tagLine = paramString;
  }
  
  public void setTags(String paramString)
  {
    this.tags = paramString;
  }
  
  public void setTagsArray(String[] paramArrayOfString)
  {
    if (paramArrayOfString != null) {
      setTags(toTagsString(paramArrayOfString));
    }
  }
  
  public void setVerified(boolean paramBoolean)
  {
    this.verified = paramBoolean;
  }
  
  public void setWatchersCount(int paramInt)
  {
    this.watchersCount = paramInt;
  }
  
  public String toString()
  {
    return "PublicGroupConversationEntityImpl{, groupId=" + this.groupId + ", groupRole=" + this.groupRole + ", groupUri='" + this.groupUri + '\'' + ", revision=" + this.revision + ", iconId='" + this.iconId + '\'' + ", backgroundId='" + this.backgroundId + '\'' + ", country='" + this.country + '\'' + ", addressString='" + this.addressString + '\'' + ", locationLat=" + this.locationLat + ", locationLng=" + this.locationLng + ", watchersCount=" + this.watchersCount + ", serverMessageId=" + this.lastServerMessageId + ", tags='" + this.tags + '\'' + ", tagLine='" + this.tagLine + '\'' + ", localMessageId=" + this.lastLocalMessageId + ", verified=" + this.verified + ", inviter='" + this.inviter + '\'' + ", lastMediaType='" + this.lastMediaType + '\'' + ", lastMessageText='" + this.lastMessageText + '\'' + ", senderPhone='" + this.senderPhone + '\'' + '}';
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl
 * JD-Core Version:    0.7.0.1
 */