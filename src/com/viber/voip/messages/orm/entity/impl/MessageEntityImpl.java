package com.viber.voip.messages.orm.entity.impl;

import android.content.ContentValues;
import android.location.Location;
import com.viber.jni.LocationInfo;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.util.bk;
import com.viber.voip.util.gj;

public class MessageEntityImpl
  extends BaseEntity
{
  private String body;
  private String bucket;
  private long conversationId;
  private int conversationType;
  private int count;
  private long date;
  private int deleted;
  private String description;
  private String downloadId;
  private long duration;
  private int extraFlags;
  private int extraStatus;
  private int fbStatus;
  private int flag;
  private long groupId;
  private int lat;
  private int lng;
  private String mediaUri;
  private int messageGlobalId;
  private int messageSeq;
  private long messageToken;
  private String mimeType;
  private long objectId;
  private int opened;
  private long participantId;
  private long realDate;
  private String recipientNumber;
  private int status;
  private int syncRead;
  private int thumbnailHeight;
  private int thumbnailWidth;
  private int twitterStatus;
  private int type;
  private int unread = 1;
  
  public void addExtraFlag(int paramInt)
  {
    this.extraFlags = bk.a(this.extraFlags, paramInt);
  }
  
  public String getBody()
  {
    return this.body;
  }
  
  public String getBucket()
  {
    return this.bucket;
  }
  
  public ContentValues getContentValues()
  {
    return MessageEntityHelper.getContentValues(this);
  }
  
  public long getConversationId()
  {
    return this.conversationId;
  }
  
  public int getConversationType()
  {
    return this.conversationType;
  }
  
  public int getCount()
  {
    return this.count;
  }
  
  public long getDate()
  {
    return this.date;
  }
  
  public int getDeleted()
  {
    return this.deleted;
  }
  
  public String getDescription()
  {
    if (this.description == null) {
      return "";
    }
    return this.description;
  }
  
  public String getDownloadId()
  {
    return this.downloadId;
  }
  
  public long getDuration()
  {
    return this.duration;
  }
  
  public int getExtraFlags()
  {
    return this.extraFlags;
  }
  
  public int getExtraStatus()
  {
    return this.extraStatus;
  }
  
  public int getFbStatus()
  {
    return this.fbStatus;
  }
  
  public int getFlag()
  {
    return this.flag;
  }
  
  public long getGroupId()
  {
    return this.groupId;
  }
  
  public int getLat()
  {
    return this.lat;
  }
  
  public int getLng()
  {
    return this.lng;
  }
  
  public LocationInfo getLocation()
  {
    return new LocationInfo(getLat(), getLng());
  }
  
  public int getMediaFlag()
  {
    if (bk.a(this.extraFlags, new int[] { 1 })) {
      return 1;
    }
    if (bk.a(this.extraFlags, new int[] { 2 })) {
      return 2;
    }
    return 0;
  }
  
  public String getMediaUri()
  {
    return this.mediaUri;
  }
  
  public int getMessageGlobalId()
  {
    return this.messageGlobalId;
  }
  
  public int getMessageSeq()
  {
    return this.messageSeq;
  }
  
  public long getMessageToken()
  {
    return this.messageToken;
  }
  
  public String getMimeType()
  {
    return this.mimeType;
  }
  
  public long getObjectId()
  {
    return this.objectId;
  }
  
  public int getOpened()
  {
    return this.opened;
  }
  
  public long getParticipantId()
  {
    return this.participantId;
  }
  
  public String getPublicCacheMimeType()
  {
    if (isPublicWatcher())
    {
      if ("image".equals(this.mimeType)) {
        return "image_public_cache";
      }
      if ("video".equals(this.mimeType)) {
        return "video_public_cache";
      }
    }
    return this.mimeType;
  }
  
  public long getRealDate()
  {
    return this.realDate;
  }
  
  public String getRecipientNumber()
  {
    if (this.recipientNumber == null) {
      return "";
    }
    return this.recipientNumber;
  }
  
  public int getStatus()
  {
    return this.status;
  }
  
  public int getSyncRead()
  {
    return this.syncRead;
  }
  
  public String getTable()
  {
    return "messages";
  }
  
  public int getThumbnailHeight()
  {
    return this.thumbnailHeight;
  }
  
  /* Error */
  public android.net.Uri getThumbnailUri()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 198	com/viber/voip/messages/orm/entity/impl/MessageEntityImpl:getBody	()Ljava/lang/String;
    //   6: invokestatic 204	com/viber/voip/util/gj:c	(Ljava/lang/String;)Z
    //   9: ifne +17 -> 26
    //   12: aload_0
    //   13: invokevirtual 198	com/viber/voip/messages/orm/entity/impl/MessageEntityImpl:getBody	()Ljava/lang/String;
    //   16: invokestatic 210	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   19: astore_3
    //   20: aload_3
    //   21: astore_2
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_2
    //   25: areturn
    //   26: aconst_null
    //   27: astore_2
    //   28: goto -6 -> 22
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	MessageEntityImpl
    //   31	4	1	localObject	java.lang.Object
    //   21	7	2	localUri1	android.net.Uri
    //   19	2	3	localUri2	android.net.Uri
    // Exception table:
    //   from	to	target	type
    //   2	20	31	finally
  }
  
  public int getThumbnailWidth()
  {
    return this.thumbnailWidth;
  }
  
  public int getTwitterStatus()
  {
    return this.twitterStatus;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public int getUnread()
  {
    return this.unread;
  }
  
  public boolean isActivateSecondaryNotification()
  {
    return (0x100 & getFlag()) != 0;
  }
  
  public boolean isCall()
  {
    return "call".equals(getMimeType());
  }
  
  public boolean isDeleted()
  {
    return this.deleted == 1;
  }
  
  public boolean isForwardedFromPG()
  {
    return bk.a(this.extraFlags, new int[] { 7 });
  }
  
  public boolean isForwardedMessage()
  {
    return bk.a(this.extraFlags, new int[] { 6 });
  }
  
  public boolean isGroup()
  {
    return getConversationType() != 0;
  }
  
  public boolean isHasAnyStatus(int... paramVarArgs)
  {
    if (paramVarArgs == null) {}
    for (;;)
    {
      return false;
      int i = paramVarArgs.length;
      for (int j = 0; j < i; j++) {
        if (paramVarArgs[j] == getStatus()) {
          return true;
        }
      }
    }
  }
  
  public boolean isImage()
  {
    return "image".equals(this.mimeType);
  }
  
  public boolean isIncoming()
  {
    return getType() == 0;
  }
  
  public boolean isNeedLoactionStatus()
  {
    return this.extraStatus == 0;
  }
  
  public boolean isNeedMediaUpload()
  {
    return (!isForwardedFromPG()) && (getMediaUri() != null) && (getObjectId() == 0L) && (!isRecording());
  }
  
  public boolean isNotification()
  {
    return "notif".equals(getMimeType());
  }
  
  public boolean isOpened()
  {
    return (isOutgoing()) || ((isIncoming()) && (1 == this.opened));
  }
  
  public boolean isOutgoing()
  {
    return getType() == 1;
  }
  
  public boolean isOutgoingToGroup()
  {
    return (isOutgoing()) && (isGroup());
  }
  
  public boolean isPublicGroup()
  {
    return (this.conversationType == 4) || (this.conversationType == 2) || (this.conversationType == 3);
  }
  
  public boolean isPublicWatcher()
  {
    return bk.a(this.extraFlags, new int[] { 4 });
  }
  
  public boolean isRakutenSystemMessage()
  {
    return bk.a(this.extraFlags, new int[] { 8 });
  }
  
  public boolean isRead()
  {
    return this.unread == 0;
  }
  
  public boolean isReadNotSynced()
  {
    return this.syncRead == 1;
  }
  
  public boolean isRecording()
  {
    return getExtraStatus() == 6;
  }
  
  public boolean isResendMessage()
  {
    return bk.a(this.extraFlags, new int[] { 9 });
  }
  
  public boolean isSenderMessage()
  {
    return (0x10 & getFlag()) != 0;
  }
  
  public boolean isSilentMessage()
  {
    return (0x8 & getFlag()) != 0;
  }
  
  public boolean isSms()
  {
    return "sms".equals(getMimeType());
  }
  
  public boolean isSyncedMessage()
  {
    return bk.a(this.extraFlags, new int[] { 3 });
  }
  
  public boolean isSystemMessage()
  {
    return (0x1 & getFlag()) != 0;
  }
  
  public boolean isToSend()
  {
    return (this.messageToken == 0L) && (this.type == 1);
  }
  
  public boolean isViberMessage()
  {
    return !"sms".equals(getMimeType());
  }
  
  public void setBody(String paramString)
  {
    this.body = paramString;
  }
  
  public void setBucket(String paramString)
  {
    this.bucket = paramString;
  }
  
  public void setConversationId(long paramLong)
  {
    this.conversationId = paramLong;
  }
  
  public void setConversationType(int paramInt)
  {
    this.conversationType = paramInt;
  }
  
  public void setCount(int paramInt)
  {
    this.count = paramInt;
  }
  
  public void setDate(long paramLong)
  {
    this.date = paramLong;
    this.realDate = paramLong;
  }
  
  public void setDeleted(int paramInt)
  {
    this.deleted = paramInt;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setDownloadId(String paramString)
  {
    this.downloadId = paramString;
  }
  
  public void setDuration(long paramLong)
  {
    this.duration = paramLong;
  }
  
  public void setExtraFlags(int paramInt)
  {
    this.extraFlags = paramInt;
  }
  
  public void setExtraStatus(int paramInt)
  {
    this.extraStatus = paramInt;
  }
  
  public void setFbStatus(int paramInt)
  {
    this.fbStatus = paramInt;
  }
  
  public void setFlag(int paramInt)
  {
    this.flag = paramInt;
  }
  
  public void setGroupId(long paramLong)
  {
    this.groupId = paramLong;
  }
  
  public void setLat(int paramInt)
  {
    this.lat = paramInt;
  }
  
  public void setLng(int paramInt)
  {
    this.lng = paramInt;
  }
  
  public void setLocation(Location paramLocation)
  {
    if (paramLocation != null) {
      setLocation(new LocationInfo((int)(10000000.0D * paramLocation.getLatitude()), (int)(10000000.0D * paramLocation.getLongitude())));
    }
  }
  
  public void setLocation(LocationInfo paramLocationInfo)
  {
    if (paramLocationInfo != null)
    {
      setLat(paramLocationInfo.getNativeLatitude());
      setLng(paramLocationInfo.getNativeLongitude());
    }
  }
  
  public void setMediaUri(String paramString)
  {
    this.mediaUri = paramString;
  }
  
  public void setMessageGlobalId(int paramInt)
  {
    this.messageGlobalId = paramInt;
  }
  
  public void setMessageSeq(int paramInt)
  {
    this.messageSeq = paramInt;
  }
  
  public void setMessageToken(long paramLong)
  {
    this.messageToken = paramLong;
  }
  
  public void setMimeType(String paramString)
  {
    this.mimeType = paramString;
  }
  
  public void setObjectId(long paramLong)
  {
    this.objectId = paramLong;
  }
  
  public void setOpened(int paramInt)
  {
    this.opened = paramInt;
  }
  
  public void setParticipantId(long paramLong)
  {
    this.participantId = paramLong;
  }
  
  public void setRealDate(long paramLong)
  {
    this.realDate = paramLong;
  }
  
  public void setRecipientNumber(String paramString)
  {
    this.recipientNumber = paramString;
  }
  
  public void setStatus(int paramInt)
  {
    this.status = paramInt;
  }
  
  public void setSyncRead(int paramInt)
  {
    this.syncRead = paramInt;
  }
  
  public void setThumbnailHeight(int paramInt)
  {
    this.thumbnailHeight = paramInt;
  }
  
  public void setThumbnailWidth(int paramInt)
  {
    this.thumbnailWidth = paramInt;
  }
  
  public void setTwitterStatus(int paramInt)
  {
    this.twitterStatus = paramInt;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
  
  public void setUnread(int paramInt)
  {
    this.unread = paramInt;
  }
  
  public String toString()
  {
    return "MessageEntityImpl [groupId=" + this.groupId + ", conversationId=" + this.conversationId + ", conversationType=" + this.conversationType + ", participantId=" + this.participantId + ", recipientNumber=" + this.recipientNumber + ", date=" + this.date + ", unread=" + this.unread + ", status=" + this.status + ", type=" + this.type + ", body=" + gj.b(this.body) + ", opened=" + this.opened + ", description=" + this.description + ", messageToken=" + this.messageToken + ", flag=" + this.flag + ", messageSeq=" + this.messageSeq + ", lat=" + this.lat + ", lng=" + this.lng + ", deleted=" + this.deleted + ", count=" + this.count + ", thumbnailHeight=" + this.thumbnailHeight + ", thumbnailWidth=" + this.thumbnailWidth + ", mediaUri=" + this.mediaUri + ", mimeType=" + this.mimeType + ", extraStatus=" + this.extraStatus + ", objectId=" + this.objectId + ", downloadId=" + this.downloadId + ", bucket=" + this.bucket + ", duration=" + this.duration + ", fbStatus=" + this.fbStatus + ", twitterStatus=" + this.twitterStatus + ", syncRead=" + this.syncRead + ", id=" + this.id + ", messageGlobalId=" + this.messageGlobalId + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.MessageEntityImpl
 * JD-Core Version:    0.7.0.1
 */