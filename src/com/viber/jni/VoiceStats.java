package com.viber.jni;

public class VoiceStats
{
  public static final String TAG = VoiceStats.class.getSimpleName();
  private volatile int bytes_in = 0;
  private volatile int bytes_out = 0;
  private volatile int jitter = 0;
  private volatile int loss = 0;
  private volatile int packets_lost = 0;
  private volatile int packets_received = 0;
  private volatile int packets_recovered = 0;
  private volatile int packets_sent = 0;
  private volatile int peer_jitter = 0;
  private volatile int percent_loss = 0;
  private volatile int quality = 0;
  private volatile int rtt = 0;
  private volatile int vrtt = 0;
  
  public int getBytesIn()
  {
    return this.bytes_in;
  }
  
  public int getBytesOut()
  {
    return this.bytes_out;
  }
  
  public int getJitter()
  {
    return this.jitter;
  }
  
  public int getLoss()
  {
    return this.loss;
  }
  
  public int getPacketsLost()
  {
    return this.packets_lost;
  }
  
  public int getPacketsReceived()
  {
    return this.packets_received;
  }
  
  public int getPacketsRecovered()
  {
    return this.packets_recovered;
  }
  
  public int getPacketsSent()
  {
    return this.packets_sent;
  }
  
  public int getPeerJitter()
  {
    return this.peer_jitter;
  }
  
  public int getPercentLoss()
  {
    return this.percent_loss;
  }
  
  public int getQuality()
  {
    return this.quality;
  }
  
  public int getRtt()
  {
    return this.rtt;
  }
  
  public int getVrtt()
  {
    return this.vrtt;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("bytes in: " + this.bytes_in + "; ").append("bytes out: ").append(this.bytes_out).append("; ").append("vrtt: " + this.vrtt + "; ").append("loss: " + this.loss + "; ").append("quality: " + this.quality + "; ").append("rtt: " + this.rtt + "; ").append("jitter: " + this.jitter + "; ").append("peer jitter: " + this.peer_jitter + "; ").append("packets lost: " + this.packets_lost + "; ").append("percent loss: " + this.percent_loss + "; ").append("packets received: " + this.packets_received + "; ").append("packets sent: " + this.packets_sent + "; ").append("packets recovered: " + this.packets_recovered + "; ");
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.VoiceStats
 * JD-Core Version:    0.7.0.1
 */