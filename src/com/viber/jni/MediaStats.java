package com.viber.jni;

import android.util.Log;

public class MediaStats
{
  private static final String TAG = MediaStats.class.getSimpleName();
  public boolean isP2P;
  public boolean isTCP;
  public int recv_bitrate;
  public String rx_codec;
  public int send_bitrate;
  public String tx_codec;
  public final MediaStats.VideoStats videoStats;
  public final MediaStats.VoiceStats voiceStats;
  
  public MediaStats(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2)
  {
    this(paramString1, paramString2, paramBoolean1, paramBoolean2, paramInt1, paramInt2, null, null);
  }
  
  public MediaStats(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, MediaStats.VoiceStats paramVoiceStats, MediaStats.VideoStats paramVideoStats)
  {
    Log.d(TAG, "MediaStats ctor");
    this.tx_codec = paramString1;
    this.rx_codec = paramString2;
    this.isP2P = paramBoolean1;
    this.isTCP = paramBoolean2;
    this.send_bitrate = paramInt1;
    this.recv_bitrate = paramInt2;
    this.voiceStats = paramVoiceStats;
    this.videoStats = paramVideoStats;
  }
  
  protected static MediaStats create(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2)
  {
    return new MediaStats(paramString1, paramString2, paramBoolean1, paramBoolean2, paramInt1, paramInt2);
  }
  
  protected static MediaStats create(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, MediaStats.VoiceStats paramVoiceStats, MediaStats.VideoStats paramVideoStats)
  {
    return new MediaStats(paramString1, paramString2, paramBoolean1, paramBoolean2, paramInt1, paramInt2, paramVoiceStats, paramVideoStats);
  }
  
  protected static MediaStats.VideoStats createVideoStats(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, int paramInt11, int paramInt12, int paramInt13, int paramInt14, int paramInt15, int paramInt16, int paramInt17, int paramInt18, int paramInt19, int paramInt20, int paramInt21)
  {
    return new MediaStats.VideoStats(paramInt1, paramInt2, paramInt3, new MediaStats.VideoStats.RTP(paramInt4, paramInt5, paramInt6, paramInt7), new MediaStats.VideoStats.BandwidthEstimation(paramInt8, paramInt9), new MediaStats.VideoStats.BandwidthUtilization(paramInt10, paramInt11, paramInt12, paramInt13), new MediaStats.VideoStats.RTCP(paramInt14, paramInt15, paramInt16, paramInt17), new MediaStats.VideoStats.RTCP(paramInt18, paramInt19, paramInt20, paramInt21));
  }
  
  protected static MediaStats.VoiceStats createVoiceStats(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, int paramInt11, int paramInt12, int paramInt13)
  {
    return new MediaStats.VoiceStats(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramInt9, paramInt10, paramInt11, paramInt12, paramInt13);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder().append("t:").append(this.tx_codec).append(" r:").append(this.rx_codec);
    String str1;
    StringBuilder localStringBuilder2;
    if (this.isP2P)
    {
      str1 = " P2P ";
      localStringBuilder2 = localStringBuilder1.append(str1);
      if (!this.isTCP) {
        break label191;
      }
    }
    label191:
    for (String str2 = " TCP ";; str2 = " nTCP ")
    {
      String str3 = str2 + " s:" + this.send_bitrate + " r:" + this.recv_bitrate;
      if (this.voiceStats != null) {
        str3 = str3 + " voice: {" + this.voiceStats.toString() + "}";
      }
      if (this.videoStats != null) {
        str3 = str3 + " video: {" + this.videoStats.toString() + "}";
      }
      return str3;
      str1 = " nP2P";
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.MediaStats
 * JD-Core Version:    0.7.0.1
 */