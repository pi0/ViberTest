package com.viber.jni;

public class MediaStats$VideoStats$RTCP
{
  public final int cumulativeLost;
  public final int fractionLost;
  public final int jitter;
  public final int rttMs;
  
  public MediaStats$VideoStats$RTCP(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.fractionLost = paramInt1;
    this.cumulativeLost = paramInt2;
    this.jitter = paramInt3;
    this.rttMs = paramInt4;
  }
  
  public String toString()
  {
    return "fractionLost=" + this.fractionLost + " cumulativeLost=" + this.cumulativeLost + " jitter=" + this.jitter + " rttMs=" + this.rttMs;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.MediaStats.VideoStats.RTCP
 * JD-Core Version:    0.7.0.1
 */