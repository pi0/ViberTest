package com.viber.jni;

public class MediaStats$VoiceStats
{
  public final int bytes_recv;
  public final int bytes_sent;
  public final int curr_delay;
  public final int jitter;
  public final int packets_lost;
  public final int packets_received;
  public final int packets_recovered;
  public final int packets_sent;
  public final int peer_jitter;
  public final int percent_loss;
  public final int recv_bitrate;
  public final int rtt;
  public final int send_bitrate;
  
  public MediaStats$VoiceStats(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, int paramInt11, int paramInt12, int paramInt13)
  {
    this.jitter = paramInt1;
    this.peer_jitter = paramInt2;
    this.packets_received = paramInt3;
    this.packets_lost = paramInt4;
    this.packets_recovered = paramInt5;
    this.packets_sent = paramInt6;
    this.bytes_sent = paramInt7;
    this.bytes_recv = paramInt8;
    this.rtt = paramInt9;
    this.percent_loss = paramInt10;
    this.curr_delay = paramInt11;
    this.send_bitrate = paramInt12;
    this.recv_bitrate = paramInt13;
  }
  
  public String toString()
  {
    return "jitter=" + this.jitter + " peer_jitter=" + this.peer_jitter + " packets_received=" + this.packets_received + " packets_lost=" + this.packets_lost + " packets_recovered=" + this.packets_recovered + " packets_sent=" + this.packets_sent + " bytes_sent=" + this.bytes_sent + " bytes_recv=" + this.bytes_recv + " rtt=" + this.rtt + " percent_loss=" + this.percent_loss + " curr_delay=" + this.curr_delay + " send_bitrate=" + this.send_bitrate + " recv_bitrate=" + this.recv_bitrate;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.MediaStats.VoiceStats
 * JD-Core Version:    0.7.0.1
 */