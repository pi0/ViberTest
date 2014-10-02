package com.viber.jni;

import android.os.Bundle;
import com.viber.voip.ViberApplication;

public class PublicGroupMessage
{
  private String bucketName;
  private String downloadId;
  private long duration;
  private LocationInfo location;
  private int mediaType;
  private int messageID;
  private int messageSeq;
  private long messageToken;
  private String msgInfo;
  private String phoneNumber;
  private String senderName;
  private String text;
  private long timeSent;
  private long uploadDuration;
  
  private PublicGroupMessage(int paramInt1, long paramLong1, int paramInt2, String paramString1, String paramString2, long paramLong2, int paramInt3, String paramString3, LocationInfo paramLocationInfo, String paramString4, String paramString5, byte[] paramArrayOfByte, long paramLong3, long paramLong4, String paramString6)
  {
    ViberApplication.log(3, "PublicGroupMessage", "init");
    this.messageSeq = paramInt1;
    this.messageToken = paramLong1;
    this.messageID = paramInt2;
    this.phoneNumber = paramString1;
    this.text = paramString2;
    this.timeSent = paramLong2;
    this.mediaType = paramInt3;
    this.senderName = paramString3;
    this.location = paramLocationInfo;
    this.bucketName = paramString4;
    this.downloadId = paramString5;
    this.duration = paramLong3;
    this.uploadDuration = paramLong4;
    this.msgInfo = paramString6;
  }
  
  PublicGroupMessage(Bundle paramBundle)
  {
    ViberApplication.log(3, "PublicGroupMessage", "init Bundle");
    this.messageSeq = paramBundle.getInt("MessageSeq");
    this.messageToken = paramBundle.getLong("MessageToken");
    this.messageID = paramBundle.getInt("MessageID");
    this.phoneNumber = paramBundle.getString("PhoneNumber");
    this.text = paramBundle.getString("Text");
    this.timeSent = paramBundle.getLong("TimeSent");
    this.mediaType = paramBundle.getInt("MediaType");
    this.senderName = paramBundle.getString("SenderName");
    this.location = new LocationInfo(paramBundle.getInt("LocationLat"), paramBundle.getInt("LocationLong"));
    this.bucketName = paramBundle.getString("BucketName");
    this.downloadId = paramBundle.getString("DownloadID");
    this.duration = paramBundle.getLong("Duration");
    this.uploadDuration = paramBundle.getLong("UploadDuration");
    this.msgInfo = paramBundle.getString("MsgInfo");
  }
  
  public String getBucketName()
  {
    return this.bucketName;
  }
  
  public String getDownloadId()
  {
    return this.downloadId;
  }
  
  public long getDuration()
  {
    return this.duration;
  }
  
  public LocationInfo getLocation()
  {
    return this.location;
  }
  
  public int getMediaType()
  {
    return this.mediaType;
  }
  
  public int getMessageID()
  {
    return this.messageID;
  }
  
  public int getMessageSeq()
  {
    return this.messageSeq;
  }
  
  public long getMessageToken()
  {
    return this.messageToken;
  }
  
  public String getMsgInfo()
  {
    return this.msgInfo;
  }
  
  public String getPhoneNumber()
  {
    return this.phoneNumber;
  }
  
  public String getSenderName()
  {
    return this.senderName;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public long getTimeSent()
  {
    return this.timeSent;
  }
  
  public long getUploadDuration()
  {
    return this.uploadDuration;
  }
  
  public String toString()
  {
    return "PublicGroupMessage [messageSeq=" + this.messageSeq + ", messageToken=" + this.messageToken + ", messageID=" + this.messageID + ", phoneNumber=" + this.phoneNumber + ", text=" + this.text + ", timeSent=" + this.timeSent + ", mediaType=" + this.mediaType + ", SenderName=" + this.senderName + ", location=" + this.location + ", bucketName=" + this.bucketName + ", downloadId=" + this.downloadId + ", duration=" + this.duration + ", uploadDuration=" + this.uploadDuration + ", msgInfo=" + this.msgInfo + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PublicGroupMessage
 * JD-Core Version:    0.7.0.1
 */