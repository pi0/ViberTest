package com.viber.jni;

public class MediaStats$VideoStats
{
  public final MediaStats.VideoStats.BandwidthEstimation bwEstimation;
  public final MediaStats.VideoStats.BandwidthUtilization bwUtilization;
  public final int discardedPacketsCount;
  public final MediaStats.VideoStats.RTCP local;
  public final int recvSideDelay;
  public final MediaStats.VideoStats.RTCP remote;
  public final MediaStats.VideoStats.RTP rtpStats;
  public final int targetBitrate;
  
  public MediaStats$VideoStats(int paramInt1, int paramInt2, int paramInt3, MediaStats.VideoStats.RTP paramRTP, MediaStats.VideoStats.BandwidthEstimation paramBandwidthEstimation, MediaStats.VideoStats.BandwidthUtilization paramBandwidthUtilization, MediaStats.VideoStats.RTCP paramRTCP1, MediaStats.VideoStats.RTCP paramRTCP2)
  {
    this.recvSideDelay = paramInt1;
    this.discardedPacketsCount = paramInt2;
    this.targetBitrate = paramInt3;
    this.rtpStats = paramRTP;
    this.bwEstimation = paramBandwidthEstimation;
    this.bwUtilization = paramBandwidthUtilization;
    this.local = paramRTCP1;
    this.remote = paramRTCP2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder().append("recvSideDelay=").append(this.recvSideDelay).append(" discardedPacketsCount=").append(this.discardedPacketsCount).append(" targetBitrate=").append(this.targetBitrate);
    String str1;
    String str2;
    label127:
    StringBuilder localStringBuilder3;
    if (this.rtpStats != null)
    {
      str1 = " RTP: [" + this.rtpStats.toString() + "]";
      StringBuilder localStringBuilder2 = localStringBuilder1.append(str1);
      if (this.bwEstimation == null) {
        break label191;
      }
      str2 = " BandwidthEstimation: [" + this.bwEstimation.toString() + "]";
      localStringBuilder3 = localStringBuilder2.append(str2);
      if (this.bwUtilization == null) {
        break label198;
      }
    }
    label191:
    label198:
    for (String str3 = " BandwidthUtilization: [" + this.bwUtilization.toString() + "]";; str3 = "")
    {
      return str3;
      str1 = "";
      break;
      str2 = "";
      break label127;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.MediaStats.VideoStats
 * JD-Core Version:    0.7.0.1
 */