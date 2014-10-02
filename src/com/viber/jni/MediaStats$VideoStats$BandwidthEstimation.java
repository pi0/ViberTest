package com.viber.jni;

public class MediaStats$VideoStats$BandwidthEstimation
{
  public final int estimatedRecvBandwidth;
  public final int estimatedSendBandwidth;
  
  public MediaStats$VideoStats$BandwidthEstimation(int paramInt1, int paramInt2)
  {
    this.estimatedSendBandwidth = paramInt1;
    this.estimatedRecvBandwidth = paramInt2;
  }
  
  public String toString()
  {
    return "estimatedSendBandwidth=" + this.estimatedSendBandwidth + " estimatedRecvBandwidth=" + this.estimatedRecvBandwidth;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.MediaStats.VideoStats.BandwidthEstimation
 * JD-Core Version:    0.7.0.1
 */