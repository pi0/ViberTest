package com.viber.jni;

public class ConversationToken
{
  public String peerNum = "";
  public long token = 0L;
  
  public ConversationToken(long paramLong, String paramString)
  {
    this.token = paramLong;
    this.peerNum = paramString;
  }
  
  public String toString()
  {
    return "tk:" + this.token + " pn:" + this.peerNum;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ConversationToken
 * JD-Core Version:    0.7.0.1
 */