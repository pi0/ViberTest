package com.viber.jni;

import com.viber.voip.ViberApplication;

public class PGLatestParams
{
  private long groupID;
  private int lastMediaType;
  private int lastMsgID;
  private String lastMsgText;
  private long lastTimestampOfMsgs;
  private long lastTokenOfMsgs;
  private int numWatchers;
  private int revision;
  private String senderEncryptedPhone;
  
  private PGLatestParams(long paramLong1, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString1, String paramString2, long paramLong2, long paramLong3)
  {
    ViberApplication.log(3, "PGLatestParams", "init");
    this.groupID = paramLong1;
    this.revision = paramInt1;
    this.numWatchers = paramInt2;
    this.lastMsgID = paramInt3;
    this.lastMediaType = paramInt4;
    this.lastMsgText = paramString1;
    this.senderEncryptedPhone = paramString2;
    this.lastTokenOfMsgs = paramLong2;
    this.lastTimestampOfMsgs = paramLong3;
  }
  
  public long getGroupID()
  {
    return this.groupID;
  }
  
  public int getLastMediaType()
  {
    return this.lastMediaType;
  }
  
  public int getLastMsgID()
  {
    return this.lastMsgID;
  }
  
  public String getLastMsgText()
  {
    return this.lastMsgText;
  }
  
  public long getLastTimestampOfMsgs()
  {
    return this.lastTimestampOfMsgs;
  }
  
  public long getLastTokenOfMsgs()
  {
    return this.lastTokenOfMsgs;
  }
  
  public int getNumWatchers()
  {
    return this.numWatchers;
  }
  
  public int getRevision()
  {
    return this.revision;
  }
  
  public String getSenderEncryptedPhone()
  {
    return this.senderEncryptedPhone;
  }
  
  public String toString()
  {
    return "PGLatestParams [groupID=" + this.groupID + ", revision=" + this.revision + ", numWatchers=" + this.numWatchers + ", lastMsgID=" + this.lastMsgID + ", lastMediaType=" + this.lastMediaType + ", lastMsgText=" + this.lastMsgText + ", senderEncryptedPhone=" + this.senderEncryptedPhone + ", lastTokenOfMsgs=" + this.lastTokenOfMsgs + ", lastTimestampOfMsgs=" + this.lastTimestampOfMsgs + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PGLatestParams
 * JD-Core Version:    0.7.0.1
 */