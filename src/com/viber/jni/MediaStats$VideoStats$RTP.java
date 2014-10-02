package com.viber.jni;

public class MediaStats$VideoStats$RTP
{
  public final int bytesReceived;
  public final int bytesSent;
  public final int packetsReceived;
  public final int packetsSent;
  
  public MediaStats$VideoStats$RTP(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.bytesSent = paramInt1;
    this.packetsSent = paramInt2;
    this.bytesReceived = paramInt3;
    this.packetsReceived = paramInt4;
  }
  
  public String toString()
  {
    return "bytesSent=" + this.bytesSent + " packetsSent=" + this.packetsSent + " bytesReceived=" + this.bytesReceived + " packetsReceived=" + this.packetsReceived;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.MediaStats.VideoStats.RTP
 * JD-Core Version:    0.7.0.1
 */