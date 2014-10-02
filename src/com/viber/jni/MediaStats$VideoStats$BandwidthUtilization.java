package com.viber.jni;

public class MediaStats$VideoStats$BandwidthUtilization
{
  public final int fecBitrateSent;
  public final int nackBitrateSent;
  public final int totalBitrateSent;
  public final int videoBitrateSent;
  
  public MediaStats$VideoStats$BandwidthUtilization(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.totalBitrateSent = paramInt1;
    this.videoBitrateSent = paramInt2;
    this.fecBitrateSent = paramInt3;
    this.nackBitrateSent = paramInt4;
  }
  
  public String toString()
  {
    return "totalBitrateSent=" + this.totalBitrateSent + " videoBitrateSent=" + this.videoBitrateSent + " fecBitrateSent=" + this.fecBitrateSent + " nackBitrateSent=" + this.nackBitrateSent;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.MediaStats.VideoStats.BandwidthUtilization
 * JD-Core Version:    0.7.0.1
 */